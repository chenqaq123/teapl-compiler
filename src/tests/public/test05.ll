declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @factor( i32 %r100 ) {
bb1:
  %r129 = add i32 0, 0
  %r130 = add i32 %r100, 0
  %r131 = add i32 0, 0
  %r132 = add i32 0, 0
  %r133 = add i32 0, 0
  %r134 = add i32 1, 0
  br label %bb_while_5_11_cond

bb_while_5_11_cond:
  %r147 = phi i32 [ %r134, %bb1 ], [ %r139, %bb_if_9_13_end ]
  %r148 = phi i32 [ %r133, %bb1 ], [ %r138, %bb_if_9_13_end ]
  %r106 = add i32 %r130, 1
  %r107 = icmp slt i32 %r147, %r106
  br i1 %r107, label %bb_while_5_11_whilestms, label %bb_while_5_11_bre

bb_while_5_11_whilestms:
  %r145 = phi i32 [ %r147, %bb_while_5_11_cond ]
  %r146 = phi i32 [ %r148, %bb_while_5_11_cond ]
  %r110 = sdiv i32 %r130, %r145
  %r112 = mul i32 %r110, %r145
  %r114 = icmp eq i32 %r112, %r130
  br i1 %r114, label %bb_if_9_13_true, label %bb_if_9_13_false

bb_if_9_13_true:
  %r142 = phi i32 [ %r145, %bb_while_5_11_whilestms ]
  %r143 = phi i32 [ %r146, %bb_while_5_11_whilestms ]
  %r117 = add i32 %r143, %r142
  %r144 = add i32 %r117, 0
  br label %bb_if_9_13_end

bb_if_9_13_false:
  %r140 = phi i32 [ %r145, %bb_while_5_11_whilestms ]
  %r141 = phi i32 [ %r146, %bb_while_5_11_whilestms ]
  br label %bb_if_9_13_end

bb_if_9_13_end:
  %r137 = phi i32 [ %r142, %bb_if_9_13_true ], [ %r140, %bb_if_9_13_false ]
  %r138 = phi i32 [ %r144, %bb_if_9_13_true ], [ %r141, %bb_if_9_13_false ]
  %r119 = add i32 %r137, 1
  %r139 = add i32 %r119, 0
  br label %bb_while_5_11_cond

bb_while_5_11_bre:
  %r135 = phi i32 [ %r147, %bb_while_5_11_cond ]
  %r136 = phi i32 [ %r148, %bb_while_5_11_cond ]
  ret i32 %r136
}

define i32 @main( ) {
bb2:
  call void @_sysy_starttime(i32 24)
  store i32 4, i32* @N
  store i32 10, i32* @newline
  %r152 = add i32 0, 0
  %r153 = add i32 0, 0
  %r154 = add i32 1478, 0
  %r155 = add i32 0, 0
  call void @_sysy_stoptime(i32 31)
  %r125 = call i32 @factor(i32 %r154)
  ret i32 %r125
}

