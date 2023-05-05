## SSK串型总线外设
> [SSK协议标准](https://github.com/SDTEFU/BUS_libary/tree/main/SSK) 

### SSK函数
> - locked
>> 发送
>>> 1. SSK_send(SSK_drive_num,data,size)
>>>> - **(阻塞)** 发送size个bit数据内容为data

>> 接收
>>>1.  SSK_receive(SSK_drive_num,size)
>>>> - **(阻塞)** 从done信号开始接收数据，读到size个bit或者done信号结束