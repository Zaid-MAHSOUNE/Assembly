# Registers :

Note: In 64-bit mode, the registers are extended to 64 bits and have an "R" prefix (e.g., RAX, RBX, RCX, RDX, etc.). The 16-bit versions of the registers can be accessed by using the corresponding 16-bit register names (e.g., AX, BX, CX, DX, etc.).

| Register | Size (bits) | Description                                                       | Lower Address          | Higher Address         |
|----------|-------------|-------------------------------------------------------------------|------------------------|------------------------|
| `EAX`    | 32          | Accumulator register used for arithmetic and I/O operations        | `AL` (8 bits) - `AX` (16 bits) - `EAX` (32 bits) | `AH` (8 bits) - `AX` (16 bits) - `EAX` (32 bits) |
| `EBX`    | 32          | Base register typically used for addressing data in memory         | `BL` (8 bits) - `BX` (16 bits) - `EBX` (32 bits) | `BH` (8 bits) - `BX` (16 bits) - `EBX` (32 bits) |
| `ECX`    | 32          | Counter register often used for loop control                       | `CL` (8 bits) - `CX` (16 bits) - `ECX` (32 bits) | `CH` (8 bits) - `CX` (16 bits) - `ECX` (32 bits) |
| `EDX`    | 32          | Data register, used in arithmetic operations and I/O operations    | `DL` (8 bits) - `DX` (16 bits) - `EDX` (32 bits) | `DH` (8 bits) - `DX` (16 bits) - `EDX` (32 bits) |
| `ESI`    | 32          | Source index register used for source data in string operations    | N/A                    | N/A                    |
| `EDI`    | 32          | Destination index register used for destination data in string operations | N/A               | N/A                    |
| `EBP`    | 32          | Base pointer register used for accessing parameters and local variables on the stack | N/A      | N/A                    |
| `ESP`    | 32          | Stack pointer register used for managing the stack                 | N/A                    | N/A                    |
| `EIP`    | 32          | Instruction pointer register that holds the current instruction address | N/A               | N/A                    |

Note that the lower and higher address columns are left blank for the registers that do not have specific lower or higher byte access. The registers with specific lower and higher byte access are denoted by the suffixes "L" and "H" respectively (e.g., `AL`, `AH`, `BL`, `BH`, `CL`, `CH`, `DL`, `DH`).