# 通过硬件描述语言和RISC-V ISA构建一个属于自己的SOC

> ## 拥有的外设
1. FPIOA（现场可编程IO阵列）
2. GPIO（通用输入输出接口）
3. WDT（看门狗）
4. TIM（定时器）
5. RCC（系统时钟）
6. UART（通用异步收发传输器）

> ## CPU-ISA
我们选择使用RISC-V 64i为我们CPU的体系架构

> ## 使用的硬件描述语言
- SpinalHDL

> ## 开发步骤
1. RISV-V 64i 与外设规划
2. CPU与外设同步开发
3. 研究SOC与SPI-Flash的通讯
4. 开发RUST-API

> ## 使用者开发过程
s1. 通过使用RUST写的代码编译成RV64I的二进制文件
2. 烧录到SPI-Flash中
3. SPI-Flash连接设计好的MCU执行程序




## 外舍功能实现图
> **GPIO**
![GPIO](./Photo/IMG_0312(20230424-160430).JPG)

> **TIM**
![TIM](./Photo/IMG_0311(20230424-160415).JPG)

> **WDT**
![WDT](./Photo/IMG_0313(20230424-160446).JPG)
