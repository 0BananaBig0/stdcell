# 标准单元命名规范
标准单元名称_驱动强度_阈值电压
## 标准单元名称
一般以大写字母开头，由大写字母，数字和下划线构成。
## 驱动强度
一般包含X1,X2,X4,X8,X16和X32等六个强度。大部分标准单元仅有X1，X2和X4三个强度。有部分仅有X1和X2两个强度，
有部分六个强度都有，有部分六个强度都没有。
## 阈值电压
一般包含LVT，HVT，SVT和空白四种。NangateOpenCellLibrary\*.fslib文件中的标准单元是四种阈值电压都有。其它文件
的标准单元一般都是空白。
# *.fslib
描述了所有基本单元的功能，以model为一个单元的起始，以end model为一个单元的结束。input和output描述属性。
primitive描述其primitive gate netlist或者功能，这里也可能是Empty Model表示不用管其功能。
# LibBlackbox.v
是其余v文件的集合。
# LowPowerOpenCellLibrary.v
是LowPowerOpenCellLibrary\*.fslib文件的黑盒verilog文件。
# NangateOpenCellLibrary_45nm_HVT.v
是NangateOpenCellLibrary_45nm_HVT\*.fslib文件的黑盒verilog文件。
# NangateOpenCellLibrary_45nm_LVT.v
是NangateOpenCellLibrary_45nm_LVT\*.fslib文件的黑盒verilog文件。
# NangateOpenCellLibrary_45nm_SVT.v
是NangateOpenCellLibrary_45nm_SVT\*.fslib文件的黑盒verilog文件。
# NangateOpenCellLibrary_low.v
是NangateOpenCellLibrary_low\*.fslib文件的黑盒verilog文件。
注：上面四个NangateOpenCellLibrary\*.fslib除了阈值电压不一样外，其余一模一样。
# PLL.v
是PLL.fslib文件的黑盒verilog文件。
