.section .data
.global    d
.global    e
d:
        .zero   16
e:
        .zero   160
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global foo
.global baz
.global main
foo:

        //bb1:

bb1:

        //  %r101 = getelementptr %Node, %Node* %r100, i32 0, i32 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, x0
        mov     x10, #8
        mov     x9, #0
        mul     x9, x9, x10
        add     x10, x8, x9
        //  %r102 = call i32 @getint()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  store i32 %r102, i32* %r101

        str     x9, [x10]
        //  %r103 = getelementptr %Node, %Node* %r100, i32 0, i32 1

        mov     x10, #8
        mov     x9, #1
        mul     x9, x9, x10
        add     x9, x8, x9
        //  %r104 = call i32 @getint()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  store i32 %r104, i32* %r103

        str     x8, [x9]
        //  ret void

        mov     sp, x29
        ret
baz:

        //bb2:

bb2:

        //  %r106 = getelementptr %Node, %Node* %r105, i32 2

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, x0
        mov     x10, #16
        mov     x9, #2
        mul     x9, x9, x10
        add     x11, x8, x9
        //  %r107 = getelementptr %Node, %Node* %r106, i32 0, i32 0

        mov     x10, #8
        mov     x9, #0
        mul     x9, x9, x10
        add     x10, x11, x9
        //  %r108 = call i32 @getint()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  store i32 %r108, i32* %r107

        str     x9, [x10]
        //  %r109 = getelementptr %Node, %Node* %r105, i32 2

        mov     x10, #16
        mov     x9, #2
        mul     x9, x9, x10
        add     x10, x8, x9
        //  %r110 = getelementptr %Node, %Node* %r109, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x9, x10, x8
        //  %r111 = call i32 @getint()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  store i32 %r111, i32* %r110

        str     x8, [x9]
        //  ret void

        mov     sp, x29
        ret
main:

        //112:x29,#-16

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 13)

        mov     x16, #16
        sub     sp, sp, x16
        mov     x8, #13
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_starttime
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r112 = alloca %Node

        //  %r113 = getelementptr %Node, %Node* %r112, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-16
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 1, i32* %r113

        mov     x8, #1
        str     x8, [x9]
        //  %r114 = getelementptr %Node, %Node* %r112, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x9, x8, x9
        mov     x0, #-16
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 2, i32* %r114

        mov     x8, #2
        str     x8, [x9]
        //  call void @foo(%Node* %r112)

        add     x8, x29, #-16
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @foo(%Node* @d)

        adrp     x8, d
        add     x8, x8, #:lo12:d
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r115 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 0

        mov     x9, #16
        mov     x8, #0
        mul     x9, x8, x9
        adrp     x8, e
        add     x8, x8, #:lo12:e
        add     x8, x8, x9
        //  call void @baz(%Node* %r115)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     baz
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r116 = getelementptr %Node, %Node* %r112, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-16
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r117 = load i32, i32* %r116

        ldr     x10, [x8]
        //  %r118 = getelementptr %Node, %Node* %r112, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x9, x8, x9
        mov     x0, #-16
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r119 = load i32, i32* %r118

        ldr     x8, [x8]
        //  %r120 = add i32 %r117, %r119

        add     x8, x10, x8
        //  call void @putint(i32 %r120)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r121 = getelementptr %Node, %Node* @d, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        adrp     x8, d
        add     x8, x8, #:lo12:d
        add     x8, x8, x9
        //  %r122 = load i32, i32* %r121

        ldr     x10, [x8]
        //  %r123 = getelementptr %Node, %Node* @d, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x9, x8, x9
        adrp     x8, d
        add     x8, x8, #:lo12:d
        add     x8, x8, x9
        //  %r124 = load i32, i32* %r123

        ldr     x8, [x8]
        //  %r125 = add i32 %r122, %r124

        add     x8, x10, x8
        //  call void @putint(i32 %r125)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r126 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2

        mov     x9, #16
        mov     x8, #2
        mul     x9, x8, x9
        adrp     x8, e
        add     x8, x8, #:lo12:e
        add     x10, x8, x9
        //  %r127 = getelementptr %Node, %Node* %r126, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x8, x10, x8
        //  %r128 = load i32, i32* %r127

        ldr     x8, [x8]
        //  %r129 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2

        mov     x10, #16
        mov     x9, #2
        mul     x10, x9, x10
        adrp     x9, e
        add     x9, x9, #:lo12:e
        add     x11, x9, x10
        //  %r130 = getelementptr %Node, %Node* %r129, i32 0, i32 1

        mov     x10, #8
        mov     x9, #1
        mul     x9, x9, x10
        add     x9, x11, x9
        //  %r131 = load i32, i32* %r130

        ldr     x9, [x9]
        //  %r132 = add i32 %r128, %r131

        add     x8, x8, x9
        //  call void @putint(i32 %r132)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @_sysy_stoptime(i32 19)

        mov     x8, #19
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_stoptime
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
