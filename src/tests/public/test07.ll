declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r117 = add i32 0, 0
  call void @_sysy_starttime(i32 2)
  %r118 = add i32 0, 0
  %r119 = add i32 0, 0
  %r120 = add i32 0, 0
  %r121 = add i32 0, 0
  %r103 = icmp slt i32 1, 9
  br i1 %r103, label %bb28_4_next, label %bb17_4_false

bb28_4_next:
  %r105 = icmp sgt i32 %r119, 0
  br i1 %r105, label %bb17_4_true, label %bb17_4_false

bb17_4_true:
  %r139 = add i32 1, 0
  br label %bb17_4_end

bb17_4_false:
  %r138 = add i32 0, 0
  br label %bb17_4_end

bb17_4_end:
  %r136 = phi i32 [ %r139, %bb17_4_true ], [ %r138, %bb17_4_false ]
  %r137 = add i32 %r136, 0
  br label %bb_while_5_5_cond

bb_while_5_5_cond:
  %r132 = phi i32 [ %r119, %bb17_4_end ], [ %r131, %bb_while_5_5_whilestms ]
  %r133 = phi i32 [ %r117, %bb17_4_end ], [ %r130, %bb_while_5_5_whilestms ]
  %r134 = phi i32 [ %r137, %bb17_4_end ], [ %r128, %bb_while_5_5_whilestms ]
  %r135 = phi i32 [ %r136, %bb17_4_end ], [ %r129, %bb_while_5_5_whilestms ]
  %r108 = icmp slt i32 %r132, 1000000
  br i1 %r108, label %bb_while_5_5_whilestms, label %bb_while_5_5_bre

bb_while_5_5_whilestms:
  %r126 = phi i32 [ %r132, %bb_while_5_5_cond ]
  %r127 = phi i32 [ %r133, %bb_while_5_5_cond ]
  %r128 = phi i32 [ %r134, %bb_while_5_5_cond ]
  %r129 = phi i32 [ %r135, %bb_while_5_5_cond ]
  %r130 = add i32 0, 0
  %r111 = add i32 %r126, 1
  %r131 = add i32 %r111, 0
  br label %bb_while_5_5_cond

bb_while_5_5_bre:
  %r122 = phi i32 [ %r132, %bb_while_5_5_cond ]
  %r123 = phi i32 [ %r133, %bb_while_5_5_cond ]
  %r124 = phi i32 [ %r134, %bb_while_5_5_cond ]
  %r125 = phi i32 [ %r135, %bb_while_5_5_cond ]
  call void @putint(i32 %r124)
  call void @_sysy_stoptime(i32 10)
  ret i32 0
}

