.text
.globl _main
_main:.word 0x0
subl2 $72,sp
moval _1,r1
movl r1,0(sp)
moval _print,r1
calls $0,(r1)
movl r0,r1
moval _2,r1
movl r1,0(sp)
moval _3,r1
movl r1,4(sp)
moval _print,r1
calls $0,(r1)
movl r0,r1
moval _4,r1
movl r1,0(sp)
movl $3,r1
movl r1,4(sp)
movl $10,r1
movl r1,8(sp)
moval _print,r1
calls $0,(r1)
movl r0,r1
moval _5,r1
movl r1,0(sp)
moval _6,r1
movl r1,4(sp)
moval _7,r1
movl r1,8(sp)
movl $4,r1
movl r1,12(sp)
movl $10,r1
movl r1,16(sp)
moval _print,r1
calls $0,(r1)
movl r0,r1
moval _8,r1
movl r1,0(sp)
moval _6,r1
movl r1,4(sp)
moval _7,r1
movl r1,8(sp)
moval _9,r1
movd (r1),r1
movd r1,12(sp)
movl $10,r1
movl r1,20(sp)
moval _print,r1
calls $0,(r1)
movl r0,r1
ret
.globl _print
_print:.word 0x0
subl2 $68,sp
moval -4(fp),r1
moval 4+4(ap),r2
movl r2,(r1)
moval L15,r1
jmp (r1)
L12:moval 4(ap),r1
movl (r1),r1
movb (r1),r1
cvtbl r1,r1
movl $37,r2
cmpl r1,r2; jneq L16
moval 4(ap),r1
movl (r1),r2
movl $1,r3
addl3 r3,r2,r2
movl r2,(r1)
moval -8(fp),r1
movb (r2),r2
cvtbl r2,r2
movl r2,(r1)
moval -8(fp),r1
movl (r1),r1
movl $115,r2
cmpl r1,r2; jeql L27
cmpl r1,r2; jgtr L31
moval -8(fp),r1
movl (r1),r1
movl $99,r2
cmpl r1,r2; jeql L21
movl $100,r2
cmpl r1,r2; jeql L23
movl $102,r2
cmpl r1,r2; jeql L29
moval L18,r1
jmp (r1)
L31:moval -8(fp),r1
movl (r1),r1
movl $119,r2
cmpl r1,r2; jeql L25
moval L18,r1
jmp (r1)
L21:moval _22,r1
movl r1,0(sp)
moval -4(fp),r1
movl (r1),r2
movl $4,r3
addl3 r3,r2,r2
movl r2,(r1)
movl $-4,r1
addl3 r1,r2,r1
movb (r1),r1
cvtbl r1,r1
movl r1,4(sp)
moval _printf,r1
calls $0,(r1)
movl r0,r1
moval L17,r1
jmp (r1)
L23:moval _24,r1
movl r1,0(sp)
moval -4(fp),r1
movl (r1),r2
movl $4,r3
addl3 r3,r2,r2
movl r2,(r1)
movl $-4,r1
addl3 r1,r2,r1
movl (r1),r1
movl r1,4(sp)
moval _printf,r1
calls $0,(r1)
movl r0,r1
moval L17,r1
jmp (r1)
L25:moval _26,r1
movl r1,0(sp)
moval -4(fp),r1
movl (r1),r2
movl $4,r3
addl3 r3,r2,r2
movl r2,(r1)
movl $-4,r1
addl3 r1,r2,r1
movw (r1),r1
cvtwl r1,r1
movl r1,4(sp)
moval _printf,r1
calls $0,(r1)
movl r0,r1
moval L17,r1
jmp (r1)
L27:moval _28,r1
movl r1,0(sp)
moval -4(fp),r1
movl (r1),r2
movl $4,r3
addl3 r3,r2,r2
movl r2,(r1)
movl $-4,r1
addl3 r1,r2,r1
movl (r1),r1
movl r1,4(sp)
moval _printf,r1
calls $0,(r1)
movl r0,r1
moval L17,r1
jmp (r1)
L29:moval _30,r1
movl r1,0(sp)
moval -4(fp),r1
movl (r1),r2
movl $8,r3
addl3 r3,r2,r2
movl r2,(r1)
movl $-8,r1
addl3 r1,r2,r1
movd (r1),r1
movd r1,4(sp)
moval _printf,r1
calls $0,(r1)
movl r0,r1
moval L17,r1
jmp (r1)
L18:moval _22,r1
movl r1,0(sp)
moval 4(ap),r1
movl (r1),r1
movb (r1),r1
cvtbl r1,r1
movl r1,4(sp)
moval _printf,r1
calls $0,(r1)
movl r0,r1
moval L17,r1
jmp (r1)
L16:moval _22,r1
movl r1,0(sp)
moval 4(ap),r1
movl (r1),r1
movb (r1),r1
cvtbl r1,r1
movl r1,4(sp)
moval _printf,r1
calls $0,(r1)
movl r0,r1
L17:L13:moval 4(ap),r1
movl (r1),r2
movl $1,r3
addl3 r3,r2,r2
movl r2,(r1)
L15:moval 4(ap),r1
movl (r1),r1
movb (r1),r1
cvtbl r1,r1
movl $0,r2
cmpl r1,r2; jneq L12
ret
.text 1
_30:.byte 37
.byte 102
.byte 0
_28:.byte 37
.byte 115
.byte 0
_26:.byte 37
.byte 120
.byte 0
_24:.byte 37
.byte 100
.byte 0
_22:.byte 37
.byte 99
.byte 0
.align 2; _9:.long 0x41a0,0x0
_8:.byte 37
.byte 115
.byte 37
.byte 115
.byte 32
.byte 37
.byte 102
.byte 37
.byte 99
.byte 0
_7:.byte 115
.byte 116
.byte 0
_6:.byte 116
.byte 101
.byte 0
_5:.byte 37
.byte 115
.byte 37
.byte 115
.byte 32
.byte 37
.byte 119
.byte 37
.byte 99
.byte 0
_4:.byte 116
.byte 101
.byte 115
.byte 116
.byte 32
.byte 37
.byte 100
.byte 37
.byte 99
.byte 0
_3:.byte 50
.byte 0
_2:.byte 116
.byte 101
.byte 115
.byte 116
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
_1:.byte 116
.byte 101
.byte 115
.byte 116
.byte 32
.byte 49
.byte 10
.byte 0
