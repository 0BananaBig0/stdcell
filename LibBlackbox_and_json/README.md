# 玉鑫师兄代码不支持的部分和我们需要支持的内容
assign x=0 需要绑定TIE0（扁平化时换成LOGIC0_X1(x)即可），assign x=1需要绑定TIE1,
（扁平化时换成LOGIC1_X1(x)即可）,assign x=y 添加一个BUF即可（扁平化时换成AON_BUF_X1(x,y)即可）。\
玉鑫师兄stdcells.json代码中的1'b0和1'b1会分别和tie0和tie1绑定。

玉鑫师兄的代码不支持inout也不支持多位宽。\
我们需要完整支持inout，多位宽只需要识别出来和提醒即可。

多个三态门并联输出连接在一起，在这些三态门并联连接输出节点后面插入一个BUSZ（BUS+BUFZ）\
三态门后面驱动的与门，非门或门(包括BUF）等时，三态门后面需要插入一个BUFZ。\
注意BUS conflict\
需要更改LUT_StringToGType，这个函数的作用是用于映射json的primitive gate到代码表示的primitive gate。
也需要该GType，他是primitive gate的枚举类型。

需要支持-Wno-implicit -Wno-litendian -Od -Wno-assignin --language 1364-2005 -v

# 我们的stdcell，primitive gate的端口标准和verilog的IEEE标准的区别
TRI_BUF标准verilog和我们的有区别 \
输入输出顺序标准 \
暂时先按我们的标准,后续需要更换为verilog的标准再统一更换。 

MUX_2在mentor中其输入输出顺序为(IN0,IN1,SEL,OUT),我们的顺序则为(OUT,SEL,IN0,IN1)。 \
TRI_BUF在mentor中其输入输出顺序为(A,EN,Z)而且EN为0时输入有效,我们的顺序则为(Z,EN,A)而且EN为1时输入有效。 \
TRI_INV在mentor中其输入输出顺序为(A,EN,Z)而且EN为0时输入有效,我们的顺序则为(Z,EN,A)而且EN为1时输入有效。 \
DLA_PRI在mentor中其输入输出顺序为(SET,RESET,CLK,D,Q,IQ),我们的顺序则为(Q,SET,RESET,CLK,D),NOT(QN,Q),而且均为active-high。 \
DFF_PRI在mentor中其输入输出顺序为(SET,RESET,CLK,D,Q,IQ),我们的顺序则为(Q,SET,RESET,CLK,D),NOT(QN,Q),而且均为pos-edge。 

我们使用的是mentor内部接口标准，无需更改输入输出顺序。

# 对于verilator识别顶层模块的猜测
据我的猜测，verilator识别顶层模块是先查看某个文件是否有某个关键词表示该文件不存在顶层模块，
然后数剩余文件中各模块出现的次数，如果只有一个模块只出现过一次，那么该模块就是顶层模块。

# json文件说明
atpg_library.schema.json修改了module name的pattern，添加了inout的支持。\
atpg_library.schema.json.first只修改了module name的pattern。\
atpg_library.schema.json.yuxin没改动。\

stdcells_45nm.json添加了inout的支持，可以和atpg_library.schema.json一起使用。\
stdcells_45nm.json.first.optimize把inout当做output处理，可以和atpg_library.schema.json.first一起使用。同时和original相比进行了primitive gate数量的优化和替换。\
stdcells_45nm.json.original_except_output最初那个库。\
stdcells_yuxin.json没改动，可以和atpg_library.schema.json.yuxin一起使用。\

stdcells_45nm\*文件修复了一些bug。

# 玉鑫师兄代码说明
## PrimitiveGate
这个类的作用是用于存储单个primitive gate的信息,但是这个类有一个问题，在存储tie0，tie1这些字符串时，玉鑫师兄把这两个数绑定到
整型的极值。
## StdCellToPrimitive
这个类的作用是存储单个stdcell的primitive gate的组成，存储方式是把primitive gate推入PrimitiveGate类型的容器中。
## AtpgLibParser
这个类的作用是stdcells.json文件的标准单元信息。其先是获取atpg_library.schema.json，检测schema文件语法的正确性，接着利用schema来判断
通过read_stdcell_library获取到的stdcells.json文件是否符合我们所需的格式规范（网上搜索两个关键词json和json schema）。然后进行parse
进行parse时先检查stdcells.json文件语法的正确性（不懂为什么现在才检查，明明前面需要使用schema检查格式规范），最后把stdcells.json文件中的所用标准单元信息全部推入StdCellToPrimitive的容器中。\
###在存储stdcells信息时使用了两个关键点：
（1）假设了所有primitive gate都是单输出的，这样的话需要记录的节点只有primary input和primitive gate。换句话讲，每个primary input单独
享有一个节点，每个primary output会和一个primitive gate共享一个节点，每个wire会和一个primitive gate共享一个节点。
（2）先存储完单个stdcell的所有primitive gate的predNode的信息，再利用当前节点必为其父节点的子节点的原理存储单个stdcell的所有primitive gate的succNode的信息。
## StdCellandIONode
存储来自read_circuit的verilog文件的单个stdcell或者节点的信息。和PrimitiveGate存在相同的问题，就是tie0和tie1这些字符村是直接和int的极值绑定。
### 在存储StdCellandIONode时利用了三个关键点：对```_std2pri,_predId,_predPort```设计的解释
（1）除了Tristate Bus，每个stdcell的输入端口只允许和一个其它stdcell的输出或者一个primary input相连，即每个stdcell的父子点数和其输入端口一致，每个输入端口的父节点数只有一个。但是每个stdcell的子节点个数大于或等于其输出端口个数，因为每个stdcell的输出端口的子节点个数不止一个。
（2）有部分stdcells的输出不止一个。需要区分父节点stdcell哪一个输出是当前节点的stdcell的输入。
（3）每一个在stdcell netlist中的stdcell（snode）都包含了其primitive gate在primitive netlist中的位置，而每一个primitive gate仅有一个输出。
## StdCellNetlist
存才来自read_circuit的verilog文件的flatten stdcell netlist。把该文件中的每一个stdcell node压入一个StdCEllandIONode类型的容器中。
