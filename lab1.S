.global lab1
.syntax unified
#define A #6
#define B #4
#define C #2

lab1:
   push {lr}
   mov r0, A
   mov r1, B
   mov r2, C
   bl cond
   pop {pc}
cond:
   sub r3, r0, r1
   cmp r3, #0
   bge RS
   b LS
RS:
   add r5, r0, r1
   sdiv r5, r5, r2
   pop {pc}
LS:
   sub r5, r0, r1
   sdiv r5, r5, r2
   pop {pc}
