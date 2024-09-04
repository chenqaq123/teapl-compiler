.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global foo
.global main
foo:

        //bb1:

bb1:

        //  %r101 = getelementptr %Bar, %Bar* %r100, i32 1

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, #256
        mov     x8, #1
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r102 = getelementptr %Bar, %Bar* %r101, i32 0, i32 2

        mov     x9, #8
        mov     x8, #2
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r103 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 3

        mov     x9, #8
        mov     x8, #3
        mul     x8, x8, x9
        add     x9, x10, x8
        //  store i32 5, i32* %r103

        mov     x8, #5
        str     x8, [x9]
        //  ret void

        mov     sp, x29
        ret
main:

        //104:x29,#-2560

        //bb2:

bb2:

        //  call void @_sysy_starttime(i32 18)

        mov     x16, #2560
        sub     sp, sp, x16
        mov     x8, #18
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
        //  %r104 = alloca [ 10 x %Bar ]

        //  %r105 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r106 = getelementptr %Bar, %Bar* %r105, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r107 = getelementptr %Node, %Node* %r106, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x9, x10, x8
        //  store i32 1, i32* %r107

        mov     x8, #1
        str     x8, [x9]
        //  %r108 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r109 = getelementptr %Bar, %Bar* %r108, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r110 = getelementptr %Node, %Node* %r109, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x9, x10, x8
        //  store i32 2, i32* %r110

        mov     x8, #2
        str     x8, [x9]
        //  %r111 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r112 = getelementptr %Bar, %Bar* %r111, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r113 = getelementptr [10 x %Node ], [10 x %Node ]* %r112, i32 0, i32 2

        mov     x9, #16
        mov     x8, #2
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r114 = getelementptr %Node, %Node* %r113, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x9, x10, x8
        //  store i32 3, i32* %r114

        mov     x8, #3
        str     x8, [x9]
        //  %r115 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r116 = getelementptr %Bar, %Bar* %r115, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r117 = getelementptr [10 x %Node ], [10 x %Node ]* %r116, i32 0, i32 2

        mov     x9, #16
        mov     x8, #2
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r118 = getelementptr %Node, %Node* %r117, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x9, x10, x8
        //  store i32 4, i32* %r118

        mov     x8, #4
        str     x8, [x9]
        //  %r119 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x8, x8, x9
        //  call void @foo(%Bar* %r119)

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
        //  %r120 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r121 = getelementptr %Bar, %Bar* %r120, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r122 = getelementptr %Node, %Node* %r121, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x8, x10, x8
        //  %r123 = load i32, i32* %r122

        ldr     x8, [x8]
        //  call void @putint(i32 %r123)

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
        //  %r124 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r125 = getelementptr %Bar, %Bar* %r124, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r126 = getelementptr %Node, %Node* %r125, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x8, x10, x8
        //  %r127 = load i32, i32* %r126

        ldr     x8, [x8]
        //  call void @putint(i32 %r127)

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
        //  %r128 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r129 = getelementptr %Bar, %Bar* %r128, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r130 = getelementptr [10 x %Node ], [10 x %Node ]* %r129, i32 0, i32 2

        mov     x9, #16
        mov     x8, #2
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r131 = getelementptr %Node, %Node* %r130, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x8, x10, x8
        //  %r132 = load i32, i32* %r131

        ldr     x8, [x8]
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
        //  %r133 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #256
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r134 = getelementptr %Bar, %Bar* %r133, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r135 = getelementptr [10 x %Node ], [10 x %Node ]* %r134, i32 0, i32 2

        mov     x9, #16
        mov     x8, #2
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r136 = getelementptr %Node, %Node* %r135, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x8, x8, x9
        add     x8, x10, x8
        //  %r137 = load i32, i32* %r136

        ldr     x8, [x8]
        //  call void @putint(i32 %r137)

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
        //  %r138 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 1

        mov     x9, #256
        mov     x8, #1
        mul     x9, x8, x9
        mov     x0, #-2560
        add     x8, x29, x0
        add     x10, x8, x9
        //  %r139 = getelementptr %Bar, %Bar* %r138, i32 0, i32 2

        mov     x9, #8
        mov     x8, #2
        mul     x8, x8, x9
        add     x10, x10, x8
        //  %r140 = getelementptr [10 x i32 ], [10 x i32 ]* %r139, i32 0, i32 3

        mov     x9, #8
        mov     x8, #3
        mul     x8, x8, x9
        add     x8, x10, x8
        //  %r141 = load i32, i32* %r140

        ldr     x8, [x8]
        //  call void @putint(i32 %r141)

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
        //  call void @_sysy_stoptime(i32 30)

        mov     x8, #30
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
