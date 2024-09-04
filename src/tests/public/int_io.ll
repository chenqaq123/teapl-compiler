declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@ascii_0 = global i32 48
define i32 @my_getint( ) {
bb1:
  %r169 = add i32 0, 0
  %r170 = add i32 0, 0
  %r171 = add i32 0, 0
  br label %bb_while_5_7_cond

bb_while_5_7_cond:
  %r185 = phi i32 [ %r171, %bb1 ], [ %r183, %bb_if_9_9_true ]
  %r102 = icmp sgt i32 1, 0
  br i1 %r102, label %bb_while_5_7_whilestms, label %bb_while_5_7_bre

bb_while_5_7_whilestms:
  %r187 = phi i32 [ %r185, %bb_while_5_7_cond ]
  %r103 = call i32 @getch()
  %r104 = load i32, i32* @ascii_0
  %r105 = sub i32 %r103, %r104
  %r188 = add i32 %r105, 0
  %r107 = icmp slt i32 %r188, 0
  br i1 %r107, label %bb_if_9_9_true, label %bb22_9_next

bb22_9_next:
  %r184 = phi i32 [ %r188, %bb_while_5_7_whilestms ]
  %r109 = icmp sgt i32 %r184, 9
  br i1 %r109, label %bb_if_9_9_true, label %bb_if_9_9_false

bb_if_9_9_true:
  %r183 = phi i32 [ %r188, %bb_while_5_7_whilestms ], [ %r184, %bb22_9_next ]
  br label %bb_while_5_7_cond

bb_if_9_9_false:
  %r186 = phi i32 [ %r184, %bb22_9_next ]
  br label %bb_while_5_7_bre

bb_while_5_7_bre:
  %r181 = phi i32 [ %r185, %bb_while_5_7_cond ], [ %r186, %bb_if_9_9_false ]
  %r182 = add i32 %r181, 0
  br label %bb_while_5_17_cond

bb_while_5_17_cond:
  %r172 = phi i32 [ %r182, %bb_while_5_7_bre ], [ %r192, %bb_if_9_19_end ]
  %r173 = phi i32 [ %r181, %bb_while_5_7_bre ], [ %r193, %bb_if_9_19_end ]
  %r111 = icmp sgt i32 1, 0
  br i1 %r111, label %bb_while_5_17_whilestms, label %bb_while_5_17_bre

bb_while_5_17_whilestms:
  %r176 = phi i32 [ %r172, %bb_while_5_17_cond ]
  %r177 = phi i32 [ %r173, %bb_while_5_17_cond ]
  %r112 = call i32 @getch()
  %r113 = load i32, i32* @ascii_0
  %r114 = sub i32 %r112, %r113
  %r178 = add i32 %r114, 0
  %r116 = icmp sge i32 %r178, 0
  br i1 %r116, label %bb23_19_next, label %bb_if_9_19_false

bb23_19_next:
  %r174 = phi i32 [ %r176, %bb_while_5_17_whilestms ]
  %r175 = phi i32 [ %r178, %bb_while_5_17_whilestms ]
  %r118 = icmp sle i32 %r175, 9
  br i1 %r118, label %bb_if_9_19_true, label %bb_if_9_19_false

bb_if_9_19_true:
  %r189 = phi i32 [ %r174, %bb23_19_next ]
  %r190 = phi i32 [ %r175, %bb23_19_next ]
  %r120 = mul i32 %r189, 10
  %r122 = add i32 %r120, %r190
  %r191 = add i32 %r122, 0
  br label %bb_if_9_19_end

bb_if_9_19_false:
  %r179 = phi i32 [ %r176, %bb_while_5_17_whilestms ], [ %r174, %bb23_19_next ]
  %r180 = phi i32 [ %r178, %bb_while_5_17_whilestms ], [ %r175, %bb23_19_next ]
  br label %bb_while_5_17_bre

bb_if_9_19_end:
  %r192 = phi i32 [ %r191, %bb_if_9_19_true ]
  %r193 = phi i32 [ %r190, %bb_if_9_19_true ]
  br label %bb_while_5_17_cond

bb_while_5_17_bre:
  %r194 = phi i32 [ %r172, %bb_while_5_17_cond ], [ %r179, %bb_if_9_19_false ]
  %r195 = phi i32 [ %r173, %bb_while_5_17_cond ], [ %r180, %bb_if_9_19_false ]
  ret i32 %r194
}

define i32 @mod( i32 %r124, i32 %r126 ) {
bb2:
  %r198 = add i32 0, 0
  %r199 = add i32 %r124, 0
  %r200 = add i32 0, 0
  %r201 = add i32 %r126, 0
  %r131 = sdiv i32 %r199, %r201
  %r133 = mul i32 %r131, %r201
  %r134 = sub i32 %r199, %r133
  ret i32 %r134
}

define void @my_putint( i32 %r135 ) {
bb3:
  %r204 = add i32 0, 0
  %r205 = add i32 %r135, 0
  %r137 = alloca [ 16 x i32 ]
  %r206 = add i32 0, 0
  %r207 = add i32 0, 0
  br label %bb_while_5_38_cond

bb_while_5_38_cond:
  %r221 = phi i32 [ %r207, %bb3 ], [ %r220, %bb_while_5_38_whilestms ]
  %r222 = phi i32 [ %r205, %bb3 ], [ %r219, %bb_while_5_38_whilestms ]
  %r140 = icmp sgt i32 %r222, 0
  br i1 %r140, label %bb_while_5_38_whilestms, label %bb_while_5_38_bre

bb_while_5_38_whilestms:
  %r217 = phi i32 [ %r221, %bb_while_5_38_cond ]
  %r218 = phi i32 [ %r222, %bb_while_5_38_cond ]
  %r142 = getelementptr [16 x i32 ], [16 x i32 ]* %r137, i32 0, i32 %r217
  %r144 = call i32 @mod(i32 %r218, i32 10)
  %r145 = load i32, i32* @ascii_0
  %r146 = add i32 %r144, %r145
  store i32 %r146, i32* %r142
  %r148 = sdiv i32 %r218, 10
  %r219 = add i32 %r148, 0
  %r150 = add i32 %r217, 1
  %r220 = add i32 %r150, 0
  br label %bb_while_5_38_cond

bb_while_5_38_bre:
  %r213 = phi i32 [ %r221, %bb_while_5_38_cond ]
  %r214 = phi i32 [ %r222, %bb_while_5_38_cond ]
  br label %bb_while_5_43_cond

bb_while_5_43_cond:
  %r211 = phi i32 [ %r213, %bb_while_5_38_bre ], [ %r210, %bb_while_5_43_whilestms ]
  %r212 = phi i32 [ %r214, %bb_while_5_38_bre ], [ %r209, %bb_while_5_43_whilestms ]
  %r152 = icmp sgt i32 %r211, 0
  br i1 %r152, label %bb_while_5_43_whilestms, label %bb_while_5_43_bre

bb_while_5_43_whilestms:
  %r208 = phi i32 [ %r211, %bb_while_5_43_cond ]
  %r209 = phi i32 [ %r212, %bb_while_5_43_cond ]
  %r154 = sub i32 %r208, 1
  %r210 = add i32 %r154, 0
  %r156 = getelementptr [16 x i32 ], [16 x i32 ]* %r137, i32 0, i32 %r210
  %r157 = load i32, i32* %r156
  call void @putch(i32 %r157)
  br label %bb_while_5_43_cond

bb_while_5_43_bre:
  %r215 = phi i32 [ %r211, %bb_while_5_43_cond ]
  %r216 = phi i32 [ %r212, %bb_while_5_43_cond ]
  ret void
}

define i32 @main( ) {
bb4:
  %r225 = add i32 0, 0
  call void @_sysy_starttime(i32 51)
  %r226 = add i32 0, 0
  %r159 = call i32 @my_getint()
  %r227 = add i32 %r159, 0
  br label %bb_while_5_53_cond

bb_while_5_53_cond:
  %r234 = phi i32 [ %r227, %bb4 ], [ %r233, %bb_while_5_53_whilestms ]
  %r235 = phi i32 [ %r225, %bb4 ], [ %r232, %bb_while_5_53_whilestms ]
  %r161 = icmp sgt i32 %r234, 0
  br i1 %r161, label %bb_while_5_53_whilestms, label %bb_while_5_53_bre

bb_while_5_53_whilestms:
  %r230 = phi i32 [ %r234, %bb_while_5_53_cond ]
  %r231 = phi i32 [ %r235, %bb_while_5_53_cond ]
  %r163 = call i32 @my_getint()
  %r232 = add i32 %r163, 0
  call void @my_putint(i32 %r232)
  call void @putch(i32 10)
  %r166 = sub i32 %r230, 1
  %r233 = add i32 %r166, 0
  br label %bb_while_5_53_cond

bb_while_5_53_bre:
  %r228 = phi i32 [ %r234, %bb_while_5_53_cond ]
  %r229 = phi i32 [ %r235, %bb_while_5_53_cond ]
  call void @_sysy_stoptime(i32 58)
  ret i32 0
}

