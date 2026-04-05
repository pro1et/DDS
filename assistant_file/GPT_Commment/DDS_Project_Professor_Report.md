# DDS Project Review Report

Date: 2026-04-05
Project: E:\Vivado\FPGA_project\DDS
Target: AMD/Xilinx Zynq-7000 XC7Z020 on Mizar Z7
Primary function: Button-controlled direct digital synthesis (DDS) driving an external 14-bit DAC

## 1. Executive Summary

This project is a compact and educational DDS implementation that demonstrates many correct FPGA design instincts: clock generation is isolated in a dedicated wizard, reset release is synchronized, phase accumulation uses a numerically controlled oscillator structure, quarter-wave symmetry reduces lookup-table storage, and the external DAC clock is forwarded with an ODDR rather than a casual fabric net. From a teaching perspective, the design has a clean conceptual pipeline and is easy to explain module by module.

The project is not yet at the level I would call production-ready hardware. The strongest concerns are not raw timing performance, because the routed design meets timing comfortably, but engineering rigor: there are functional inconsistencies between code and comments, a few logic bugs in the hand-written RTL, methodology warnings around asynchronous reset usage into block RAM addressing, incomplete I/O timing constraints, and a repository structure dominated by generated Vivado artifacts. In short: the architecture is good, the implementation is promising, and the verification/maintenance discipline still needs another pass.

If I were grading this as an academic FPGA project, I would describe it as a strong prototype with good systems thinking, but with enough correctness and process issues that it should not yet be treated as a polished final submission.

Suggested overall academic grade: B+
Engineering readiness grade: B-

## 2. What The Design Does Well

### 2.1 Clear DDS Architecture
The signal path is textbook DDS design:

- `accumulator.v` builds the running phase.
- `phase_transform.v` converts the full-cycle phase into quarter-wave ROM addressing and sign information.
- `sine_lookup_rom.v` reconstructs offset-binary DAC values.
- `dds_clk_out.v` forwards a clean DAC clock using `ODDR`.

This is the right architectural decomposition for a teaching design because it separates mathematics, memory optimization, and output interfacing.

### 2.2 Sensible Clock and Reset Topology
The design correctly avoids running the main DDS logic from the raw external clock. Instead it:

- generates `100 MHz` from the board clock through `clk_wiz_0`,
- waits for `locked`,
- synchronizes reset release in `rst.v`,
- then shares the same cleaned internal clock/reset with the control path and debouncers.

That is good FPGA discipline and shows awareness of metastability and startup sequencing.

### 2.3 Good Resource Efficiency
The synthesized design is very small for the target device:

- `179` LUTs
- `169` registers
- `1` block RAM
- `1` ODDR
- `1` PLL/MMCM-equivalent clocking IP path in use

For an XC7Z020, utilization is negligible. This leaves substantial headroom for future features such as amplitude control, waveform selection, SPI control, or AXI integration.

### 2.4 Timing Closure Is Comfortable
The routed timing report shows all user timing constraints met, with positive slack:

- setup WNS: `6.125 ns`
- hold WNS: `0.060 ns`
- pulse-width slack: `4.500 ns`

This means the current logic depth is not stressed at `100 MHz`. The design is not fighting the FPGA.

### 2.5 Simulation Exists And Covers Core Behaviors
The project includes multiple testbenches for:

- accumulator behavior,
- reset synchronizer behavior,
- block memory,
- top-level DDS behavior,
- control logic,
- full wrapper behavior.

That is commendable for a student-scale FPGA project. Many designs at this level stop after synthesis.

## 3. Technical Weaknesses And Risks

### 3.1 The Control-Step Constant In `dds_control.v` Is Wrong In Source
In `DDS.srcs\sources_1\new\dds_control.v`, the code defines:

- `FTW_100KHZ = 32'd4_294_967`
- `FTW_10KHZ  = 32'd429_4970`

The second value is not a 10 kHz step. A 10 kHz FTW at 100 MHz should be approximately `429,497`, not `4,294,970`.

This is especially important because the simulation log currently shows a `429,497` increment, which means the checked-in source and the observed behavior are not fully aligned. That mismatch strongly suggests the repository contains stale artifacts or a source/report inconsistency. In an academic review, I would flag this as a correctness issue and also as a configuration-management issue.

### 3.2 `button_flag` Behavior Does Not Match Its Commented Intent
The comments say `button_flag` is low when any button is pressed. The implemented logic sets it low on a button event, but never restores it high during normal operation. Therefore, after the first valid button press, the flag can remain latched low indefinitely.

This is a classic example of a debug signal whose semantics drifted during development. Debug outputs should be either edge indicators or real-time state indicators, but not ambiguously both.

### 3.3 `sine_lookup_rom.v` Contains A Real Procedural Bug
The sign-alignment logic uses:

- reset assignments to `inv_sign_d1` and `inv_sign_d2`,
- an `else` without `begin/end`,
- then another assignment after the `else` body.

In Verilog, that means only the first statement is governed by the `else`; the second assignment executes every clock. This is almost certainly not the intended behavior. It creates a subtle sequencing problem around reset and sign alignment.

This is one of the most important code-quality findings in the project because it is small, easy to miss, and directly touches the waveform sign pipeline.

### 3.4 Asynchronous Reset Is Driving BRAM Address Registers
Vivado reports repeated `REQP-1839` warnings: block RAM address/control inputs are driven by registers with asynchronous reset behavior. The methodology and DRC reports explicitly warn that this can cause memory read corruption or uncontrolled behavior during reset assertion and is not fully covered by default timing analysis.

In practical terms, your DDS may still appear to work on the bench, but the reset strategy is not fully safe for the memory access path. A stronger design would remove asynchronous reset from the phase-to-ROM address path or confine reset behavior to synchronous logic after clock stabilization.

### 3.5 LUT-Driven Asynchronous Reset Warning Should Be Taken Seriously
Vivado also reports `LUTAR-1`: a LUT drives asynchronous clear pins in the reset synchronizer path. The tool warns this logic may glitch and trigger unexpected reset events.

This is not just a cosmetic warning. In FPGA practice, anything involving asynchronous reset generation should be kept extremely simple and hazard-resistant. If a tool says the reset may glitch, a hardware engineer should pause and redesign that section.

### 3.6 I/O Timing Is Incomplete
The timing summary reports:

- `4` inputs with no input delay specified
- `13` outputs with no output delay specified

For a classroom demo this may be tolerable. For a board-level interface to an external DAC, it is not ideal. Without proper `set_input_delay` and `set_output_delay`, the FPGA can meet its internal timing and still fail at the device boundary under process, voltage, temperature, or routing variation.

### 3.7 The Zynq Processing System Warning Indicates Platform Incompleteness
Vivado reports `ZPS7-1`, noting that a PS7 block is normally expected in a Zynq design for correct default configuration.

Whether this is fatal depends on the board boot mode and how the platform is being used. Still, it signals that the project is using a Zynq device more like a plain FPGA and may not yet be fully aligned with the platform¡¯s expected configuration flow.

## 4. Verification Assessment

### 4.1 Positive Signs
The simulation log for `tb_dds_system` shows coherent system behavior:

- reset release,
- PLL lock wait,
- frequency increases after key 0 presses,
- frequency decrease after key 1 press,
- phase advances by `0x40000000` steps after key 2 presses.

That tells me the intended user interaction model was thought through and at least partially exercised.

### 4.2 Verification Gaps
Despite having several testbenches, the project still has weaknesses in verification quality:

- testbenches are more demonstrative than self-checking,
- there are few automatic pass/fail assertions,
- one testbench (`tb_blk_mem.v`) uses a 12-bit address against an 11-bit DUT port, which suggests loose interface discipline,
- comments and expected values do not always match current source.

A professor would likely say: good effort, but the verification needs stronger checking to earn full confidence.

## 5. Repository And Project Hygiene

### 5.1 The Repository Is Overloaded With Generated Vivado Outputs
The tracked file list contains a very large amount of generated content:

- `DDS.cache`
- `DDS.gen`
- `DDS.runs`
- `DDS.sim`
- `project_1.gen`
- multiple `.dcp`, `.pb`, `.jou`, `.log`, `.wdb`, `.bit` files

This makes the repository heavy, noisy, and hard to review. It also increases the risk of stale artifacts disagreeing with current RTL.

### 5.2 There Is No `.gitignore`
No project-level `.gitignore` was found. For a Vivado repository, this is a major maintainability problem. A well-maintained FPGA repository usually tracks only:

- handwritten RTL,
- constraints,
- IP configuration sources (`.xci` / Tcl),
- scripts,
- selected documentation,
- optionally released bitstreams.

Generated build folders should usually be excluded.

### 5.3 Several Files Still Carry Development-Stage Comments
Examples include comments such as ¡°remember to change this back¡± and a stray personal comment in the accumulator file. These do not break synthesis, but they lower professional quality and suggest the code has not yet had a final cleanup pass.

## 6. Professor-Style Evaluation By Category

### Architecture: 9/10
The decomposition is sensible, educational, and scalable.

### Digital Design Correctness: 7/10
The overall concept is correct, but there are enough RTL-level inconsistencies that I would not award full marks.

### Timing And Implementation: 8/10
Internal timing closure is healthy, but I/O timing constraints are incomplete and reset methodology warnings reduce confidence.

### Verification: 7/10
There is real simulation effort, which is excellent, but the verification style is still mostly observational rather than assertive.

### Code Quality And Maintainability: 6/10
Readable module partitioning is a plus, but stale comments, artifact drift, and repository clutter pull the score down.

### Engineering Professionalism: 6/10
The project shows strong hands-on work, but it still looks like an active lab notebook rather than a polished engineering deliverable.

## 7. Recommended Improvement Roadmap

### Priority 1: Fix correctness issues in handwritten RTL
1. Correct the FTW step constant in `dds_control.v`.
2. Redefine `button_flag` so its behavior matches its intended meaning.
3. Fix the `else begin/end` issue in `sine_lookup_rom.v`.
4. Clean out temporary comments and confirm that checked-in source matches the bitstream-generating source.

### Priority 2: Repair reset and methodology quality
1. Remove asynchronous reset from registers that feed block RAM address/control paths.
2. Simplify reset generation so no LUT-generated glitch path drives async reset pins.
3. Re-run synthesis and implementation, then verify DRC/methodology warnings are reduced.

### Priority 3: Improve interface timing realism
1. Add proper input/output timing constraints relative to the external DAC and push-button environment where applicable.
2. If the DAC has a datasheet timing model, constrain outputs against it.
3. Treat the external interface as a real timing boundary, not only a pin assignment problem.

### Priority 4: Upgrade verification quality
1. Convert key testbenches to self-checking tests with pass/fail conditions.
2. Add checks for reset startup, sign alignment, phase wrap, and frequency step correctness.
3. Add a test that compares expected FTW/PTW updates against actual values automatically.

### Priority 5: Clean the repository
1. Add a `.gitignore` for Vivado-generated directories and logs.
2. Keep only source RTL, XDC, `.xci`, Tcl, and selected docs under version control.
3. Archive or tag golden bitstreams intentionally rather than accumulating every run product.

## 8. Final Verdict

This is a respectable FPGA DDS project with a sound conceptual backbone. It demonstrates that the designer understands the major ingredients of a practical DDS implementation: numerically controlled phase generation, quarter-wave ROM compression, clock-domain hygiene, reset synchronization, and DAC clock forwarding. That is real engineering understanding.

However, the project also shows the signature of a design that has reached ¡°it works on the bench¡± before reaching ¡°it is fully disciplined.¡± The remaining problems are exactly the kind that separate a promising prototype from a professional submission: source/artifact mismatch, subtle RTL bugs, weak repository hygiene, and warning-heavy methodology results.

My professor-style conclusion would be this:

The project is successful as a learning-oriented digital design prototype and demonstrates solid architectural judgment. To become a strong final engineering deliverable, it now needs one concentrated cleanup cycle focused on correctness, reset methodology, external timing constraints, and repository discipline.
