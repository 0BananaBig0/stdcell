# 玉鑫师兄代码不支持的部分
inout端口需要考虑，不过可以把它当做output端口来用。尽量原生支持多位宽。\
位宽大于1的输入输出需要考虑，这个只能手改。\
需要支持buffer的插入，需要在非门和Tri_State_Buf之间插入BUSZ
# json文件说明
atpg_library.schema.json修改了module name的pattern，添加了inout的支持。\
atpg_library.schema.json.first只修改了module name的pattern。\
atpg_library.schema.json.yuxin没改动。\

stdcells_45nm.json添加了inout的支持，可以和atpg_library.schema.json一起使用。\
stdcells_45nm.json.first.optimize把inout当做output处理，可以和atpg_library.schema.json.first一起使用。同时和original相比进行了primitive gate数量的优化和替换。\
stdcells_45nm.json.original_except_output最初那个库。\
stdcells_yuxin.json没改动，可以和atpg_library.schema.json.yuxin一起使用。\

stdcells_45nm\*文件修复了一些bug。
