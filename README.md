# STM32H743 嵌入式系统项目

## 项目简介

本项目是基于 STM32H743VIT6 微控制器的嵌入式系统开发项目，采用 CMake 构建系统和 FreeRTOS 实时操作系统。项目实现了多种外设驱动和功能模块，包括 ADC 采样、温度传感器（DS18B20）驱动、按键控制、LED 指示、CAN 通信等功能，旨在为嵌入式开发者提供一个功能完整、结构清晰的学习和开发平台。

## 主要功能特性

### 核心功能
- **FreeRTOS 实时操作系统**：基于 FreeRTOS 的多任务调度系统，支持任务创建、同步、通信等 RTOS 核心功能
- **高精度定时**：基于 DWT（Data Watchpoint and Trace）的微秒级延时和计数功能
- **温度监测**：集成 DS18B20 数字温度传感器驱动和环境温度采集
- **CPU 温度监控**：利用 STM32 内部 ADC 读取 CPU 内部温度传感器数据
- **串口通信**：DMA 驱动的 LPUART1 串口通信，支持数据收发和日志输出
- **按键控制**：实现按键扫描、短按/长按检测和事件处理
- **LED 指示**：RGB 三色 LED 控制，用于状态指示和用户交互
- **日志系统**：集成 EasyLogger 日志库，支持多级别日志输出
- **CAN 通信**：配置 FDCAN1 和 FDCAN2 双 CAN 接口，支持高速 CAN 通信

### 硬件外设
- **ADC3**：12 位 ADC，用于 CPU 温度传感器采样
- **LPUART1**：低功耗串口，波特率 115200，支持 DMA 传输
- **FDCAN1/2**：柔性数据速率 CAN，波特率 500kbps
- **BDMA**：基础 DMA，用于 LPUART1 的数据传输
- **TIM2**：通用定时器
- **GPIO**：用户按键、RGB LED 控制、DS18B20 总线控制

## 技术栈说明

### 硬件平台
- **MCU**：STM32H743VIT6（ARM Cortex-M7 内核）
- **主频**：480MHz
- **Flash**：2MB
- **RAM**：1MB（包括 DTCM、ITCM、AXI SRAM、SRAM1/2/3/4）
- **封装**：LQFP100

### 软件架构
```
├── 应用层 (User)
│   ├── user_main.c           # 用户主任务
│   ├── key_scan_task         # 按键扫描任务
│   ├── key_detect_task       # 按键检测任务
│   └── ds18b20_task          # 温度采集任务
│
├── 驱动层 (BSP)
│   ├── HAL_UART              # 串口驱动
│   ├── USER_KEY              # 按键驱动
│   ├── DS18B20               # 温度传感器驱动
│   ├── ADC_SAMPLE            # ADC 采样驱动
│   └── DWT_COUNT             # 高精度定时驱动
│
├── 中间件层 (Middlewares)
│   ├── elog_kernel           # 日志系统
│   └── FreeRTOS              # 实时操作系统
│
└── HAL 层 (STM32 HAL)
    ├── STM32H7xx HAL         # STM32 硬件抽象层
    └── STM32CubeMX           # 外设配置代码
```

### 开发工具链
- **构建系统**：CMake 3.22+
- **编译器**：ARM GCC (arm-none-eabi-gcc)
- **IDE**：CLion / STM32CubeIDE
- **配置工具**：STM32CubeMX 6.16.1
- **调试器**：ST-Link / J-Link

### 关键技术特性
- **MPU 配置**：内存保护单元配置，提供内存访问保护
- **时钟配置**：HSE 外部晶振，PLL 倍频至 480MHz
- **DMA 传输**：BDMA 支持 LPUART1 的收发
- **中断管理**：基于 FreeRTOS 的中断优先级配置
- **日志系统**：支持 TAG、级别、时间戳的多格式日志输出

## 安装与配置步骤

### 前置条件
1. **操作系统**：Windows 10/11、Linux 或 macOS
2. **CMake**：版本 3.22 或更高
3. **ARM GCC 工具链**：arm-none-eabi-gcc
4. **IDE**：推荐使用 CLion 或 STM32CubeIDE
5. **调试工具**：ST-Link V2/V3 或 J-Link 调试器

### 安装步骤

#### 1. 克隆项目
```bash
git clone <repository_url>
cd stmh743
```

#### 2. 安装 ARM GCC 工具链
- **Windows**：从 ARM 官网下载并安装 ARM GNU Toolchain
- **Linux**：`sudo apt-get install gcc-arm-none-eabi`
- **macOS**：`brew install arm-none-eabi-gcc`

#### 3. 配置 CMake
项目使用 CMake Presets，支持 Debug 和 Release 两种配置：

```bash
# Debug 配置
cmake --preset Debug

# Release 配置
cmake --preset Release
```

#### 4. 编译项目
```bash
cmake --build --preset Debug
# 或
cmake --build --preset Release
```

编译成功后会生成以下文件：
- `stmh743.elf`：可执行文件
- `stmh743.bin`：二进制烧录文件
- `stmh743.hex`：Intel HEX 格式文件
- `stmh743.srec`：Motorola S-record 格式文件
- `stmh743_Debug.asm`：反汇编文件

#### 5. 烧录程序
使用 ST-Link 或 J-Link 烧录器：

```bash
# 使用 st-flash (ST-Link)
st-flash write stmh743.bin 0x08000000

# 使用 J-Link
JLinkExe -device STM32H743VIT6 -if SWD -speed 4000 -autoconnect 1
> loadbin stmh743.bin 0x08000000
> r
> g
```

### IDE 配置

#### CLion 配置
1. 打开 CLion，导入项目目录
2. 配置 CMake Toolchain 为 ARM GCC
3. 配置 Build Type 为 Debug 或 Release
4. 配置 Remote Debug Target（如需要）

#### STM32CubeIDE 配置
1. 导入现有项目为 CMake 项目
2. 配置工具链路径
3. 设置调试配置为 ST-Link

## 使用指南

### 系统启动流程
1. **初始化阶段**
   - MPU 配置
   - HAL 库初始化
   - 系统时钟配置（480MHz）
   - 外设时钟配置

2. **外设初始化**
   - GPIO 初始化（LED、按键）
   - LPUART1 初始化（串口通信）
   - ADC3 初始化（温度采样）
   - FDCAN1/2 初始化（CAN 通信）
   - BDMA 初始化（DMA 传输）
   - TIM2 初始化（定时器）

3. **FreeRTOS 启动**
   - 创建用户任务
   - 启动调度器
   - 开始多任务运行

### 功能使用说明

#### 1. 串口通信
- **端口**：LPUART1
- **波特率**：115200
- **DMA 传输**：支持 DMA 收发
- **日志输出**：通过 EasyLogger 输出到串口

使用示例：
```c
// 初始化串口
hal_uart_init();

// 发送数据
hal_uart_sendbytes(data, len);

// 接收数据
if (hal_uart_get_rx_available_size()) {
    uint8_t rev = hal_uart_receive_bytes(buff, 127);
}
```

#### 2. 按键控制
- **按键引脚**：PC13（用户按键）
- **触发方式**：短按、长按检测
- **响应动作**：短按切换蓝色 LED，长按可扩展功能

使用示例：
```c
// 初始化按键
KeyInfo keys[] = {
    {GPIOC, GPIO_PIN_13, 0},
};
key_init(keys, sizeof(keys) / sizeof(KeyInfo));

// 按键扫描（在任务中）
key_scan();

// 检测按键事件
if (key_get_event(0) == KE_SHORT_PRESSED) {
    key_reset_event(0);
    // 处理短按事件
}
```

#### 3. LED 控制
- **红色 LED**：PC0
- **绿色 LED**：PC1
- **蓝色 LED**：PC2

控制宏定义：
```c
LED_RED_ON()      // 点亮红色 LED
LED_RED_OFF()     // 熄灭红色 LED
LED_RED_TOOGLE()  // 切换红色 LED

LED_GREEN_ON()
LED_GREEN_OFF()
LED_GREEN_TOOGLE()

LED_BLUE_ON()
LED_BLUE_OFF()
LED_BLUE_TOOGLE()
```

#### 4. 温度采集
项目支持两种温度采集方式：

**CPU 内部温度**（通过 ADC3）：
```c
uint32_t adc_value = adc_sample_temperature();
float temp = adc_calculate_temperature(adc_value);
```

**环境温度**（通过 DS18B20）：
```c
// DS18B20 在 ds18b20_task 任务中自动运行
// 每 3 秒读取一次温度并输出到日志
float temperature;
ds18b20_read(&gs_handle, &raw, &temperature);
```

#### 5. 日志系统
使用 EasyLogger 进行日志输出：

```c
#include <elog.h>

// 初始化日志
elog_init();
elog_start();

// 输出不同级别的日志
elog_d(tag, "debug message");   // DEBUG 级别
elog_i(tag, "info message");   // INFO 级别
elog_w(tag, "warning message"); // WARN 级别
elog_e(tag, "error message");  // ERROR 级别
```

日志输出格式：
```
[D][user_main] debug message
[I][user_main] info message
[W][user_main] warning message
[E][user_main] error message
```

#### 6. CAN 通信
项目配置了 FDCAN1 和 FDCAN2，预留了 CAN 通信接口：
- **FDCAN1**：PA11 (RX), PA12 (TX)
- **FDCAN2**：PB12 (RX), PB13 (TX)
- **波特率**：500kbps

#### 7. 高精度定时
基于 DWT 的微秒级延时：
```c
// 初始化 DWT
dwt_delay_init();

// 获取当前微秒计数
uint32_t now_us = dwt_tick_us();

// 延时指定时间
dwt_delay_us(100);  // 延时 100 微秒
```

### 调试技巧

#### 1. 使用 GDB 调试
```bash
arm-none-eabi-gdb stmh743.elf
(gdb) target remote :3333  # 连接到 OpenOCD
(gdb) load stmh743.elf
(gdb) break main
(gdb) continue
```

#### 2. 查看系统状态
```bash
# 查看 FreeRTOS 任务列表
# 在 GDB 中运行：
monitor freertos list tasks

# 查看堆栈使用情况
monitor freertos heap
```

#### 3. 性能分析
- 使用 DWT 计数器测量代码执行时间
- 使用 LED 指示器进行时序分析
- 通过串口日志输出性能数据

## 项目结构说明

```
stmh743/
├── BSP/                      # 板级支持包
│   ├── ADC_SAMPLE/          # ADC 采样模块
│   ├── DWT_COUNT/           # DWT 计时模块
│   ├── DS18B20/             # 温度传感器驱动
│   ├── HAL_UART/            # 串口 HAL 封装
│   └── USER_KEY/            # 按键驱动
│
├── CMakeLists.txt           # CMake 配置文件
├── CMakePresets.json        # CMake 预设配置
├── Inc/                     # 头文件目录
│   ├── main.h               # 主程序头文件
│   ├── stm32h7xx_hal_conf.h # HAL 配置
│   ├── FreeRTOSConfig.h     # FreeRTOS 配置
│   └── elog_cfg.h           # 日志配置
│
├── Src/                     # 源文件目录
│   ├── main.c               # 主程序
│   ├── freertos.c           # FreeRTOS 初始化
│   ├── stm32h7xx_it.c       # 中断处理
│   └── stm32h7xx_hal_msp.c  # HAL MSP 初始化
│
├── User/                    # 用户代码
│   ├── user_main.c          # 用户主任务
│   └── user_main.h          # 用户主任务头文件
│
├── Drivers/                 # STM32 HAL 驱动
├── Middlewares/             # 中间件
│   └── Third_Party/
│       └── elog_kernel/     # 日志内核
│
├── cmake/                   # CMake 子目录
│   └── stm32cubemx/         # STM32CubeMX 生成的 CMake 文件
│
├── startup_stm32h743xx.s   # 启动文件
├── STM32H743XX_FLASH.ld    # 链接脚本
├── stmh743.ioc              # STM32CubeMX 项目文件
└── README.md                # 本文档
```

## 如何参与贡献

欢迎任何形式的贡献！以下是参与项目开发的方式：

### 贡献方式

1. **报告问题**：如果发现 Bug 或有功能建议，请提交 Issue
2. **代码贡献**：
   - Fork 项目到您的 GitHub 账号
   - 创建特性分支 (`git checkout -b feature/AmazingFeature`)
   - 提交更改 (`git commit -m 'Add some AmazingFeature'`)
   - 推送到分支 (`git push origin feature/AmazingFeature`)
   - 提交 Pull Request

### 开发规范

1. **代码风格**：
   - 遵循现有的代码风格
   - 使用有意义的变量和函数名
   - 添加必要的注释说明

2. **提交规范**：
   - 提交信息清晰明了
   - 一个提交只做一件事
   - 提交前确保代码编译通过

3. **测试要求**：
   - 新增功能需要经过测试
   - 确保不影响现有功能
   - 在真实硬件上验证

### 待办事项

- [ ] 完善 FDCAN 通信功能
- [ ] 添加更多传感器驱动（如 MPU6050）
- [ ] 实现图形显示功能（如 SSD1306 OLED）
- [ ] 添加文件系统支持（如 FatFS）
- [ ] 优化功耗管理
- [ ] 添加网络通信功能

## 许可证

本项目基于 STMicroelectronics HAL 库，遵循相应的许可证。

## 联系方式

如有问题或建议，欢迎通过以下方式联系：
- 提交 GitHub Issue
- 发送邮件至项目维护者

## 致谢

感谢 STMicroelectronics 提供的 STM32H743 微控制器和 HAL 库
感谢 FreeRTOS 社区提供的实时操作系统
感谢 EasyLogger 作者提供的日志系统

---

**注意**：本项目主要用于学习和研究目的，在生产环境中使用前请进行充分的测试和验证。
