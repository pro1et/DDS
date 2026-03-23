import math

# 参数
POINTS = 3072
MAX_VAL = 1023

# 生成正弦值
values = []
for i in range(POINTS):
    angle = (i / POINTS) * (math.pi / 2)
    sin_val = math.sin(angle)
    int_val = round(sin_val * MAX_VAL)
    values.append(int_val)

# 打印前20个验证
print("前20个正弦值:")
for i in range(20):
    print(f"{i:3d}: {values[i]:4d}")

# ====== 生成正确格式的.coe文件（用逗号分隔）======
with open('sine_10bit_3072.coe', 'w') as f:
    f.write('memory_initialization_radix=10;\n')
    f.write('memory_initialization_vector=\n')
    
    # 每行16个数字，用逗号分隔
    for i in range(0, len(values), 16):
        line_data = values[i:i+16]
        # 用逗号连接
        line = ','.join([str(x) for x in line_data])
        
        # 最后一行结尾用分号，其他行用逗号
        if i + 16 >= len(values):
            f.write(line + ';\n')
        else:
            f.write(line + ',\n')

print("\n✅ .coe文件已生成！格式正确，使用逗号分隔")