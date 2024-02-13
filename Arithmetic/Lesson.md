# Arithmetic Expressions in x86 NASM Assembly

** MORE EXAMPLES ARE IN THE EXAMPLE FOLDER **

Arithmetic expressions in x86 NASM assembly involve performing mathematical operations on values stored in registers or memory locations. These expressions can include addition, subtraction, multiplication, and division.

## Registers

In x86 NASM assembly, arithmetic operations are typically performed using registers. Some commonly used registers for arithmetic operations include:

- `eax`, `ebx`, `ecx`, `edx` - General-purpose registers
- `esi`, `edi` - Index registers
- `ebp`, `esp` - Base and stack pointers

## Addition

To perform addition in x86 NASM assembly, you can use the `add` instruction. Here's an example that adds two values stored in registers:

```assembly
mov eax, 10    ; Store the first value in eax
mov ebx, 5     ; Store the second value in ebx
add eax, ebx   ; Add the values and store the result in eax
```

## Subtraction

Subtraction can be performed using the `sub` instruction in x86 NASM assembly. Here's an example:

```assembly
mov eax, 10    ; Store the first value in eax
mov ebx, 5     ; Store the second value in ebx
sub eax, ebx   ; Subtract the values and store the result in eax
```

## Multiplication

Multiplication in x86 NASM assembly is typically done using the `imul` instruction. Here's an example:

```assembly
mov eax, 10    ; Store the first value in eax
mov ebx, 5     ; Store the second value in ebx
imul eax, ebx  ; Multiply the values and store the result in eax
```

## Division

Division can be performed using the `idiv` instruction in x86 NASM assembly. Here's an example:

```assembly
mov eax, 10    ; Store the dividend in eax
mov ebx, 5     ; Store the divisor in ebx
xor edx, edx   ; Clear the edx register
idiv ebx       ; Divide eax by ebx, quotient stored in eax, remainder in edx
```

