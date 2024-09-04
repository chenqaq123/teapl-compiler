declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r151 = add i32 0, 0
  %r152 = add i32 0, 0
  %r153 = add i32 0, 0
  %r154 = add i32 0, 0
  %r155 = add i32 0, 0
  %r156 = add i32 0, 0
  %r157 = add i32 0, 0
  call void @_sysy_starttime(i32 3)
  %r158 = add i32 0, 0
  %r159 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r160 = add i32 0, 0
  %r161 = add i32 0, 0
  br label %bb_while_5_9_cond

bb_while_5_9_cond:
  %r241 = phi i32 [ %r161, %bb1 ], [ %r240, %bb_while_5_9_whilestms ]
  %r104 = icmp slt i32 %r241, 10
  br i1 %r104, label %bb_while_5_9_whilestms, label %bb_while_5_9_bre

bb_while_5_9_whilestms:
  %r239 = phi i32 [ %r241, %bb_while_5_9_cond ]
  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r239
  %r108 = add i32 %r239, 1
  store i32 %r108, i32* %r106
  %r110 = add i32 %r239, 1
  %r240 = add i32 %r110, 0
  br label %bb_while_5_9_cond

bb_while_5_9_bre:
  %r230 = phi i32 [ %r241, %bb_while_5_9_cond ]
  %r231 = add i32 10, 0
  %r116 = call i32 @getint()
  %r232 = add i32 %r116, 0
  %r118 = sub i32 %r231, 1
  %r233 = add i32 %r118, 0
  %r234 = add i32 0, 0
  %r121 = add i32 %r233, %r234
  %r122 = sdiv i32 %r121, 2
  %r235 = add i32 %r122, 0
  %r236 = add i32 0, 0
  %r237 = add i32 0, 0
  %r238 = add i32 0, 0
  br label %bb_while_5_29_cond

bb_while_5_29_cond:
  %r222 = phi i32 [ %r232, %bb_while_5_9_bre ], [ %r179, %bb_if_9_31_end ]
  %r223 = phi i32 [ %r237, %bb_while_5_9_bre ], [ %r187, %bb_if_9_31_end ]
  %r224 = phi i32 [ %r236, %bb_while_5_9_bre ], [ %r181, %bb_if_9_31_end ]
  %r225 = phi i32 [ %r233, %bb_while_5_9_bre ], [ %r182, %bb_if_9_31_end ]
  %r226 = phi i32 [ %r238, %bb_while_5_9_bre ], [ %r183, %bb_if_9_31_end ]
  %r227 = phi i32 [ %r235, %bb_while_5_9_bre ], [ %r184, %bb_if_9_31_end ]
  %r228 = phi i32 [ %r234, %bb_while_5_9_bre ], [ %r185, %bb_if_9_31_end ]
  %r229 = phi i32 [ %r231, %bb_while_5_9_bre ], [ %r186, %bb_if_9_31_end ]
  %r126 = icmp slt i32 %r223, 10
  br i1 %r126, label %bb19_29_next, label %bb_while_5_29_bre

bb19_29_next:
  %r214 = phi i32 [ %r222, %bb_while_5_29_cond ]
  %r215 = phi i32 [ %r223, %bb_while_5_29_cond ]
  %r216 = phi i32 [ %r224, %bb_while_5_29_cond ]
  %r217 = phi i32 [ %r225, %bb_while_5_29_cond ]
  %r218 = phi i32 [ %r226, %bb_while_5_29_cond ]
  %r219 = phi i32 [ %r227, %bb_while_5_29_cond ]
  %r220 = phi i32 [ %r228, %bb_while_5_29_cond ]
  %r221 = phi i32 [ %r229, %bb_while_5_29_cond ]
  %r128 = icmp eq i32 %r216, 0
  br i1 %r128, label %bb_while_5_29_whilestms, label %bb_while_5_29_bre

bb_while_5_29_whilestms:
  %r206 = phi i32 [ %r214, %bb19_29_next ]
  %r207 = phi i32 [ %r215, %bb19_29_next ]
  %r208 = phi i32 [ %r216, %bb19_29_next ]
  %r209 = phi i32 [ %r217, %bb19_29_next ]
  %r210 = phi i32 [ %r218, %bb19_29_next ]
  %r211 = phi i32 [ %r219, %bb19_29_next ]
  %r212 = phi i32 [ %r220, %bb19_29_next ]
  %r213 = phi i32 [ %r221, %bb19_29_next ]
  %r130 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r207
  %r131 = load i32, i32* %r130
  %r133 = icmp eq i32 %r131, %r206
  br i1 %r133, label %bb_if_9_31_true, label %bb_if_9_31_false

bb_if_9_31_true:
  %r196 = phi i32 [ %r206, %bb_while_5_29_whilestms ]
  %r197 = phi i32 [ %r207, %bb_while_5_29_whilestms ]
  %r198 = phi i32 [ %r208, %bb_while_5_29_whilestms ]
  %r199 = phi i32 [ %r209, %bb_while_5_29_whilestms ]
  %r200 = phi i32 [ %r210, %bb_while_5_29_whilestms ]
  %r201 = phi i32 [ %r211, %bb_while_5_29_whilestms ]
  %r202 = phi i32 [ %r212, %bb_while_5_29_whilestms ]
  %r203 = phi i32 [ %r213, %bb_while_5_29_whilestms ]
  %r204 = add i32 1, 0
  %r205 = add i32 %r197, 0
  br label %bb_if_9_31_end

bb_if_9_31_false:
  %r188 = phi i32 [ %r206, %bb_while_5_29_whilestms ]
  %r189 = phi i32 [ %r207, %bb_while_5_29_whilestms ]
  %r190 = phi i32 [ %r208, %bb_while_5_29_whilestms ]
  %r191 = phi i32 [ %r209, %bb_while_5_29_whilestms ]
  %r192 = phi i32 [ %r210, %bb_while_5_29_whilestms ]
  %r193 = phi i32 [ %r211, %bb_while_5_29_whilestms ]
  %r194 = phi i32 [ %r212, %bb_while_5_29_whilestms ]
  %r195 = phi i32 [ %r213, %bb_while_5_29_whilestms ]
  br label %bb_if_9_31_end

bb_if_9_31_end:
  %r179 = phi i32 [ %r196, %bb_if_9_31_true ], [ %r188, %bb_if_9_31_false ]
  %r180 = phi i32 [ %r197, %bb_if_9_31_true ], [ %r189, %bb_if_9_31_false ]
  %r181 = phi i32 [ %r204, %bb_if_9_31_true ], [ %r190, %bb_if_9_31_false ]
  %r182 = phi i32 [ %r199, %bb_if_9_31_true ], [ %r191, %bb_if_9_31_false ]
  %r183 = phi i32 [ %r205, %bb_if_9_31_true ], [ %r192, %bb_if_9_31_false ]
  %r184 = phi i32 [ %r201, %bb_if_9_31_true ], [ %r193, %bb_if_9_31_false ]
  %r185 = phi i32 [ %r202, %bb_if_9_31_true ], [ %r194, %bb_if_9_31_false ]
  %r186 = phi i32 [ %r203, %bb_if_9_31_true ], [ %r195, %bb_if_9_31_false ]
  %r136 = add i32 %r180, 1
  %r187 = add i32 %r136, 0
  br label %bb_while_5_29_cond

bb_while_5_29_bre:
  %r171 = phi i32 [ %r222, %bb_while_5_29_cond ], [ %r214, %bb19_29_next ]
  %r172 = phi i32 [ %r223, %bb_while_5_29_cond ], [ %r215, %bb19_29_next ]
  %r173 = phi i32 [ %r224, %bb_while_5_29_cond ], [ %r216, %bb19_29_next ]
  %r174 = phi i32 [ %r225, %bb_while_5_29_cond ], [ %r217, %bb19_29_next ]
  %r175 = phi i32 [ %r226, %bb_while_5_29_cond ], [ %r218, %bb19_29_next ]
  %r176 = phi i32 [ %r227, %bb_while_5_29_cond ], [ %r219, %bb19_29_next ]
  %r177 = phi i32 [ %r228, %bb_while_5_29_cond ], [ %r220, %bb19_29_next ]
  %r178 = phi i32 [ %r229, %bb_while_5_29_cond ], [ %r221, %bb19_29_next ]
  %r138 = icmp eq i32 %r173, 1
  br i1 %r138, label %bb_if_5_40_true, label %bb_if_5_40_false

bb_if_5_40_true:
  %r242 = phi i32 [ %r171, %bb_while_5_29_bre ]
  %r243 = phi i32 [ %r172, %bb_while_5_29_bre ]
  %r244 = phi i32 [ %r173, %bb_while_5_29_bre ]
  %r245 = phi i32 [ %r174, %bb_while_5_29_bre ]
  %r246 = phi i32 [ %r175, %bb_while_5_29_bre ]
  %r247 = phi i32 [ %r176, %bb_while_5_29_bre ]
  %r248 = phi i32 [ %r177, %bb_while_5_29_bre ]
  %r249 = phi i32 [ %r178, %bb_while_5_29_bre ]
  call void @putint(i32 %r246)
  br label %bb_if_5_40_end

bb_if_5_40_false:
  %r162 = phi i32 [ %r171, %bb_while_5_29_bre ]
  %r163 = phi i32 [ %r172, %bb_while_5_29_bre ]
  %r164 = phi i32 [ %r173, %bb_while_5_29_bre ]
  %r165 = phi i32 [ %r174, %bb_while_5_29_bre ]
  %r166 = phi i32 [ %r175, %bb_while_5_29_bre ]
  %r167 = phi i32 [ %r176, %bb_while_5_29_bre ]
  %r168 = phi i32 [ %r177, %bb_while_5_29_bre ]
  %r169 = phi i32 [ %r178, %bb_while_5_29_bre ]
  %r170 = add i32 0, 0
  call void @putint(i32 %r170)
  br label %bb_if_5_40_end

bb_if_5_40_end:
  %r250 = phi i32 [ %r242, %bb_if_5_40_true ], [ %r170, %bb_if_5_40_false ]
  %r251 = phi i32 [ %r243, %bb_if_5_40_true ], [ %r163, %bb_if_5_40_false ]
  %r252 = phi i32 [ %r244, %bb_if_5_40_true ], [ %r164, %bb_if_5_40_false ]
  %r253 = phi i32 [ %r245, %bb_if_5_40_true ], [ %r165, %bb_if_5_40_false ]
  %r254 = phi i32 [ %r246, %bb_if_5_40_true ], [ %r166, %bb_if_5_40_false ]
  %r255 = phi i32 [ %r247, %bb_if_5_40_true ], [ %r167, %bb_if_5_40_false ]
  %r256 = phi i32 [ %r248, %bb_if_5_40_true ], [ %r168, %bb_if_5_40_false ]
  %r257 = phi i32 [ %r249, %bb_if_5_40_true ], [ %r169, %bb_if_5_40_false ]
  %r258 = add i32 10, 0
  call void @putch(i32 %r258)
  call void @_sysy_stoptime(i32 53)
  ret i32 0
}

