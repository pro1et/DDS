import math

# Configuration
POINTS = 2048       # Number of points (0 to pi/2)
DATA_WIDTH = 10     # Bit width
MAX_VAL = (2**DATA_WIDTH) - 1  # 1023

filename = "sin_10bit_2048_table.coe"

with open(filename, "w") as f:
    # 1. Write the COE header
    # Radix 10 is easiest to read, but you can use 16 for Hex
    f.write("memory_initialization_radix=10;\n")
    f.write("memory_initialization_vector=\n")

    # 2. Generate Sine points
    for i in range(POINTS):
        # Calculate angle from 0 to pi/2
        # We divide by (POINTS - 1) to ensure the last point is exactly pi/2
        angle = (math.pi / 2) * (i / (POINTS - 1))
        
        # Calculate sine and scale to 10-bit integer
        sin_val = math.sin(angle)
        scaled_val = round(sin_val * MAX_VAL)
        
        # 3. Format the output
        # Use a comma for all entries except the last one, which gets a semicolon
        if i < POINTS - 1:
            f.write(f"{scaled_val},\n")
        else:
            f.write(f"{scaled_val};\n")

print(f"Successfully generated {filename} with {POINTS} points.")