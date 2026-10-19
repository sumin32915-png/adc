# Combo II-DLD S75 / MAIN CLOCK F = 50 MHz
# 교재 3.4절 핀표 기준. 키패드 1 = 리셋, DIP1~3 = add_sel (ON = 1)
# add_sel 000 = ADC IN 가변저항, 001 = 조도센서
set_property PACKAGE_PIN B6 [get_ports clk_50mhz]
set_property PACKAGE_PIN K4 [get_ports rst_p]

set_property PACKAGE_PIN Y1 [get_ports {add_sel[2]}]
set_property PACKAGE_PIN W3 [get_ports {add_sel[1]}]
set_property PACKAGE_PIN U2 [get_ports {add_sel[0]}]

# AD7908 직렬 신호
set_property PACKAGE_PIN H7 [get_ports adc_sclk]
set_property PACKAGE_PIN H3 [get_ports adc_ncs]
set_property PACKAGE_PIN H5 [get_ports adc_din]
set_property PACKAGE_PIN J6 [get_ports adc_dout]

# LED1~8 = led_out[7:0]
set_property PACKAGE_PIN L4 [get_ports {led_out[7]}]
set_property PACKAGE_PIN M4 [get_ports {led_out[6]}]
set_property PACKAGE_PIN M2 [get_ports {led_out[5]}]
set_property PACKAGE_PIN N7 [get_ports {led_out[4]}]
set_property PACKAGE_PIN M7 [get_ports {led_out[3]}]
set_property PACKAGE_PIN M3 [get_ports {led_out[2]}]
set_property PACKAGE_PIN M1 [get_ports {led_out[1]}]
set_property PACKAGE_PIN N5 [get_ports {led_out[0]}]

# sample[11:0], data_valid: 보드 장치에 쓰지 않는 출력이라
# 확장 헤더 BDIO00~12에 배정 (수업 저장소 예제의 BDIO 핀 순서)
set_property PACKAGE_PIN F8  [get_ports {sample[0]}]
set_property PACKAGE_PIN E8  [get_ports {sample[1]}]
set_property PACKAGE_PIN A7  [get_ports {sample[2]}]
set_property PACKAGE_PIN G8  [get_ports {sample[3]}]
set_property PACKAGE_PIN D7  [get_ports {sample[4]}]
set_property PACKAGE_PIN B7  [get_ports {sample[5]}]
set_property PACKAGE_PIN G7  [get_ports {sample[6]}]
set_property PACKAGE_PIN F7  [get_ports {sample[7]}]
set_property PACKAGE_PIN C8  [get_ports {sample[8]}]
set_property PACKAGE_PIN D8  [get_ports {sample[9]}]
set_property PACKAGE_PIN C9  [get_ports {sample[10]}]
set_property PACKAGE_PIN B8  [get_ports {sample[11]}]
set_property PACKAGE_PIN A9  [get_ports data_valid]

set_property IOSTANDARD LVCMOS33 [get_ports *]
create_clock -name clk_50mhz -period 20.000 [get_ports clk_50mhz]
set_false_path -from [get_ports {rst_p add_sel[*]}]