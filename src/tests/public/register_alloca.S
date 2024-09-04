.section .data
.global    a1
.global    a2
.global    a3
.global    a4
.global    a5
.global    a6
.global    a7
.global    a8
.global    a9
.global    a10
.global    a11
.global    a12
.global    a13
.global    a14
.global    a15
.global    a16
.global    a17
.global    a18
.global    a19
.global    a20
.global    a21
.global    a22
.global    a23
.global    a24
.global    a25
.global    a26
.global    a27
.global    a28
.global    a29
.global    a30
.global    a31
.global    a32
a1:
        .quad   1
a2:
        .quad   2
a3:
        .quad   3
a4:
        .quad   4
a5:
        .quad   5
a6:
        .quad   6
a7:
        .quad   7
a8:
        .quad   8
a9:
        .quad   9
a10:
        .quad   10
a11:
        .quad   11
a12:
        .quad   12
a13:
        .quad   13
a14:
        .quad   14
a15:
        .quad   15
a16:
        .quad   16
a17:
        .quad   1
a18:
        .quad   2
a19:
        .quad   3
a20:
        .quad   4
a21:
        .quad   5
a22:
        .quad   6
a23:
        .quad   7
a24:
        .quad   8
a25:
        .quad   9
a26:
        .quad   10
a27:
        .quad   11
a28:
        .quad   12
a29:
        .quad   13
a30:
        .quad   14
a31:
        .quad   15
a32:
        .quad   16
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global func
.global main
func:

        //bb1:

bb1:

        //  %r611 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        sub     sp, sp, #496
        mov     x10, x0
        mov     x9, x1
        mov     x8, #0
        //  %r612 = add i32 %r100, 0

        mov     x16, x10
        str     x16, [sp,#408]
        //  %r613 = add i32 0, 0

        mov     x8, #0
        //  %r614 = add i32 %r102, 0

        mov     x16, x9
        str     x16, [sp,#400]
        //  %r615 = add i32 0, 0

        mov     x8, #0
        //  %r107 = add i32 %r612, %r614

        ldr     x16, [sp,#408]
        ldr     x17, [sp,#400]
        add     x8, x16, x17
        //  %r616 = add i32 %r107, 0

        //  %r617 = add i32 0, 0

        mov     x8, #0
        //  %r618 = add i32 0, 0

        mov     x8, #0
        //  %r619 = add i32 0, 0

        mov     x8, #0
        //  %r620 = add i32 0, 0

        mov     x8, #0
        //  %r621 = add i32 0, 0

        mov     x8, #0
        //  %r622 = add i32 0, 0

        mov     x8, #0
        //  %r623 = add i32 0, 0

        mov     x8, #0
        //  %r624 = add i32 0, 0

        mov     x8, #0
        //  %r625 = add i32 0, 0

        mov     x8, #0
        //  %r626 = add i32 0, 0

        mov     x8, #0
        //  %r627 = add i32 0, 0

        mov     x8, #0
        //  %r628 = add i32 0, 0

        mov     x8, #0
        //  %r629 = add i32 0, 0

        mov     x8, #0
        //  %r630 = add i32 0, 0

        mov     x8, #0
        //  %r631 = add i32 0, 0

        mov     x8, #0
        //  %r632 = add i32 0, 0

        mov     x8, #0
        //  %r633 = add i32 0, 0

        mov     x8, #0
        //  %r634 = add i32 0, 0

        mov     x8, #0
        //  %r635 = add i32 0, 0

        mov     x8, #0
        //  %r636 = add i32 0, 0

        mov     x8, #0
        //  %r637 = add i32 0, 0

        mov     x8, #0
        //  %r638 = add i32 0, 0

        mov     x8, #0
        //  %r639 = add i32 0, 0

        mov     x8, #0
        //  %r640 = add i32 0, 0

        mov     x8, #0
        //  %r641 = add i32 0, 0

        mov     x8, #0
        //  %r642 = add i32 0, 0

        mov     x8, #0
        //  %r643 = add i32 0, 0

        mov     x8, #0
        //  %r644 = add i32 0, 0

        mov     x8, #0
        //  %r645 = add i32 0, 0

        mov     x8, #0
        //  %r646 = add i32 0, 0

        mov     x8, #0
        //  %r647 = add i32 0, 0

        mov     x8, #0
        //  %r648 = add i32 0, 0

        mov     x8, #0
        //  %r649 = add i32 0, 0

        mov     x8, #0
        //  %r650 = add i32 0, 0

        mov     x8, #0
        //  %r651 = add i32 0, 0

        mov     x8, #0
        //  %r652 = add i32 0, 0

        mov     x8, #0
        //  %r144 = call i32 @getint()

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
        //  %r653 = add i32 %r144, 0

        mov     x16, x8
        str     x16, [sp,#392]
        //  %r145 = call i32 @getint()

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
        //  %r654 = add i32 %r145, 0

        mov     x16, x8
        str     x16, [sp,#384]
        //  %r146 = call i32 @getint()

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
        //  %r655 = add i32 %r146, 0

        mov     x16, x8
        str     x16, [sp,#376]
        //  %r147 = call i32 @getint()

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
        //  %r656 = add i32 %r147, 0

        mov     x16, x8
        str     x16, [sp,#368]
        //  %r149 = add i32 1, %r653

        mov     x8, #1
        ldr     x16, [sp,#392]
        add     x8, x8, x16
        //  %r150 = load i32, i32* @a1

        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        ldr     x9, [x9]
        //  %r151 = add i32 %r149, %r150

        add     x8, x8, x9
        //  %r657 = add i32 %r151, 0

        mov     x16, x8
        str     x16, [sp,#360]
        //  %r153 = add i32 2, %r654

        mov     x8, #2
        ldr     x16, [sp,#384]
        add     x9, x8, x16
        //  %r154 = load i32, i32* @a2

        adrp     x8, a2
        add     x8, x8, #:lo12:a2
        ldr     x8, [x8]
        //  %r155 = add i32 %r153, %r154

        add     x8, x9, x8
        //  %r658 = add i32 %r155, 0

        mov     x16, x8
        str     x16, [sp,#352]
        //  %r157 = add i32 3, %r655

        mov     x8, #3
        ldr     x16, [sp,#376]
        add     x9, x8, x16
        //  %r158 = load i32, i32* @a3

        adrp     x8, a3
        add     x8, x8, #:lo12:a3
        ldr     x8, [x8]
        //  %r159 = add i32 %r157, %r158

        add     x8, x9, x8
        //  %r659 = add i32 %r159, 0

        mov     x16, x8
        str     x16, [sp,#344]
        //  %r161 = add i32 4, %r656

        mov     x8, #4
        ldr     x16, [sp,#368]
        add     x9, x8, x16
        //  %r162 = load i32, i32* @a4

        adrp     x8, a4
        add     x8, x8, #:lo12:a4
        ldr     x8, [x8]
        //  %r163 = add i32 %r161, %r162

        add     x8, x9, x8
        //  %r660 = add i32 %r163, 0

        mov     x16, x8
        str     x16, [sp,#336]
        //  %r165 = add i32 1, %r657

        mov     x8, #1
        ldr     x16, [sp,#360]
        add     x9, x8, x16
        //  %r166 = load i32, i32* @a5

        adrp     x8, a5
        add     x8, x8, #:lo12:a5
        ldr     x8, [x8]
        //  %r167 = add i32 %r165, %r166

        add     x8, x9, x8
        //  %r661 = add i32 %r167, 0

        mov     x16, x8
        str     x16, [sp,#328]
        //  %r169 = add i32 2, %r658

        mov     x8, #2
        ldr     x16, [sp,#352]
        add     x9, x8, x16
        //  %r170 = load i32, i32* @a6

        adrp     x8, a6
        add     x8, x8, #:lo12:a6
        ldr     x8, [x8]
        //  %r171 = add i32 %r169, %r170

        add     x8, x9, x8
        //  %r662 = add i32 %r171, 0

        mov     x16, x8
        str     x16, [sp,#320]
        //  %r173 = add i32 3, %r659

        mov     x8, #3
        ldr     x16, [sp,#344]
        add     x9, x8, x16
        //  %r174 = load i32, i32* @a7

        adrp     x8, a7
        add     x8, x8, #:lo12:a7
        ldr     x8, [x8]
        //  %r175 = add i32 %r173, %r174

        add     x8, x9, x8
        //  %r663 = add i32 %r175, 0

        mov     x16, x8
        str     x16, [sp,#312]
        //  %r177 = add i32 4, %r660

        mov     x8, #4
        ldr     x16, [sp,#336]
        add     x9, x8, x16
        //  %r178 = load i32, i32* @a8

        adrp     x8, a8
        add     x8, x8, #:lo12:a8
        ldr     x8, [x8]
        //  %r179 = add i32 %r177, %r178

        add     x8, x9, x8
        //  %r664 = add i32 %r179, 0

        mov     x16, x8
        str     x16, [sp,#304]
        //  %r181 = add i32 1, %r661

        mov     x8, #1
        ldr     x16, [sp,#328]
        add     x9, x8, x16
        //  %r182 = load i32, i32* @a9

        adrp     x8, a9
        add     x8, x8, #:lo12:a9
        ldr     x8, [x8]
        //  %r183 = add i32 %r181, %r182

        add     x8, x9, x8
        //  %r665 = add i32 %r183, 0

        mov     x16, x8
        str     x16, [sp,#296]
        //  %r185 = add i32 2, %r662

        mov     x8, #2
        ldr     x16, [sp,#320]
        add     x9, x8, x16
        //  %r186 = load i32, i32* @a10

        adrp     x8, a10
        add     x8, x8, #:lo12:a10
        ldr     x8, [x8]
        //  %r187 = add i32 %r185, %r186

        add     x8, x9, x8
        //  %r666 = add i32 %r187, 0

        mov     x16, x8
        str     x16, [sp,#288]
        //  %r189 = add i32 3, %r663

        mov     x8, #3
        ldr     x16, [sp,#312]
        add     x9, x8, x16
        //  %r190 = load i32, i32* @a11

        adrp     x8, a11
        add     x8, x8, #:lo12:a11
        ldr     x8, [x8]
        //  %r191 = add i32 %r189, %r190

        add     x8, x9, x8
        //  %r667 = add i32 %r191, 0

        mov     x16, x8
        str     x16, [sp,#280]
        //  %r193 = add i32 4, %r664

        mov     x8, #4
        ldr     x16, [sp,#304]
        add     x9, x8, x16
        //  %r194 = load i32, i32* @a12

        adrp     x8, a12
        add     x8, x8, #:lo12:a12
        ldr     x8, [x8]
        //  %r195 = add i32 %r193, %r194

        add     x8, x9, x8
        //  %r668 = add i32 %r195, 0

        mov     x16, x8
        str     x16, [sp,#272]
        //  %r197 = add i32 1, %r665

        mov     x8, #1
        ldr     x16, [sp,#296]
        add     x9, x8, x16
        //  %r198 = load i32, i32* @a13

        adrp     x8, a13
        add     x8, x8, #:lo12:a13
        ldr     x8, [x8]
        //  %r199 = add i32 %r197, %r198

        add     x8, x9, x8
        //  %r669 = add i32 %r199, 0

        mov     x16, x8
        str     x16, [sp,#264]
        //  %r201 = add i32 2, %r666

        mov     x8, #2
        ldr     x16, [sp,#288]
        add     x9, x8, x16
        //  %r202 = load i32, i32* @a14

        adrp     x8, a14
        add     x8, x8, #:lo12:a14
        ldr     x8, [x8]
        //  %r203 = add i32 %r201, %r202

        add     x8, x9, x8
        //  %r670 = add i32 %r203, 0

        mov     x16, x8
        str     x16, [sp,#256]
        //  %r205 = add i32 3, %r667

        mov     x8, #3
        ldr     x16, [sp,#280]
        add     x9, x8, x16
        //  %r206 = load i32, i32* @a15

        adrp     x8, a15
        add     x8, x8, #:lo12:a15
        ldr     x8, [x8]
        //  %r207 = add i32 %r205, %r206

        add     x8, x9, x8
        //  %r671 = add i32 %r207, 0

        mov     x16, x8
        str     x16, [sp,#248]
        //  %r209 = add i32 4, %r668

        mov     x8, #4
        ldr     x16, [sp,#272]
        add     x9, x8, x16
        //  %r210 = load i32, i32* @a16

        adrp     x8, a16
        add     x8, x8, #:lo12:a16
        ldr     x8, [x8]
        //  %r211 = add i32 %r209, %r210

        add     x8, x9, x8
        //  %r672 = add i32 %r211, 0

        mov     x16, x8
        str     x16, [sp,#240]
        //  %r213 = add i32 1, %r669

        mov     x8, #1
        ldr     x16, [sp,#264]
        add     x9, x8, x16
        //  %r214 = load i32, i32* @a17

        adrp     x8, a17
        add     x8, x8, #:lo12:a17
        ldr     x8, [x8]
        //  %r215 = add i32 %r213, %r214

        add     x8, x9, x8
        //  %r673 = add i32 %r215, 0

        mov     x16, x8
        str     x16, [sp,#232]
        //  %r217 = add i32 2, %r670

        mov     x8, #2
        ldr     x16, [sp,#256]
        add     x9, x8, x16
        //  %r218 = load i32, i32* @a18

        adrp     x8, a18
        add     x8, x8, #:lo12:a18
        ldr     x8, [x8]
        //  %r219 = add i32 %r217, %r218

        add     x8, x9, x8
        //  %r674 = add i32 %r219, 0

        mov     x16, x8
        str     x16, [sp,#224]
        //  %r221 = add i32 3, %r671

        mov     x8, #3
        ldr     x16, [sp,#248]
        add     x9, x8, x16
        //  %r222 = load i32, i32* @a19

        adrp     x8, a19
        add     x8, x8, #:lo12:a19
        ldr     x8, [x8]
        //  %r223 = add i32 %r221, %r222

        add     x8, x9, x8
        //  %r675 = add i32 %r223, 0

        mov     x16, x8
        str     x16, [sp,#216]
        //  %r225 = add i32 4, %r672

        mov     x8, #4
        ldr     x16, [sp,#240]
        add     x9, x8, x16
        //  %r226 = load i32, i32* @a20

        adrp     x8, a20
        add     x8, x8, #:lo12:a20
        ldr     x8, [x8]
        //  %r227 = add i32 %r225, %r226

        add     x8, x9, x8
        //  %r676 = add i32 %r227, 0

        mov     x16, x8
        str     x16, [sp,#208]
        //  %r229 = add i32 1, %r673

        mov     x8, #1
        ldr     x16, [sp,#232]
        add     x9, x8, x16
        //  %r230 = load i32, i32* @a21

        adrp     x8, a21
        add     x8, x8, #:lo12:a21
        ldr     x8, [x8]
        //  %r231 = add i32 %r229, %r230

        add     x8, x9, x8
        //  %r677 = add i32 %r231, 0

        mov     x16, x8
        str     x16, [sp,#200]
        //  %r233 = add i32 2, %r674

        mov     x8, #2
        ldr     x16, [sp,#224]
        add     x9, x8, x16
        //  %r234 = load i32, i32* @a22

        adrp     x8, a22
        add     x8, x8, #:lo12:a22
        ldr     x8, [x8]
        //  %r235 = add i32 %r233, %r234

        add     x8, x9, x8
        //  %r678 = add i32 %r235, 0

        mov     x15, x8
        //  %r237 = add i32 3, %r675

        mov     x8, #3
        ldr     x16, [sp,#216]
        add     x9, x8, x16
        //  %r238 = load i32, i32* @a23

        adrp     x8, a23
        add     x8, x8, #:lo12:a23
        ldr     x8, [x8]
        //  %r239 = add i32 %r237, %r238

        add     x8, x9, x8
        //  %r679 = add i32 %r239, 0

        mov     x14, x8
        //  %r241 = add i32 4, %r676

        mov     x8, #4
        ldr     x16, [sp,#208]
        add     x9, x8, x16
        //  %r242 = load i32, i32* @a24

        adrp     x8, a24
        add     x8, x8, #:lo12:a24
        ldr     x8, [x8]
        //  %r243 = add i32 %r241, %r242

        add     x8, x9, x8
        //  %r680 = add i32 %r243, 0

        mov     x13, x8
        //  %r245 = add i32 1, %r677

        mov     x8, #1
        ldr     x16, [sp,#200]
        add     x9, x8, x16
        //  %r246 = load i32, i32* @a25

        adrp     x8, a25
        add     x8, x8, #:lo12:a25
        ldr     x8, [x8]
        //  %r247 = add i32 %r245, %r246

        add     x8, x9, x8
        //  %r681 = add i32 %r247, 0

        mov     x12, x8
        //  %r249 = add i32 2, %r678

        mov     x8, #2
        add     x9, x8, x15
        //  %r250 = load i32, i32* @a26

        adrp     x8, a26
        add     x8, x8, #:lo12:a26
        ldr     x8, [x8]
        //  %r251 = add i32 %r249, %r250

        add     x8, x9, x8
        //  %r682 = add i32 %r251, 0

        mov     x11, x8
        //  %r253 = add i32 3, %r679

        mov     x8, #3
        add     x9, x8, x14
        //  %r254 = load i32, i32* @a27

        adrp     x8, a27
        add     x8, x8, #:lo12:a27
        ldr     x8, [x8]
        //  %r255 = add i32 %r253, %r254

        add     x8, x9, x8
        //  %r683 = add i32 %r255, 0

        mov     x10, x8
        //  %r257 = add i32 4, %r680

        mov     x8, #4
        add     x9, x8, x13
        //  %r258 = load i32, i32* @a28

        adrp     x8, a28
        add     x8, x8, #:lo12:a28
        ldr     x8, [x8]
        //  %r259 = add i32 %r257, %r258

        add     x8, x9, x8
        //  %r684 = add i32 %r259, 0

        mov     x9, x8
        //  %r261 = add i32 1, %r681

        mov     x8, #1
        add     x16, x8, x12
        str     x16, [sp,#488]
        //  %r262 = load i32, i32* @a29

        adrp     x8, a29
        add     x8, x8, #:lo12:a29
        ldr     x8, [x8]
        //  %r263 = add i32 %r261, %r262

        ldr     x16, [sp,#488]
        add     x8, x16, x8
        //  %r685 = add i32 %r263, 0

        //  %r265 = add i32 2, %r682

        mov     x8, #2
        add     x16, x8, x11
        str     x16, [sp,#480]
        //  %r266 = load i32, i32* @a30

        adrp     x8, a30
        add     x8, x8, #:lo12:a30
        ldr     x8, [x8]
        //  %r267 = add i32 %r265, %r266

        ldr     x16, [sp,#480]
        add     x8, x16, x8
        //  %r686 = add i32 %r267, 0

        //  %r269 = add i32 3, %r683

        mov     x8, #3
        add     x16, x8, x10
        str     x16, [sp,#472]
        //  %r270 = load i32, i32* @a31

        adrp     x8, a31
        add     x8, x8, #:lo12:a31
        ldr     x8, [x8]
        //  %r271 = add i32 %r269, %r270

        ldr     x16, [sp,#472]
        add     x8, x16, x8
        //  %r687 = add i32 %r271, 0

        //  %r273 = add i32 4, %r684

        mov     x8, #4
        add     x16, x8, x9
        str     x16, [sp,#464]
        //  %r274 = load i32, i32* @a32

        adrp     x8, a32
        add     x8, x8, #:lo12:a32
        ldr     x8, [x8]
        //  %r275 = add i32 %r273, %r274

        ldr     x16, [sp,#464]
        add     x8, x16, x8
        //  %r688 = add i32 %r275, 0

        //  %r278 = sub i32 %r612, %r614

        ldr     x16, [sp,#408]
        ldr     x17, [sp,#400]
        sub     x18, x16, x17
        str     x18, [sp,#456]
        //  %r279 = add i32 %r278, 10

        mov     x8, #10
        ldr     x16, [sp,#456]
        add     x8, x16, x8
        //  %r689 = add i32 %r279, 0

        mov     x16, x8
        str     x16, [sp,#192]
        //  %r281 = add i32 1, %r681

        mov     x8, #1
        add     x12, x8, x12
        //  %r282 = load i32, i32* @a29

        adrp     x8, a29
        add     x8, x8, #:lo12:a29
        ldr     x8, [x8]
        //  %r283 = add i32 %r281, %r282

        add     x8, x12, x8
        //  %r690 = add i32 %r283, 0

        mov     x16, x8
        str     x16, [sp,#184]
        //  %r285 = add i32 2, %r682

        mov     x8, #2
        add     x11, x8, x11
        //  %r286 = load i32, i32* @a30

        adrp     x8, a30
        add     x8, x8, #:lo12:a30
        ldr     x8, [x8]
        //  %r287 = add i32 %r285, %r286

        add     x8, x11, x8
        //  %r691 = add i32 %r287, 0

        mov     x16, x8
        str     x16, [sp,#176]
        //  %r289 = add i32 3, %r683

        mov     x8, #3
        add     x10, x8, x10
        //  %r290 = load i32, i32* @a31

        adrp     x8, a31
        add     x8, x8, #:lo12:a31
        ldr     x8, [x8]
        //  %r291 = add i32 %r289, %r290

        add     x8, x10, x8
        //  %r692 = add i32 %r291, 0

        mov     x16, x8
        str     x16, [sp,#168]
        //  %r293 = add i32 4, %r684

        mov     x8, #4
        add     x9, x8, x9
        //  %r294 = load i32, i32* @a32

        adrp     x8, a32
        add     x8, x8, #:lo12:a32
        ldr     x8, [x8]
        //  %r295 = add i32 %r293, %r294

        add     x8, x9, x8
        //  %r693 = add i32 %r295, 0

        mov     x16, x8
        str     x16, [sp,#160]
        //  %r297 = add i32 1, %r677

        mov     x8, #1
        ldr     x16, [sp,#200]
        add     x9, x8, x16
        //  %r298 = load i32, i32* @a25

        adrp     x8, a25
        add     x8, x8, #:lo12:a25
        ldr     x8, [x8]
        //  %r299 = add i32 %r297, %r298

        add     x8, x9, x8
        //  %r694 = add i32 %r299, 0

        mov     x16, x8
        str     x16, [sp,#152]
        //  %r301 = add i32 2, %r678

        mov     x8, #2
        add     x9, x8, x15
        //  %r302 = load i32, i32* @a26

        adrp     x8, a26
        add     x8, x8, #:lo12:a26
        ldr     x8, [x8]
        //  %r303 = add i32 %r301, %r302

        add     x8, x9, x8
        //  %r695 = add i32 %r303, 0

        mov     x16, x8
        str     x16, [sp,#144]
        //  %r305 = add i32 3, %r679

        mov     x8, #3
        add     x9, x8, x14
        //  %r306 = load i32, i32* @a27

        adrp     x8, a27
        add     x8, x8, #:lo12:a27
        ldr     x8, [x8]
        //  %r307 = add i32 %r305, %r306

        add     x8, x9, x8
        //  %r696 = add i32 %r307, 0

        mov     x16, x8
        str     x16, [sp,#136]
        //  %r309 = add i32 4, %r680

        mov     x8, #4
        add     x9, x8, x13
        //  %r310 = load i32, i32* @a28

        adrp     x8, a28
        add     x8, x8, #:lo12:a28
        ldr     x8, [x8]
        //  %r311 = add i32 %r309, %r310

        add     x8, x9, x8
        //  %r697 = add i32 %r311, 0

        mov     x16, x8
        str     x16, [sp,#128]
        //  %r313 = add i32 1, %r673

        mov     x8, #1
        ldr     x16, [sp,#232]
        add     x9, x8, x16
        //  %r314 = load i32, i32* @a21

        adrp     x8, a21
        add     x8, x8, #:lo12:a21
        ldr     x8, [x8]
        //  %r315 = add i32 %r313, %r314

        add     x8, x9, x8
        //  %r698 = add i32 %r315, 0

        mov     x16, x8
        str     x16, [sp,#120]
        //  %r317 = add i32 2, %r674

        mov     x8, #2
        ldr     x16, [sp,#224]
        add     x9, x8, x16
        //  %r318 = load i32, i32* @a22

        adrp     x8, a22
        add     x8, x8, #:lo12:a22
        ldr     x8, [x8]
        //  %r319 = add i32 %r317, %r318

        add     x8, x9, x8
        //  %r699 = add i32 %r319, 0

        mov     x16, x8
        str     x16, [sp,#112]
        //  %r321 = add i32 3, %r675

        mov     x8, #3
        ldr     x16, [sp,#216]
        add     x9, x8, x16
        //  %r322 = load i32, i32* @a23

        adrp     x8, a23
        add     x8, x8, #:lo12:a23
        ldr     x8, [x8]
        //  %r323 = add i32 %r321, %r322

        add     x8, x9, x8
        //  %r700 = add i32 %r323, 0

        mov     x16, x8
        str     x16, [sp,#104]
        //  %r325 = add i32 4, %r676

        mov     x8, #4
        ldr     x16, [sp,#208]
        add     x9, x8, x16
        //  %r326 = load i32, i32* @a24

        adrp     x8, a24
        add     x8, x8, #:lo12:a24
        ldr     x8, [x8]
        //  %r327 = add i32 %r325, %r326

        add     x8, x9, x8
        //  %r701 = add i32 %r327, 0

        mov     x16, x8
        str     x16, [sp,#96]
        //  %r329 = add i32 1, %r669

        mov     x8, #1
        ldr     x16, [sp,#264]
        add     x9, x8, x16
        //  %r330 = load i32, i32* @a17

        adrp     x8, a17
        add     x8, x8, #:lo12:a17
        ldr     x8, [x8]
        //  %r331 = add i32 %r329, %r330

        add     x8, x9, x8
        //  %r702 = add i32 %r331, 0

        mov     x16, x8
        str     x16, [sp,#88]
        //  %r333 = add i32 2, %r670

        mov     x8, #2
        ldr     x16, [sp,#256]
        add     x9, x8, x16
        //  %r334 = load i32, i32* @a18

        adrp     x8, a18
        add     x8, x8, #:lo12:a18
        ldr     x8, [x8]
        //  %r335 = add i32 %r333, %r334

        add     x8, x9, x8
        //  %r703 = add i32 %r335, 0

        mov     x16, x8
        str     x16, [sp,#80]
        //  %r337 = add i32 3, %r671

        mov     x8, #3
        ldr     x16, [sp,#248]
        add     x9, x8, x16
        //  %r338 = load i32, i32* @a19

        adrp     x8, a19
        add     x8, x8, #:lo12:a19
        ldr     x8, [x8]
        //  %r339 = add i32 %r337, %r338

        add     x8, x9, x8
        //  %r704 = add i32 %r339, 0

        mov     x16, x8
        str     x16, [sp,#72]
        //  %r341 = add i32 4, %r672

        mov     x8, #4
        ldr     x16, [sp,#240]
        add     x9, x8, x16
        //  %r342 = load i32, i32* @a20

        adrp     x8, a20
        add     x8, x8, #:lo12:a20
        ldr     x8, [x8]
        //  %r343 = add i32 %r341, %r342

        add     x8, x9, x8
        //  %r705 = add i32 %r343, 0

        mov     x16, x8
        str     x16, [sp,#64]
        //  %r345 = add i32 1, %r665

        mov     x8, #1
        ldr     x16, [sp,#296]
        add     x9, x8, x16
        //  %r346 = load i32, i32* @a13

        adrp     x8, a13
        add     x8, x8, #:lo12:a13
        ldr     x8, [x8]
        //  %r347 = add i32 %r345, %r346

        add     x8, x9, x8
        //  %r706 = add i32 %r347, 0

        mov     x16, x8
        str     x16, [sp,#56]
        //  %r349 = add i32 2, %r666

        mov     x8, #2
        ldr     x16, [sp,#288]
        add     x9, x8, x16
        //  %r350 = load i32, i32* @a14

        adrp     x8, a14
        add     x8, x8, #:lo12:a14
        ldr     x8, [x8]
        //  %r351 = add i32 %r349, %r350

        add     x8, x9, x8
        //  %r707 = add i32 %r351, 0

        mov     x16, x8
        str     x16, [sp,#48]
        //  %r353 = add i32 3, %r667

        mov     x8, #3
        ldr     x16, [sp,#280]
        add     x9, x8, x16
        //  %r354 = load i32, i32* @a15

        adrp     x8, a15
        add     x8, x8, #:lo12:a15
        ldr     x8, [x8]
        //  %r355 = add i32 %r353, %r354

        add     x8, x9, x8
        //  %r708 = add i32 %r355, 0

        mov     x16, x8
        str     x16, [sp,#40]
        //  %r357 = add i32 4, %r668

        mov     x8, #4
        ldr     x16, [sp,#272]
        add     x9, x8, x16
        //  %r358 = load i32, i32* @a16

        adrp     x8, a16
        add     x8, x8, #:lo12:a16
        ldr     x8, [x8]
        //  %r359 = add i32 %r357, %r358

        add     x8, x9, x8
        //  %r709 = add i32 %r359, 0

        mov     x16, x8
        str     x16, [sp,#32]
        //  %r361 = add i32 1, %r661

        mov     x8, #1
        ldr     x16, [sp,#328]
        add     x9, x8, x16
        //  %r362 = load i32, i32* @a9

        adrp     x8, a9
        add     x8, x8, #:lo12:a9
        ldr     x8, [x8]
        //  %r363 = add i32 %r361, %r362

        add     x8, x9, x8
        //  %r710 = add i32 %r363, 0

        mov     x16, x8
        str     x16, [sp,#24]
        //  %r365 = add i32 2, %r662

        mov     x8, #2
        ldr     x16, [sp,#320]
        add     x9, x8, x16
        //  %r366 = load i32, i32* @a10

        adrp     x8, a10
        add     x8, x8, #:lo12:a10
        ldr     x8, [x8]
        //  %r367 = add i32 %r365, %r366

        add     x8, x9, x8
        //  %r711 = add i32 %r367, 0

        mov     x16, x8
        str     x16, [sp,#16]
        //  %r369 = add i32 3, %r663

        mov     x8, #3
        ldr     x16, [sp,#312]
        add     x9, x8, x16
        //  %r370 = load i32, i32* @a11

        adrp     x8, a11
        add     x8, x8, #:lo12:a11
        ldr     x8, [x8]
        //  %r371 = add i32 %r369, %r370

        add     x8, x9, x8
        //  %r712 = add i32 %r371, 0

        mov     x16, x8
        str     x16, [sp,#8]
        //  %r373 = add i32 4, %r664

        mov     x8, #4
        ldr     x16, [sp,#304]
        add     x9, x8, x16
        //  %r374 = load i32, i32* @a12

        adrp     x8, a12
        add     x8, x8, #:lo12:a12
        ldr     x8, [x8]
        //  %r375 = add i32 %r373, %r374

        add     x8, x9, x8
        //  %r713 = add i32 %r375, 0

        mov     x16, x8
        str     x16, [sp]
        //  %r377 = add i32 1, %r657

        mov     x8, #1
        ldr     x16, [sp,#360]
        add     x9, x8, x16
        //  %r378 = load i32, i32* @a5

        adrp     x8, a5
        add     x8, x8, #:lo12:a5
        ldr     x8, [x8]
        //  %r379 = add i32 %r377, %r378

        add     x8, x9, x8
        //  %r714 = add i32 %r379, 0

        mov     x15, x8
        //  %r381 = add i32 2, %r658

        mov     x8, #2
        ldr     x16, [sp,#352]
        add     x9, x8, x16
        //  %r382 = load i32, i32* @a6

        adrp     x8, a6
        add     x8, x8, #:lo12:a6
        ldr     x8, [x8]
        //  %r383 = add i32 %r381, %r382

        add     x8, x9, x8
        //  %r715 = add i32 %r383, 0

        mov     x14, x8
        //  %r385 = add i32 3, %r659

        mov     x8, #3
        ldr     x16, [sp,#344]
        add     x9, x8, x16
        //  %r386 = load i32, i32* @a7

        adrp     x8, a7
        add     x8, x8, #:lo12:a7
        ldr     x8, [x8]
        //  %r387 = add i32 %r385, %r386

        add     x8, x9, x8
        //  %r716 = add i32 %r387, 0

        mov     x13, x8
        //  %r389 = add i32 4, %r660

        mov     x8, #4
        ldr     x16, [sp,#336]
        add     x9, x8, x16
        //  %r390 = load i32, i32* @a8

        adrp     x8, a8
        add     x8, x8, #:lo12:a8
        ldr     x8, [x8]
        //  %r391 = add i32 %r389, %r390

        add     x8, x9, x8
        //  %r717 = add i32 %r391, 0

        mov     x12, x8
        //  %r393 = add i32 1, %r653

        mov     x8, #1
        ldr     x16, [sp,#392]
        add     x9, x8, x16
        //  %r394 = load i32, i32* @a1

        adrp     x8, a1
        add     x8, x8, #:lo12:a1
        ldr     x8, [x8]
        //  %r395 = add i32 %r393, %r394

        add     x8, x9, x8
        //  %r718 = add i32 %r395, 0

        //  %r397 = add i32 2, %r654

        mov     x8, #2
        ldr     x16, [sp,#384]
        add     x9, x8, x16
        //  %r398 = load i32, i32* @a2

        adrp     x8, a2
        add     x8, x8, #:lo12:a2
        ldr     x8, [x8]
        //  %r399 = add i32 %r397, %r398

        add     x8, x9, x8
        //  %r719 = add i32 %r399, 0

        //  %r401 = add i32 3, %r655

        mov     x8, #3
        ldr     x16, [sp,#376]
        add     x9, x8, x16
        //  %r402 = load i32, i32* @a3

        adrp     x8, a3
        add     x8, x8, #:lo12:a3
        ldr     x8, [x8]
        //  %r403 = add i32 %r401, %r402

        add     x8, x9, x8
        //  %r720 = add i32 %r403, 0

        //  %r405 = add i32 4, %r656

        mov     x8, #4
        ldr     x16, [sp,#368]
        add     x9, x8, x16
        //  %r406 = load i32, i32* @a4

        adrp     x8, a4
        add     x8, x8, #:lo12:a4
        ldr     x8, [x8]
        //  %r407 = add i32 %r405, %r406

        add     x8, x9, x8
        //  %r721 = add i32 %r407, 0

        //  %r409 = add i32 1, %r653

        mov     x8, #1
        ldr     x16, [sp,#392]
        add     x9, x8, x16
        //  %r410 = load i32, i32* @a1

        adrp     x8, a1
        add     x8, x8, #:lo12:a1
        ldr     x8, [x8]
        //  %r411 = add i32 %r409, %r410

        add     x8, x9, x8
        //  %r722 = add i32 %r411, 0

        mov     x11, x8
        //  %r413 = add i32 2, %r654

        mov     x8, #2
        ldr     x16, [sp,#384]
        add     x9, x8, x16
        //  %r414 = load i32, i32* @a2

        adrp     x8, a2
        add     x8, x8, #:lo12:a2
        ldr     x8, [x8]
        //  %r415 = add i32 %r413, %r414

        add     x8, x9, x8
        //  %r723 = add i32 %r415, 0

        mov     x10, x8
        //  %r417 = add i32 3, %r655

        mov     x8, #3
        ldr     x16, [sp,#376]
        add     x9, x8, x16
        //  %r418 = load i32, i32* @a3

        adrp     x8, a3
        add     x8, x8, #:lo12:a3
        ldr     x8, [x8]
        //  %r419 = add i32 %r417, %r418

        add     x8, x9, x8
        //  %r724 = add i32 %r419, 0

        mov     x9, x8
        //  %r421 = add i32 4, %r656

        mov     x8, #4
        ldr     x16, [sp,#368]
        add     x17, x8, x16
        str     x17, [sp,#448]
        //  %r422 = load i32, i32* @a4

        adrp     x8, a4
        add     x8, x8, #:lo12:a4
        ldr     x8, [x8]
        //  %r423 = add i32 %r421, %r422

        ldr     x16, [sp,#448]
        add     x8, x16, x8
        //  %r725 = add i32 %r423, 0

        mov     x8, x8
        //  %r426 = add i32 %r689, %r653

        ldr     x16, [sp,#192]
        ldr     x17, [sp,#392]
        add     x18, x16, x17
        str     x18, [sp,#440]
        //  %r428 = add i32 %r426, %r654

        ldr     x16, [sp,#440]
        ldr     x17, [sp,#384]
        add     x18, x16, x17
        str     x18, [sp,#432]
        //  %r430 = add i32 %r428, %r655

        ldr     x16, [sp,#432]
        ldr     x17, [sp,#376]
        add     x18, x16, x17
        str     x18, [sp,#424]
        //  %r432 = add i32 %r430, %r656

        ldr     x16, [sp,#424]
        ldr     x17, [sp,#368]
        add     x18, x16, x17
        str     x18, [sp,#416]
        //  %r434 = sub i32 %r432, %r722

        ldr     x16, [sp,#416]
        sub     x11, x16, x11
        //  %r436 = sub i32 %r434, %r723

        sub     x10, x11, x10
        //  %r438 = sub i32 %r436, %r724

        sub     x9, x10, x9
        //  %r440 = sub i32 %r438, %r725

        sub     x8, x9, x8
        //  %r442 = add i32 %r440, %r714

        add     x8, x8, x15
        //  %r444 = add i32 %r442, %r715

        add     x8, x8, x14
        //  %r446 = add i32 %r444, %r716

        add     x8, x8, x13
        //  %r448 = add i32 %r446, %r717

        add     x8, x8, x12
        //  %r450 = sub i32 %r448, %r710

        ldr     x16, [sp,#24]
        sub     x8, x8, x16
        //  %r452 = sub i32 %r450, %r711

        ldr     x16, [sp,#16]
        sub     x8, x8, x16
        //  %r454 = sub i32 %r452, %r712

        ldr     x16, [sp,#8]
        sub     x8, x8, x16
        //  %r456 = sub i32 %r454, %r713

        ldr     x16, [sp]
        sub     x8, x8, x16
        //  %r458 = add i32 %r456, %r706

        ldr     x16, [sp,#56]
        add     x8, x8, x16
        //  %r460 = add i32 %r458, %r707

        ldr     x16, [sp,#48]
        add     x8, x8, x16
        //  %r462 = add i32 %r460, %r708

        ldr     x16, [sp,#40]
        add     x8, x8, x16
        //  %r464 = add i32 %r462, %r709

        ldr     x16, [sp,#32]
        add     x8, x8, x16
        //  %r466 = sub i32 %r464, %r702

        ldr     x16, [sp,#88]
        sub     x8, x8, x16
        //  %r468 = sub i32 %r466, %r703

        ldr     x16, [sp,#80]
        sub     x8, x8, x16
        //  %r470 = sub i32 %r468, %r704

        ldr     x16, [sp,#72]
        sub     x8, x8, x16
        //  %r472 = sub i32 %r470, %r705

        ldr     x16, [sp,#64]
        sub     x8, x8, x16
        //  %r474 = add i32 %r472, %r698

        ldr     x16, [sp,#120]
        add     x8, x8, x16
        //  %r476 = add i32 %r474, %r699

        ldr     x16, [sp,#112]
        add     x8, x8, x16
        //  %r478 = add i32 %r476, %r700

        ldr     x16, [sp,#104]
        add     x8, x8, x16
        //  %r480 = add i32 %r478, %r701

        ldr     x16, [sp,#96]
        add     x8, x8, x16
        //  %r482 = sub i32 %r480, %r694

        ldr     x16, [sp,#152]
        sub     x8, x8, x16
        //  %r484 = sub i32 %r482, %r695

        ldr     x16, [sp,#144]
        sub     x8, x8, x16
        //  %r486 = sub i32 %r484, %r696

        ldr     x16, [sp,#136]
        sub     x8, x8, x16
        //  %r488 = sub i32 %r486, %r697

        ldr     x16, [sp,#128]
        sub     x8, x8, x16
        //  %r490 = add i32 %r488, %r690

        ldr     x16, [sp,#184]
        add     x8, x8, x16
        //  %r492 = add i32 %r490, %r691

        ldr     x16, [sp,#176]
        add     x8, x8, x16
        //  %r494 = add i32 %r492, %r692

        ldr     x16, [sp,#168]
        add     x8, x8, x16
        //  %r496 = add i32 %r494, %r693

        ldr     x16, [sp,#160]
        add     x9, x8, x16
        //  %r497 = load i32, i32* @a1

        adrp     x8, a1
        add     x8, x8, #:lo12:a1
        ldr     x8, [x8]
        //  %r498 = add i32 %r496, %r497

        add     x9, x9, x8
        //  %r499 = load i32, i32* @a2

        adrp     x8, a2
        add     x8, x8, #:lo12:a2
        ldr     x8, [x8]
        //  %r500 = sub i32 %r498, %r499

        sub     x9, x9, x8
        //  %r501 = load i32, i32* @a3

        adrp     x8, a3
        add     x8, x8, #:lo12:a3
        ldr     x8, [x8]
        //  %r502 = add i32 %r500, %r501

        add     x9, x9, x8
        //  %r503 = load i32, i32* @a4

        adrp     x8, a4
        add     x8, x8, #:lo12:a4
        ldr     x8, [x8]
        //  %r504 = sub i32 %r502, %r503

        sub     x9, x9, x8
        //  %r505 = load i32, i32* @a5

        adrp     x8, a5
        add     x8, x8, #:lo12:a5
        ldr     x8, [x8]
        //  %r506 = add i32 %r504, %r505

        add     x9, x9, x8
        //  %r507 = load i32, i32* @a6

        adrp     x8, a6
        add     x8, x8, #:lo12:a6
        ldr     x8, [x8]
        //  %r508 = sub i32 %r506, %r507

        sub     x9, x9, x8
        //  %r509 = load i32, i32* @a7

        adrp     x8, a7
        add     x8, x8, #:lo12:a7
        ldr     x8, [x8]
        //  %r510 = add i32 %r508, %r509

        add     x9, x9, x8
        //  %r511 = load i32, i32* @a8

        adrp     x8, a8
        add     x8, x8, #:lo12:a8
        ldr     x8, [x8]
        //  %r512 = sub i32 %r510, %r511

        sub     x9, x9, x8
        //  %r513 = load i32, i32* @a9

        adrp     x8, a9
        add     x8, x8, #:lo12:a9
        ldr     x8, [x8]
        //  %r514 = add i32 %r512, %r513

        add     x9, x9, x8
        //  %r515 = load i32, i32* @a10

        adrp     x8, a10
        add     x8, x8, #:lo12:a10
        ldr     x8, [x8]
        //  %r516 = sub i32 %r514, %r515

        sub     x9, x9, x8
        //  %r517 = load i32, i32* @a11

        adrp     x8, a11
        add     x8, x8, #:lo12:a11
        ldr     x8, [x8]
        //  %r518 = add i32 %r516, %r517

        add     x9, x9, x8
        //  %r519 = load i32, i32* @a12

        adrp     x8, a12
        add     x8, x8, #:lo12:a12
        ldr     x8, [x8]
        //  %r520 = sub i32 %r518, %r519

        sub     x9, x9, x8
        //  %r521 = load i32, i32* @a13

        adrp     x8, a13
        add     x8, x8, #:lo12:a13
        ldr     x8, [x8]
        //  %r522 = add i32 %r520, %r521

        add     x9, x9, x8
        //  %r523 = load i32, i32* @a14

        adrp     x8, a14
        add     x8, x8, #:lo12:a14
        ldr     x8, [x8]
        //  %r524 = sub i32 %r522, %r523

        sub     x9, x9, x8
        //  %r525 = load i32, i32* @a15

        adrp     x8, a15
        add     x8, x8, #:lo12:a15
        ldr     x8, [x8]
        //  %r526 = add i32 %r524, %r525

        add     x9, x9, x8
        //  %r527 = load i32, i32* @a16

        adrp     x8, a16
        add     x8, x8, #:lo12:a16
        ldr     x8, [x8]
        //  %r528 = sub i32 %r526, %r527

        sub     x9, x9, x8
        //  %r529 = load i32, i32* @a17

        adrp     x8, a17
        add     x8, x8, #:lo12:a17
        ldr     x8, [x8]
        //  %r530 = add i32 %r528, %r529

        add     x9, x9, x8
        //  %r531 = load i32, i32* @a18

        adrp     x8, a18
        add     x8, x8, #:lo12:a18
        ldr     x8, [x8]
        //  %r532 = sub i32 %r530, %r531

        sub     x9, x9, x8
        //  %r533 = load i32, i32* @a19

        adrp     x8, a19
        add     x8, x8, #:lo12:a19
        ldr     x8, [x8]
        //  %r534 = add i32 %r532, %r533

        add     x9, x9, x8
        //  %r535 = load i32, i32* @a20

        adrp     x8, a20
        add     x8, x8, #:lo12:a20
        ldr     x8, [x8]
        //  %r536 = sub i32 %r534, %r535

        sub     x9, x9, x8
        //  %r537 = load i32, i32* @a21

        adrp     x8, a21
        add     x8, x8, #:lo12:a21
        ldr     x8, [x8]
        //  %r538 = add i32 %r536, %r537

        add     x9, x9, x8
        //  %r539 = load i32, i32* @a22

        adrp     x8, a22
        add     x8, x8, #:lo12:a22
        ldr     x8, [x8]
        //  %r540 = sub i32 %r538, %r539

        sub     x9, x9, x8
        //  %r541 = load i32, i32* @a23

        adrp     x8, a23
        add     x8, x8, #:lo12:a23
        ldr     x8, [x8]
        //  %r542 = add i32 %r540, %r541

        add     x9, x9, x8
        //  %r543 = load i32, i32* @a24

        adrp     x8, a24
        add     x8, x8, #:lo12:a24
        ldr     x8, [x8]
        //  %r544 = sub i32 %r542, %r543

        sub     x9, x9, x8
        //  %r545 = load i32, i32* @a25

        adrp     x8, a25
        add     x8, x8, #:lo12:a25
        ldr     x8, [x8]
        //  %r546 = add i32 %r544, %r545

        add     x9, x9, x8
        //  %r547 = load i32, i32* @a26

        adrp     x8, a26
        add     x8, x8, #:lo12:a26
        ldr     x8, [x8]
        //  %r548 = sub i32 %r546, %r547

        sub     x9, x9, x8
        //  %r549 = load i32, i32* @a27

        adrp     x8, a27
        add     x8, x8, #:lo12:a27
        ldr     x8, [x8]
        //  %r550 = add i32 %r548, %r549

        add     x9, x9, x8
        //  %r551 = load i32, i32* @a28

        adrp     x8, a28
        add     x8, x8, #:lo12:a28
        ldr     x8, [x8]
        //  %r552 = sub i32 %r550, %r551

        sub     x9, x9, x8
        //  %r553 = load i32, i32* @a29

        adrp     x8, a29
        add     x8, x8, #:lo12:a29
        ldr     x8, [x8]
        //  %r554 = add i32 %r552, %r553

        add     x9, x9, x8
        //  %r555 = load i32, i32* @a30

        adrp     x8, a30
        add     x8, x8, #:lo12:a30
        ldr     x8, [x8]
        //  %r556 = sub i32 %r554, %r555

        sub     x9, x9, x8
        //  %r557 = load i32, i32* @a31

        adrp     x8, a31
        add     x8, x8, #:lo12:a31
        ldr     x8, [x8]
        //  %r558 = add i32 %r556, %r557

        add     x9, x9, x8
        //  %r559 = load i32, i32* @a32

        adrp     x8, a32
        add     x8, x8, #:lo12:a32
        ldr     x8, [x8]
        //  %r560 = sub i32 %r558, %r559

        sub     x8, x9, x8
        //  ret i32 %r560

        mov     x0, x8
        mov     sp, x29
        ret
main:

        //bb2:

bb2:

        //  call void @_sysy_starttime(i32 87)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #87
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
        //  %r728 = add i32 0, 0

        mov     x8, #0
        //  %r729 = add i32 0, 0

        mov     x8, #0
        //  %r563 = call i32 @getint()

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
        //  %r730 = add i32 %r563, 0

        mov     x10, x8
        //  %r565 = mul i32 2, 9

        mov     x9, #2
        mov     x8, #9
        mul     x8, x9, x8
        //  %r566 = add i32 %r730, %r565

        add     x8, x10, x8
        //  %r731 = add i32 %r566, 0

        mov     x8, x8
        //  %r569 = call i32 @func(i32 %r730, i32 %r731)

        mov     x0, x10
        mov     x1, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r732 = add i32 %r569, 0

        mov     x9, x8
        //  call void @putint(i32 %r732)

        mov     x0, x9
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
        //  call void @_sysy_stoptime(i32 93)

        mov     x8, #93
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
        //  ret i32 %r732

        mov     x0, x9
        mov     sp, x29
        ret
