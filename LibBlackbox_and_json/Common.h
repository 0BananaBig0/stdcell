//////////////////////////////////////////////////////////////////
//                        Common.h
//
//  Define common data types used in host and OpenCL code base
//
//////////////////////////////////////////////////////////////////

#ifndef _COMMON_H
#define _COMMON_H

#define MSB_MASK_32 0x80000000

// define the data type in ocl code for storing gate type and level
#define   cl_gtype    char
#define   cl_level   short


typedef enum {
   PAT_SRC_EXTERNAL,
   PAT_SRC_RANDOM,
   PAT_SRC_VCD
} PatternSource;


typedef enum {
   HOST,
   OCL_GPU,
   OCL_CPU
} SimLocation;


typedef enum {
   IN_ORDER,               // 0
   EVENT_QUEUE_BASED,      // 1
   EVENT_FLAGS_BASED       // 2
} LogicSimMethod;


typedef enum {
   T_JUNK,
   T_INPUT,
   T_OUTPUT,
   T_XOR,
   T_XNOR,
   T_DELAY_ELEMENT, // Delay element: delay the value by one cycle
                    // which is referred as DFF in ISCAS89 format
   T_AND,
   T_NAND,
   T_OR,
   T_NOR,
   T_NOT,
   T_BUF,
   T_TIE1,
   T_TIE0,
   T_TIEX,
   T_TIEZ,
   T_MUX_2,         // 2-to-1 MUX
                    //   predecessors are (SEL, D0, D1)
   T_BUF_FB,        // feedback buffer; intentionly inserted for identified
                    //   combinational feedback loop
   T_BUS,           // BUS gate; do not adjust Z out
   T_BUS_GOHIGH,    // BUS gate; adjust Z out to 1 in the end
   T_BUS_GOLOW,     // BUS gate; adjust Z out to 0 in the end
   T_BUS_X,         // BUS gate; adjust Z out to X in the end
   T_BUFZ,          // initially take the id of BUSZ
                    // it is used after BUS to convert Z to X
   T_TRISTATEBUF,   // tristate buffer with active high enable
                    // predecessors are (EN, D)
   T_TRISTATEINV,   // tristate inverter with active high enable
                    // predecessors are (EN, D)
   T_DLA_PRI,       // active-high D latch primitive with set, reset
                    // predecessors are (SET, RESET, CLOCK, DATA)
   T_DFF_PRI,       // pos-edge D flip flop with set, reset
                    // predecessors are (SET, RESET, CLOCK, DATA)
   T_LAST_GTYPE
} GType;


// experimental gate struct used in OpenCL kernel
//   It turned out that due to access patterns of netlist information,
//     array of struct is not as good as separate arrays for individual
//     members. Performance of logic sim will be degraded by 10-15%.
typedef struct OclGate {
   short gtype;      // gate type
   short level;      // level where the gate is at
   short numPreds;   // number of fanin  gates
   short numSuccs;   // number of fanout gates
   int   offsetPreds;  // offset to base pointer of preds[]
   int   offsetSuccs;  // offset to base pointer of succs[]
} OclGate;

#endif
