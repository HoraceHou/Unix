.text
.globl _main
_main:.word 0x0
subl2 $48,sp
ret
.globl _memchar
_memchar:.word 0x0
subl2 $56,sp
moval -8(fp),r1
movl (r1),r2
movl $1,r3
addl3 r3,r2,r4
movl r4,(r1)
moval -4(fp),r4
movb (r2),r2
movb r2,(r4)
movl (r1),r2
addl3 r3,r2,r2
movl r2,(r1)
movb (r2),r2
movb r2,(r4)
movl (r1),r2
movl $-1,r3
addl3 r3,r2,r5
movl r5,(r1)
movb (r2),r2
movb r2,(r4)
movl (r1),r2
addl3 r3,r2,r2
movl r2,(r1)
movb (r2),r1
movb r1,(r4)
ret
.globl _memint
_memint:.word 0x0
subl2 $56,sp
moval -8(fp),r1
movl (r1),r2
movl $4,r3
addl3 r3,r2,r4
movl r4,(r1)
moval -4(fp),r4
movl (r2),r2
movl r2,(r4)
movl (r1),r2
addl3 r3,r2,r2
movl r2,(r1)
movl (r2),r2
movl r2,(r4)
movl (r1),r2
movl $-4,r3
addl3 r3,r2,r5
movl r5,(r1)
movl (r2),r2
movl r2,(r4)
movl (r1),r2
addl3 r3,r2,r2
movl r2,(r1)
movl (r2),r1
movl r1,(r4)
ret
.globl _regchar
_regchar:.word 0x0
subl2 $56,sp
moval -8(fp),r1
movl (r1),r2
movl $1,r3
addl3 r3,r2,r4
movl r4,(r1)
moval -4(fp),r4
movb (r2),r2
movb r2,(r4)
movl (r1),r2
addl3 r3,r2,r2
movl r2,(r1)
movb (r2),r2
movb r2,(r4)
movl (r1),r2
movl $-1,r3
addl3 r3,r2,r5
movl r5,(r1)
movb (r2),r2
movb r2,(r4)
movl (r1),r2
addl3 r3,r2,r2
movl r2,(r1)
movb (r2),r1
movb r1,(r4)
ret
.globl _regint
_regint:.word 0x0
subl2 $56,sp
moval -8(fp),r1
movl (r1),r2
movl $4,r3
addl3 r3,r2,r4
movl r4,(r1)
moval -4(fp),r4
movl (r2),r2
movl r2,(r4)
movl (r1),r2
addl3 r3,r2,r2
movl r2,(r1)
movl (r2),r2
movl r2,(r4)
movl (r1),r2
movl $-4,r3
addl3 r3,r2,r5
movl r5,(r1)
movl (r2),r2
movl r2,(r4)
movl (r1),r2
addl3 r3,r2,r2
movl r2,(r1)
movl (r2),r1
movl r1,(r4)
ret

