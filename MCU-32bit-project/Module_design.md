```rust
//指令寄存器
PC_reg(时序逻辑) {
    in  clk         时钟
    in  rst         复位
    
    in  done        SSM总线回复的done信号
    out pc[32bit]   指令地址
}

取指
if(组合逻辑){
    in  pc              [32bit] pc寄存器的指令地址输入
    out done_pc                 done信号输出到PC_reg模块
   
    out pc_ssm          [32bit] 指令地址输出到SSM总线
    in  done_ssm                SSM总线输出的done信号
    in  inst_ssm        [32bit] SSM总线读出的指令
    
    out pc_if_id        [32bit] 指令地址输出到if_id模块
    out done_if_id              done信号输出到if_id模块
    out inst_if_id      [32bit] 读出的指令传输到if_id模块
}


取指_解码寄存器
if_id(时许逻辑){
    in  clk                     时钟  
    in  rst                     复位
    
    in  PC              [32bit] 指令地址
    in  done                    SSM总线done信号
    in  inst            [32bit] 指令输入

    out inst_addr       [32bit] 指令地址输出
    out inst_o          [32bit] 指令输出
}

//解码模块
id(组合逻辑){
    in  inst            [32bit]
    in  inst_addr       [32bit]
    
    out rs1_addr        [5bit]
    out rs2_addr        [5bit]
    in  rs1_data        [32bit]
    in  rs2_data        [32bit]
    
    out inst_o
    out inst_addr_o
    out rd_addr
    out rd_w_en
    out rs1_addr_o      [5bit]
    out rs2_addr_o      [5bit]
    out rs1_data_o      [32bit]
    out rs2_data_o      [32bit]
}

//解码_执行寄存器
id_ex(时序逻辑){
    in  clk
    in  rst

    in inst
    in inst_addr
    in rd_addr
    in rd_w_en
    in rs1_addr         [5bit]
    in rs2_addr         [5bit]
    in rs1_data         [32bit]
    in rs2_data         [32bit]

    out inst_o
    out inst_addr_o
    out rd_addr
    out rd_w_en
    out rs1_addr_o      [5bit]
    out rs2_addr_o      [5bit]
    out rs1_data_o      [32bit]
    out rs2_data_o      [32bit]
}

//执行
ex(组合逻辑){
    in inst
    in inst_addr
    in rd_addr
    in rd_w_en
    in rs1_addr         [5bit]
    in rs2_addr         [5bit]
    in rs1_data         [32bit]
    in rs2_data         [32bit]  

    out rd_addr         [5bit]
    out rd_w_en         
    out rd_data         [32bit]
}

//寄存器组
register(组合逻辑){
    in  rs1_addr        [5bit]
    in  rs2_addr        [5bit]
    out rs1_data        [32bit]
    out rs2_data        [32bit]    
}
```