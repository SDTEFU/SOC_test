# SOC外设库(基于SSE总线)

> ## 外设
1. FPIOA（现场可编程IO阵列）
2. GPIO（通用输入输出接口）
3. WDT（看门狗）
4. TIM（定时器）
5. RCC（系统时钟）
6. UART（通用异步收发传输器）
7. [SSK](https://github.com/SDTEFU/BUS_libary/tree/main/SSK) (同步伸缩保持串型总线)






> ## FPIOA
>> **每个 "物理" io口都有一个寄存器用来保存连接 "外设" io口的数据**
>> **每个 "物理" io口都拥有一个属于自己的GPIO外设 (GPIO外设不需要连接，硬件绑定)**


## 外舍功能实现图
> **GPIO**
![GPIO](./Photo/IMG_0312(20230424-160430).JPG)

> **TIM**
![TIM](./Photo/IMG_0311(20230424-160415).JPG)

> **WDT**
![WDT](./Photo/IMG_0313(20230424-160446).JPG)
