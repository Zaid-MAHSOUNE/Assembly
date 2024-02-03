# Variables
**Declaration**
```assembly
    ;[variable-name]    define-directive   initial-value
        choice              db              'Y'    
```

**Array Declaration**
```assembly
;   [variable-name]                   define-directive  initial-value
        choice    times    num_element       db              'Y'    
```

| Directive       | Description                                                                                                                                                                                                                     |
|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `DB`            | Defines a byte-sized (8-bit) variable or constant. For example, `myVar DB 10` defines a variable named `myVar` with the value 10.                                                                                              |
| `DW`            | Defines a word-sized (16-bit) variable or constant. For example, `myVar DW 1000` defines a variable named `myVar` with the value 1000.                                                                                          |
| `DD`            | Defines a double-word-sized (32-bit) variable or constant. For example, `myVar DD 50000` defines a variable named `myVar` with the value 50000.                                                                                  |
| `DQ`            | Defines a quad-word-sized (64-bit) variable or constant. For example, `myVar DQ 1000000000` defines a variable named `myVar` with the value 1000000000.                                                                          |
| `DT`            | Defines a ten-byte-sized (80-bit) floating-point variable or constant. For example, `myVar DT 3.14` defines a variable named `myVar` with the value 3.14.                                                                        |
| `RESB` or `RB`  | Reserves a block of memory of the specified size in bytes. For example, `myVar RESB 20` reserves 20 bytes of memory for the variable `myVar`.                                                                                   |
| `RESW` or `RW`  | Reserves a block of memory of the specified size in words. For example, `myVar RESW 10` reserves 10 words of memory for the variable `myVar`.                                                                                    |
| `RESD` or `RD`  | Reserves a block of memory of the specified size in double words. For example, `myVar RESD 5` reserves 5 double words of memory for the variable `myVar`.                                                                          |
| `RESQ` or `RQ`  | Reserves a block of memory of the specified size in quad words. For example, `myVar RESQ 2` reserves 2 quad words of memory for the variable `myVar`.                                                                             |
| `REST` or `RT`  | Reserves a block of memory of the specified size in ten-byte chunks (80 bits). For example, `myVar REST 3` reserves 3 ten-byte chunks of memory for the variable `myVar`.                                                         |
| `EQU`           | Assigns a constant value to a symbol. For example, `myConstant EQU 42` assigns the value 42 to the symbol `myConstant`.                                                                                                         |
| `EXTERN`        | Declares an external symbol that is defined in another module or file. This directive allows the assembly program to reference symbols defined in other modules.                                                            |
| `GLOBAL`        | Declares a symbol as globally visible, which means it can be accessed by other modules or files. This directive is used to export symbols from the current module.                                                              |
| `SEGMENT`       | Defines a memory segment for code or data. It allows the programmer to specify attributes such as read-only, read-write, execute-only, etc., for a particular segment of memory.                                                |
| `END`           | Marks the end of the assembly source file. It is used to indicate the end of the program and can also be used to specify an entry point for the program.                                                                       |