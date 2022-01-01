TRI_BUF标准verilog和我们的有区别 \
输入输出顺序标准 \
暂时先按我们的标准,后续需要更换为verilog的标准再统一更换。 

MUX_2在mentor中其输入输出顺序为(IN0,IN1,SEL,OUT),我们的顺序则为(OUT,SEL,IN0,IN1)。 \
TRI_BUF在mentor中其输入输出顺序为(A,EN,Z)而且EN为0时输入有效,我们的顺序则为(Z,EN,A)而且EN为1时输入有效。 \
TRI_INV在mentor中其输入输出顺序为(A,EN,Z)而且EN为0时输入有效,我们的顺序则为(Z,EN,A)而且EN为1时输入有效。 \
DLA_PRI在mentor中其输入输出顺序为(SET,RESET,CLK,D,Q,IQ),我们的顺序则为(Q,SET,RESET,CLK,D),NOT(QN,Q),而且均为active-high。 \
DFF_PRI在mentor中其输入输出顺序为(SET,RESET,CLK,D,Q,IQ),我们的顺序则为(Q,SET,RESET,CLK,D),NOT(QN,Q),而且均为pos-edge。 

我们使用的是mentor内部接口标准，无需更改输入输出顺序。

assign x=0 需要绑定TIE0（扁平化时换成LOGIC0_X1(x)即可），assign x=1需要绑定TIE1,
（扁平化时换成LOGIC1_X1(x)即可）,assign x=y 添加一个BUF即可（扁平化时换成AON_BUF_X1(x,y)即可）。

玉鑫师兄的代码不支持inout也不支持多位宽。
我们需要完整支持inout，多位宽只需要识别出来和提醒即可。

多个三态门并联输出连接在一起，在这些三态门并联连接输出节点后面插入一个BUSZ（BUS+BUFZ）
三态门后面驱动的与门，非门或门(包括BUF）等时，三态门后面需要插入一个BUFZ。
注意BUS conflict

需要支持-Wno-implicit -Wno-litendian -Od -Wno-assignin --language 1364-2005

据我的猜测，verilator识别顶层模块是先查看某个文件是否有某个关键词表示该文件不存在顶层模块，然后数剩余文件中各模块出现的次数，如果只有一个模块只出现过一次，那么该模块就是顶层模块。
