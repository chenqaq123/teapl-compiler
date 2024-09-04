declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @uniquePaths( i32 %r100, i32 %r102 ) {
bb1:
  %r190 = add i32 0, 0
  %r191 = add i32 0, 0
  %r192 = add i32 0, 0
  %r193 = add i32 0, 0
  %r194 = add i32 0, 0
  %r108 = alloca [ 9 x i32 ]
  %r195 = add i32 0, 0
  %r196 = add i32 %r100, 0
  %r197 = add i32 0, 0
  %r198 = add i32 %r102, 0
  %r105 = icmp eq i32 %r196, 1
  br i1 %r105, label %bb_if_5_2_true, label %bb18_2_next

bb18_2_next:
  %r107 = icmp eq i32 %r198, 1
  br i1 %r107, label %bb_if_5_2_true, label %bb_if_5_2_false

bb_if_5_2_true:
  ret i32 1
bb_if_5_2_false:
  br label %bb_if_5_2_end

bb_if_5_2_end:
  %r228 = add i32 0, 0
  br label %bb_while_5_14_cond

bb_while_5_14_cond:
  %r229 = phi i32 [ %r192, %bb_if_5_2_end ], [ %r252, %bb_while_5_14_whilestms ]
  %r230 = phi i32 [ %r228, %bb_if_5_2_end ], [ %r253, %bb_while_5_14_whilestms ]
  %r116 = icmp slt i32 %r230, %r196
  br i1 %r116, label %bb_while_5_14_whilestms, label %bb_while_5_14_bre

bb_while_5_14_whilestms:
  %r250 = phi i32 [ %r229, %bb_while_5_14_cond ]
  %r251 = phi i32 [ %r230, %bb_while_5_14_cond ]
  %r118 = mul i32 %r251, 3
  %r120 = add i32 %r118, %r198
  %r121 = sub i32 %r120, 1
  %r252 = add i32 %r121, 0
  %r123 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r252
  store i32 1, i32* %r123
  %r125 = add i32 %r251, 1
  %r253 = add i32 %r125, 0
  br label %bb_while_5_14_cond

bb_while_5_14_bre:
  %r233 = phi i32 [ %r229, %bb_while_5_14_cond ]
  %r234 = phi i32 [ %r230, %bb_while_5_14_cond ]
  %r235 = add i32 0, 0
  br label %bb_while_5_20_cond

bb_while_5_20_cond:
  %r231 = phi i32 [ %r233, %bb_while_5_14_bre ], [ %r206, %bb_while_5_20_whilestms ]
  %r232 = phi i32 [ %r235, %bb_while_5_14_bre ], [ %r207, %bb_while_5_20_whilestms ]
  %r128 = icmp slt i32 %r232, %r198
  br i1 %r128, label %bb_while_5_20_whilestms, label %bb_while_5_20_bre

bb_while_5_20_whilestms:
  %r204 = phi i32 [ %r231, %bb_while_5_20_cond ]
  %r205 = phi i32 [ %r232, %bb_while_5_20_cond ]
  %r130 = sub i32 %r196, 1
  %r131 = mul i32 %r130, 3
  %r133 = add i32 %r131, %r205
  %r206 = add i32 %r133, 0
  %r135 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r206
  store i32 1, i32* %r135
  %r137 = add i32 %r205, 1
  %r207 = add i32 %r137, 0
  br label %bb_while_5_20_cond

bb_while_5_20_bre:
  %r219 = phi i32 [ %r231, %bb_while_5_20_cond ]
  %r220 = phi i32 [ %r232, %bb_while_5_20_cond ]
  %r139 = sub i32 %r196, 2
  %r221 = add i32 %r139, 0
  br label %bb_while_5_26_cond

bb_while_5_26_cond:
  %r214 = phi i32 [ %r190, %bb_while_5_20_bre ], [ %r222, %bb_while_9_28_bre ]
  %r215 = phi i32 [ %r193, %bb_while_5_20_bre ], [ %r223, %bb_while_9_28_bre ]
  %r216 = phi i32 [ %r191, %bb_while_5_20_bre ], [ %r224, %bb_while_9_28_bre ]
  %r217 = phi i32 [ %r219, %bb_while_5_20_bre ], [ %r225, %bb_while_9_28_bre ]
  %r218 = phi i32 [ %r221, %bb_while_5_20_bre ], [ %r227, %bb_while_9_28_bre ]
  %r141 = sub i32 0, 1
  %r142 = icmp sgt i32 %r218, %r141
  br i1 %r142, label %bb_while_5_26_whilestms, label %bb_while_5_26_bre

bb_while_5_26_whilestms:
  %r208 = phi i32 [ %r214, %bb_while_5_26_cond ]
  %r209 = phi i32 [ %r215, %bb_while_5_26_cond ]
  %r210 = phi i32 [ %r216, %bb_while_5_26_cond ]
  %r211 = phi i32 [ %r217, %bb_while_5_26_cond ]
  %r212 = phi i32 [ %r218, %bb_while_5_26_cond ]
  %r144 = sub i32 %r198, 2
  %r213 = add i32 %r144, 0
  br label %bb_while_9_28_cond

bb_while_9_28_cond:
  %r245 = phi i32 [ %r208, %bb_while_5_26_whilestms ], [ %r243, %bb_while_9_28_whilestms ]
  %r246 = phi i32 [ %r213, %bb_while_5_26_whilestms ], [ %r244, %bb_while_9_28_whilestms ]
  %r247 = phi i32 [ %r210, %bb_while_5_26_whilestms ], [ %r242, %bb_while_9_28_whilestms ]
  %r248 = phi i32 [ %r211, %bb_while_5_26_whilestms ], [ %r241, %bb_while_9_28_whilestms ]
  %r249 = phi i32 [ %r212, %bb_while_5_26_whilestms ], [ %r240, %bb_while_9_28_whilestms ]
  %r146 = sub i32 0, 1
  %r147 = icmp sgt i32 %r246, %r146
  br i1 %r147, label %bb_while_9_28_whilestms, label %bb_while_9_28_bre

bb_while_9_28_whilestms:
  %r236 = phi i32 [ %r245, %bb_while_9_28_cond ]
  %r237 = phi i32 [ %r246, %bb_while_9_28_cond ]
  %r238 = phi i32 [ %r247, %bb_while_9_28_cond ]
  %r239 = phi i32 [ %r248, %bb_while_9_28_cond ]
  %r240 = phi i32 [ %r249, %bb_while_9_28_cond ]
  %r149 = mul i32 %r240, 3
  %r151 = add i32 %r149, %r237
  %r241 = add i32 %r151, 0
  %r153 = add i32 %r240, 1
  %r154 = mul i32 %r153, 3
  %r156 = add i32 %r154, %r237
  %r242 = add i32 %r156, 0
  %r158 = mul i32 %r240, 3
  %r160 = add i32 %r158, %r237
  %r161 = add i32 %r160, 1
  %r243 = add i32 %r161, 0
  %r163 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r241
  %r165 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r242
  %r166 = load i32, i32* %r165
  %r168 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r243
  %r169 = load i32, i32* %r168
  %r170 = add i32 %r166, %r169
  store i32 %r170, i32* %r163
  %r172 = sub i32 %r237, 1
  %r244 = add i32 %r172, 0
  br label %bb_while_9_28_cond

bb_while_9_28_bre:
  %r222 = phi i32 [ %r245, %bb_while_9_28_cond ]
  %r223 = phi i32 [ %r246, %bb_while_9_28_cond ]
  %r224 = phi i32 [ %r247, %bb_while_9_28_cond ]
  %r225 = phi i32 [ %r248, %bb_while_9_28_cond ]
  %r226 = phi i32 [ %r249, %bb_while_9_28_cond ]
  %r174 = sub i32 %r226, 1
  %r227 = add i32 %r174, 0
  br label %bb_while_5_26_cond

bb_while_5_26_bre:
  %r199 = phi i32 [ %r214, %bb_while_5_26_cond ]
  %r200 = phi i32 [ %r215, %bb_while_5_26_cond ]
  %r201 = phi i32 [ %r216, %bb_while_5_26_cond ]
  %r202 = phi i32 [ %r217, %bb_while_5_26_cond ]
  %r203 = phi i32 [ %r218, %bb_while_5_26_cond ]
  %r175 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 0
  %r176 = load i32, i32* %r175
  ret i32 %r176
}

define i32 @main( ) {
bb2:
  call void @_sysy_starttime(i32 40)
  %r256 = add i32 0, 0
  %r257 = add i32 0, 0
  %r258 = add i32 3, 0
  %r181 = call i32 @uniquePaths(i32 %r258, i32 %r258)
  %r259 = add i32 %r181, 0
  call void @_sysy_stoptime(i32 45)
  ret i32 %r259
}

