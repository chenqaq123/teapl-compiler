declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @canJump( i32* %r100, i32 %r101 ) {
bb1:
  %r184 = add i32 0, 0
  %r185 = add i32 0, 0
  %r186 = add i32 0, 0
  %r110 = alloca [ 10 x i32 ]
  %r187 = add i32 0, 0
  %r188 = add i32 %r101, 0
  %r104 = icmp eq i32 %r188, 1
  br i1 %r104, label %bb_if_5_2_true, label %bb_if_5_2_false

bb_if_5_2_true:
  ret i32 1
bb_if_5_2_false:
  br label %bb_if_5_2_end

bb_if_5_2_end:
  %r105 = getelementptr i32, i32* %r100, i32 0
  %r106 = load i32, i32* %r105
  %r108 = sub i32 %r188, 2
  %r109 = icmp sgt i32 %r106, %r108
  br i1 %r109, label %bb_if_5_6_true, label %bb_if_5_6_false

bb_if_5_6_true:
  ret i32 1
bb_if_5_6_false:
  br label %bb_if_5_6_end

bb_if_5_6_end:
  %r208 = add i32 0, 0
  br label %bb_while_5_13_cond

bb_while_5_13_cond:
  %r195 = phi i32 [ %r208, %bb_if_5_6_end ], [ %r207, %bb_while_5_13_whilestms ]
  %r114 = sub i32 %r188, 1
  %r115 = icmp slt i32 %r195, %r114
  br i1 %r115, label %bb_while_5_13_whilestms, label %bb_while_5_13_bre

bb_while_5_13_whilestms:
  %r206 = phi i32 [ %r195, %bb_while_5_13_cond ]
  %r117 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r206
  store i32 0, i32* %r117
  %r119 = add i32 %r206, 1
  %r207 = add i32 %r119, 0
  br label %bb_while_5_13_cond

bb_while_5_13_bre:
  %r212 = phi i32 [ %r195, %bb_while_5_13_cond ]
  %r122 = sub i32 %r188, 1
  %r213 = add i32 %r122, 0
  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r213
  store i32 1, i32* %r124
  %r126 = sub i32 %r188, 2
  %r214 = add i32 %r126, 0
  br label %bb_while_5_20_cond

bb_while_5_20_cond:
  %r203 = phi i32 [ %r184, %bb_while_5_13_bre ], [ %r196, %bb_while_9_29_bre ]
  %r204 = phi i32 [ %r214, %bb_while_5_13_bre ], [ %r199, %bb_while_9_29_bre ]
  %r205 = phi i32 [ %r213, %bb_while_5_13_bre ], [ %r198, %bb_while_9_29_bre ]
  %r128 = sub i32 0, 1
  %r129 = icmp sgt i32 %r204, %r128
  br i1 %r129, label %bb_while_5_20_whilestms, label %bb_while_5_20_bre

bb_while_5_20_whilestms:
  %r200 = phi i32 [ %r203, %bb_while_5_20_cond ]
  %r201 = phi i32 [ %r204, %bb_while_5_20_cond ]
  %r202 = phi i32 [ %r205, %bb_while_5_20_cond ]
  %r132 = getelementptr i32, i32* %r100, i32 %r201
  %r133 = load i32, i32* %r132
  %r135 = sub i32 %r188, 1
  %r137 = sub i32 %r135, %r201
  %r138 = icmp slt i32 %r133, %r137
  br i1 %r138, label %bb_if_9_22_true, label %bb_if_9_22_false

bb_if_9_22_true:
  %r215 = phi i32 [ %r200, %bb_while_5_20_whilestms ]
  %r216 = phi i32 [ %r201, %bb_while_5_20_whilestms ]
  %r217 = phi i32 [ %r202, %bb_while_5_20_whilestms ]
  %r140 = getelementptr i32, i32* %r100, i32 %r216
  %r141 = load i32, i32* %r140
  %r218 = add i32 %r141, 0
  br label %bb_if_9_22_end

bb_if_9_22_false:
  %r219 = phi i32 [ %r200, %bb_while_5_20_whilestms ]
  %r220 = phi i32 [ %r201, %bb_while_5_20_whilestms ]
  %r221 = phi i32 [ %r202, %bb_while_5_20_whilestms ]
  %r143 = sub i32 %r188, 1
  %r145 = sub i32 %r143, %r220
  %r222 = add i32 %r145, 0
  br label %bb_if_9_22_end

bb_if_9_22_end:
  %r189 = phi i32 [ %r218, %bb_if_9_22_true ], [ %r222, %bb_if_9_22_false ]
  %r190 = phi i32 [ %r216, %bb_if_9_22_true ], [ %r220, %bb_if_9_22_false ]
  %r191 = phi i32 [ %r217, %bb_if_9_22_true ], [ %r221, %bb_if_9_22_false ]
  br label %bb_while_9_29_cond

bb_while_9_29_cond:
  %r230 = phi i32 [ %r189, %bb_if_9_22_end ], [ %r236, %bb_if_13_31_end ]
  %r231 = phi i32 [ %r190, %bb_if_9_22_end ], [ %r234, %bb_if_13_31_end ]
  %r232 = phi i32 [ %r191, %bb_if_9_22_end ], [ %r235, %bb_if_13_31_end ]
  %r147 = sub i32 0, 1
  %r148 = icmp sgt i32 %r230, %r147
  br i1 %r148, label %bb_while_9_29_whilestms, label %bb_while_9_29_bre

bb_while_9_29_whilestms:
  %r226 = phi i32 [ %r230, %bb_while_9_29_cond ]
  %r227 = phi i32 [ %r231, %bb_while_9_29_cond ]
  %r228 = phi i32 [ %r232, %bb_while_9_29_cond ]
  %r151 = add i32 %r227, %r226
  %r229 = add i32 %r151, 0
  %r153 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r229
  %r154 = load i32, i32* %r153
  %r155 = icmp ne i32 %r154, 0
  br i1 %r155, label %bb_if_13_31_true, label %bb_if_13_31_false

bb_if_13_31_true:
  %r209 = phi i32 [ %r226, %bb_while_9_29_whilestms ]
  %r210 = phi i32 [ %r227, %bb_while_9_29_whilestms ]
  %r211 = phi i32 [ %r229, %bb_while_9_29_whilestms ]
  %r157 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r210
  store i32 1, i32* %r157
  br label %bb_if_13_31_end

bb_if_13_31_false:
  %r192 = phi i32 [ %r226, %bb_while_9_29_whilestms ]
  %r193 = phi i32 [ %r227, %bb_while_9_29_whilestms ]
  %r194 = phi i32 [ %r229, %bb_while_9_29_whilestms ]
  br label %bb_if_13_31_end

bb_if_13_31_end:
  %r233 = phi i32 [ %r209, %bb_if_13_31_true ], [ %r192, %bb_if_13_31_false ]
  %r234 = phi i32 [ %r210, %bb_if_13_31_true ], [ %r193, %bb_if_13_31_false ]
  %r235 = phi i32 [ %r211, %bb_if_13_31_true ], [ %r194, %bb_if_13_31_false ]
  %r159 = sub i32 %r233, 1
  %r236 = add i32 %r159, 0
  br label %bb_while_9_29_cond

bb_while_9_29_bre:
  %r196 = phi i32 [ %r230, %bb_while_9_29_cond ]
  %r197 = phi i32 [ %r231, %bb_while_9_29_cond ]
  %r198 = phi i32 [ %r232, %bb_while_9_29_cond ]
  %r161 = sub i32 %r197, 1
  %r199 = add i32 %r161, 0
  br label %bb_while_5_20_cond

bb_while_5_20_bre:
  %r223 = phi i32 [ %r203, %bb_while_5_20_cond ]
  %r224 = phi i32 [ %r204, %bb_while_5_20_cond ]
  %r225 = phi i32 [ %r205, %bb_while_5_20_cond ]
  %r162 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 0
  %r163 = load i32, i32* %r162
  ret i32 %r163
}

define i32 @main( ) {
bb2:
  call void @_sysy_starttime(i32 42)
  %r238 = add i32 0, 0
  %r165 = alloca [ 10 x i32 ]
  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 0
  store i32 3, i32* %r166
  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 1
  store i32 3, i32* %r167
  %r168 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 2
  store i32 9, i32* %r168
  %r169 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 3
  store i32 0, i32* %r169
  %r170 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 4
  store i32 0, i32* %r170
  %r171 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 5
  store i32 1, i32* %r171
  %r172 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 6
  store i32 1, i32* %r172
  %r173 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 7
  store i32 5, i32* %r173
  %r174 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 8
  store i32 7, i32* %r174
  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 9
  store i32 8, i32* %r175
  %r239 = add i32 10, 0
  %r176 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 0
  %r178 = call i32 @canJump(i32* %r176, i32 %r239)
  %r240 = add i32 %r178, 0
  call void @_sysy_stoptime(i32 49)
  ret i32 %r240
}

