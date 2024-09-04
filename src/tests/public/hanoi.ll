declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define void @move( i32 %r100, i32 %r102 ) {
bb1:
  %r139 = add i32 0, 0
  %r140 = add i32 %r100, 0
  %r141 = add i32 0, 0
  %r142 = add i32 %r102, 0
  call void @putint(i32 %r140)
  call void @putch(i32 32)
  call void @putint(i32 %r142)
  call void @putch(i32 44)
  call void @putch(i32 32)
  ret void
}

define void @hanoi( i32 %r106, i32 %r108, i32 %r110, i32 %r112 ) {
bb2:
  %r147 = add i32 0, 0
  %r148 = add i32 %r106, 0
  %r149 = add i32 0, 0
  %r150 = add i32 %r108, 0
  %r151 = add i32 0, 0
  %r152 = add i32 %r110, 0
  %r153 = add i32 0, 0
  %r154 = add i32 %r112, 0
  %r115 = icmp eq i32 %r148, 1
  br i1 %r115, label %bb_if_5_8_true, label %bb_if_5_8_false

bb_if_5_8_true:
  call void @move(i32 %r150, i32 %r154)
  br label %bb_if_5_8_end

bb_if_5_8_false:
  %r119 = sub i32 %r148, 1
  call void @hanoi(i32 %r119, i32 %r150, i32 %r154, i32 %r152)
  call void @move(i32 %r150, i32 %r154)
  %r126 = sub i32 %r148, 1
  call void @hanoi(i32 %r126, i32 %r152, i32 %r150, i32 %r154)
  br label %bb_if_5_8_end

bb_if_5_8_end:
  ret void
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 21)
  %r156 = add i32 0, 0
  %r131 = call i32 @getint()
  %r157 = add i32 %r131, 0
  br label %bb_while_5_23_cond

bb_while_5_23_cond:
  %r159 = phi i32 [ %r157, %bb3 ], [ %r161, %bb_while_5_23_whilestms ]
  %r133 = icmp sgt i32 %r159, 0
  br i1 %r133, label %bb_while_5_23_whilestms, label %bb_while_5_23_bre

bb_while_5_23_whilestms:
  %r160 = phi i32 [ %r159, %bb_while_5_23_cond ]
  %r134 = call i32 @getint()
  call void @hanoi(i32 %r134, i32 1, i32 2, i32 3)
  call void @putch(i32 10)
  %r136 = sub i32 %r160, 1
  %r161 = add i32 %r136, 0
  br label %bb_while_5_23_cond

bb_while_5_23_bre:
  %r158 = phi i32 [ %r159, %bb_while_5_23_cond ]
  call void @_sysy_stoptime(i32 28)
  ret i32 0
}

