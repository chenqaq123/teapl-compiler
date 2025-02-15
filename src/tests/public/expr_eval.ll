declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 0
@other = global i32 0
@cur_token = global i32 0
define i32 @next_char( ) {
bb1:
  %r100 = call i32 @getch()
  store i32 %r100, i32* @last_char
  %r101 = load i32, i32* @last_char
  ret i32 %r101
}

define i32 @is_space( i32 %r102 ) {
bb2:
  %r316 = add i32 0, 0
  %r317 = add i32 %r102, 0
  %r105 = icmp eq i32 %r317, 32
  br i1 %r105, label %bb_if_5_16_true, label %bb20_16_next

bb20_16_next:
  %r107 = icmp eq i32 %r317, 10
  br i1 %r107, label %bb_if_5_16_true, label %bb_if_5_16_false

bb_if_5_16_true:
  ret i32 1
bb_if_5_16_false:
  ret i32 0
}

define i32 @is_num( i32 %r108 ) {
bb3:
  %r319 = add i32 0, 0
  %r320 = add i32 %r108, 0
  %r111 = icmp sge i32 %r320, 48
  br i1 %r111, label %bb20_28_next, label %bb_if_5_28_false

bb20_28_next:
  %r113 = icmp sle i32 %r320, 57
  br i1 %r113, label %bb_if_5_28_true, label %bb_if_5_28_false

bb_if_5_28_true:
  ret i32 1
bb_if_5_28_false:
  ret i32 0
}

define i32 @next_token( ) {
bb4:
  br label %bb_while_5_40_cond

bb_while_5_40_cond:
  %r114 = load i32, i32* @last_char
  %r115 = call i32 @is_space(i32 %r114)
  %r116 = icmp ne i32 %r115, 0
  br i1 %r116, label %bb_while_5_40_whilestms, label %bb_while_5_40_bre

bb_while_5_40_whilestms:
  %r117 = call i32 @next_char()
  br label %bb_while_5_40_cond

bb_while_5_40_bre:
  %r118 = load i32, i32* @last_char
  %r119 = call i32 @is_num(i32 %r118)
  %r120 = icmp ne i32 %r119, 0
  br i1 %r120, label %bb_if_5_44_true, label %bb_if_5_44_false

bb_if_5_44_true:
  %r121 = load i32, i32* @last_char
  %r122 = sub i32 %r121, 48
  store i32 %r122, i32* @num
  br label %bb_while_9_47_cond

bb_while_9_47_cond:
  %r123 = call i32 @next_char()
  %r124 = call i32 @is_num(i32 %r123)
  %r125 = icmp ne i32 %r124, 0
  br i1 %r125, label %bb_while_9_47_whilestms, label %bb_while_9_47_bre

bb_while_9_47_whilestms:
  %r126 = load i32, i32* @num
  %r127 = mul i32 %r126, 10
  %r128 = load i32, i32* @last_char
  %r129 = add i32 %r127, %r128
  %r130 = sub i32 %r129, 48
  store i32 %r130, i32* @num
  br label %bb_while_9_47_cond

bb_while_9_47_bre:
  %r131 = load i32, i32* @TOKEN_NUM
  store i32 %r131, i32* @cur_token
  br label %bb_if_5_44_end

bb_if_5_44_false:
  %r132 = load i32, i32* @last_char
  store i32 %r132, i32* @other
  %r133 = call i32 @next_char()
  %r134 = load i32, i32* @TOKEN_OTHER
  store i32 %r134, i32* @cur_token
  br label %bb_if_5_44_end

bb_if_5_44_end:
  %r135 = load i32, i32* @cur_token
  ret i32 %r135
}

define i32 @panic( ) {
bb5:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  %r136 = sub i32 0, 1
  ret i32 %r136
}

define i32 @get_op_prec( i32 %r137 ) {
bb6:
  %r322 = add i32 0, 0
  %r323 = add i32 %r137, 0
  %r140 = icmp eq i32 %r323, 43
  br i1 %r140, label %bb_if_5_77_true, label %bb21_77_next

bb21_77_next:
  %r142 = icmp eq i32 %r323, 45
  br i1 %r142, label %bb_if_5_77_true, label %bb_if_5_77_false

bb_if_5_77_true:
  ret i32 10
bb_if_5_77_false:
  br label %bb_if_5_77_end

bb_if_5_77_end:
  %r144 = icmp eq i32 %r323, 42
  br i1 %r144, label %bb_if_5_80_true, label %bb21_80_next

bb21_80_next:
  %r146 = icmp eq i32 %r323, 47
  br i1 %r146, label %bb_if_5_80_true, label %bb33_80_next

bb33_80_next:
  %r148 = icmp eq i32 %r323, 37
  br i1 %r148, label %bb_if_5_80_true, label %bb_if_5_80_false

bb_if_5_80_true:
  ret i32 20
bb_if_5_80_false:
  br label %bb_if_5_80_end

bb_if_5_80_end:
  ret i32 0
}

define void @stack_push( i32* %r149, i32 %r150 ) {
bb7:
  %r326 = add i32 0, 0
  %r327 = add i32 %r150, 0
  %r152 = getelementptr i32, i32* %r149, i32 0
  %r153 = getelementptr i32, i32* %r149, i32 0
  %r154 = load i32, i32* %r153
  %r155 = add i32 %r154, 1
  store i32 %r155, i32* %r152
  %r328 = add i32 0, 0
  %r157 = getelementptr i32, i32* %r149, i32 0
  %r158 = load i32, i32* %r157
  %r329 = add i32 %r158, 0
  %r160 = getelementptr i32, i32* %r149, i32 %r329
  store i32 %r327, i32* %r160
  ret void
}

define i32 @stack_pop( i32* %r162 ) {
bb8:
  %r332 = add i32 0, 0
  %r164 = getelementptr i32, i32* %r162, i32 0
  %r165 = load i32, i32* %r164
  %r333 = add i32 %r165, 0
  %r334 = add i32 0, 0
  %r168 = getelementptr i32, i32* %r162, i32 %r333
  %r169 = load i32, i32* %r168
  %r335 = add i32 %r169, 0
  %r170 = getelementptr i32, i32* %r162, i32 0
  %r171 = getelementptr i32, i32* %r162, i32 0
  %r172 = load i32, i32* %r171
  %r173 = sub i32 %r172, 1
  store i32 %r173, i32* %r170
  ret i32 %r335
}

define i32 @stack_peek( i32* %r175 ) {
bb9:
  %r337 = add i32 0, 0
  %r177 = getelementptr i32, i32* %r175, i32 0
  %r178 = load i32, i32* %r177
  %r338 = add i32 %r178, 0
  %r180 = getelementptr i32, i32* %r175, i32 %r338
  %r181 = load i32, i32* %r180
  ret i32 %r181
}

define i32 @stack_size( i32* %r182 ) {
bb10:
  %r183 = getelementptr i32, i32* %r182, i32 0
  %r184 = load i32, i32* %r183
  ret i32 %r184
}

define i32 @mod( i32 %r185, i32 %r187 ) {
bb11:
  %r341 = add i32 0, 0
  %r342 = add i32 %r185, 0
  %r343 = add i32 0, 0
  %r344 = add i32 %r187, 0
  %r192 = sdiv i32 %r342, %r344
  %r194 = mul i32 %r192, %r344
  %r195 = sub i32 %r342, %r194
  ret i32 %r195
}

define i32 @eval_op( i32 %r196, i32 %r198, i32 %r200 ) {
bb12:
  %r348 = add i32 0, 0
  %r349 = add i32 %r196, 0
  %r350 = add i32 0, 0
  %r351 = add i32 %r198, 0
  %r352 = add i32 0, 0
  %r353 = add i32 %r200, 0
  %r203 = icmp eq i32 %r349, 43
  br i1 %r203, label %bb_if_5_120_true, label %bb_if_5_120_false

bb_if_5_120_true:
  %r206 = add i32 %r351, %r353
  ret i32 %r206
bb_if_5_120_false:
  br label %bb_if_5_120_end

bb_if_5_120_end:
  %r208 = icmp eq i32 %r349, 45
  br i1 %r208, label %bb_if_5_125_true, label %bb_if_5_125_false

bb_if_5_125_true:
  %r211 = sub i32 %r351, %r353
  ret i32 %r211
bb_if_5_125_false:
  br label %bb_if_5_125_end

bb_if_5_125_end:
  %r213 = icmp eq i32 %r349, 42
  br i1 %r213, label %bb_if_5_130_true, label %bb_if_5_130_false

bb_if_5_130_true:
  %r216 = mul i32 %r351, %r353
  ret i32 %r216
bb_if_5_130_false:
  br label %bb_if_5_130_end

bb_if_5_130_end:
  %r218 = icmp eq i32 %r349, 47
  br i1 %r218, label %bb_if_5_135_true, label %bb_if_5_135_false

bb_if_5_135_true:
  %r221 = sdiv i32 %r351, %r353
  ret i32 %r221
bb_if_5_135_false:
  br label %bb_if_5_135_end

bb_if_5_135_end:
  %r223 = icmp eq i32 %r349, 37
  br i1 %r223, label %bb_if_5_140_true, label %bb_if_5_140_false

bb_if_5_140_true:
  %r226 = call i32 @mod(i32 %r351, i32 %r353)
  ret i32 %r226
bb_if_5_140_false:
  br label %bb_if_5_140_end

bb_if_5_140_end:
  ret i32 0
}

define i32 @eval( ) {
bb13:
  %r362 = add i32 0, 0
  %r363 = add i32 0, 0
  %r364 = add i32 0, 0
  %r365 = add i32 0, 0
  %r366 = add i32 0, 0
  %r367 = add i32 0, 0
  %r368 = add i32 0, 0
  %r227 = alloca [ 256 x i32 ]
  %r228 = alloca [ 256 x i32 ]
  %r369 = add i32 0, 0
  %r370 = add i32 0, 0
  br label %bb_while_5_153_cond

bb_while_5_153_cond:
  %r446 = phi i32 [ %r370, %bb13 ], [ %r434, %bb_while_5_153_whilestms ]
  %r231 = icmp slt i32 %r446, 256
  br i1 %r231, label %bb_while_5_153_whilestms, label %bb_while_5_153_bre

bb_while_5_153_whilestms:
  %r433 = phi i32 [ %r446, %bb_while_5_153_cond ]
  %r233 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 %r433
  store i32 0, i32* %r233
  %r235 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 %r433
  store i32 0, i32* %r235
  %r237 = add i32 %r433, 1
  %r434 = add i32 %r237, 0
  br label %bb_while_5_153_cond

bb_while_5_153_bre:
  %r459 = phi i32 [ %r446, %bb_while_5_153_cond ]
  %r238 = load i32, i32* @cur_token
  %r239 = load i32, i32* @TOKEN_NUM
  %r240 = icmp ne i32 %r238, %r239
  br i1 %r240, label %bb_if_5_160_true, label %bb_if_5_160_false

bb_if_5_160_true:
  %r468 = phi i32 [ %r459, %bb_while_5_153_bre ]
  %r241 = call i32 @panic()
  ret i32 %r241
bb_if_5_160_false:
  %r445 = phi i32 [ %r459, %bb_while_5_153_bre ]
  br label %bb_if_5_160_end

bb_if_5_160_end:
  %r447 = phi i32 [ %r445, %bb_if_5_160_false ]
  %r242 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r243 = load i32, i32* @num
  call void @stack_push(i32* %r242, i32 %r243)
  %r244 = call i32 @next_token()
  br label %bb_while_5_167_cond

bb_while_5_167_cond:
  %r448 = phi i32 [ %r368, %bb_if_5_160_end ], [ %r376, %bb_if_9_185_end ]
  %r449 = phi i32 [ %r365, %bb_if_5_160_end ], [ %r377, %bb_if_9_185_end ]
  %r450 = phi i32 [ %r366, %bb_if_5_160_end ], [ %r378, %bb_if_9_185_end ]
  %r451 = phi i32 [ %r367, %bb_if_5_160_end ], [ %r379, %bb_if_9_185_end ]
  %r452 = phi i32 [ %r447, %bb_if_5_160_end ], [ %r380, %bb_if_9_185_end ]
  %r245 = load i32, i32* @cur_token
  %r246 = load i32, i32* @TOKEN_OTHER
  %r247 = icmp eq i32 %r245, %r246
  br i1 %r247, label %bb_while_5_167_whilestms, label %bb_while_5_167_bre

bb_while_5_167_whilestms:
  %r453 = phi i32 [ %r448, %bb_while_5_167_cond ]
  %r454 = phi i32 [ %r449, %bb_while_5_167_cond ]
  %r455 = phi i32 [ %r450, %bb_while_5_167_cond ]
  %r456 = phi i32 [ %r451, %bb_while_5_167_cond ]
  %r457 = phi i32 [ %r452, %bb_while_5_167_cond ]
  %r249 = load i32, i32* @other
  %r458 = add i32 %r249, 0
  %r251 = call i32 @get_op_prec(i32 %r458)
  %r252 = icmp eq i32 %r251, 0
  br i1 %r252, label %bb_if_9_171_true, label %bb_if_9_171_false

bb_if_9_171_true:
  %r428 = phi i32 [ %r458, %bb_while_5_167_whilestms ]
  %r429 = phi i32 [ %r454, %bb_while_5_167_whilestms ]
  %r430 = phi i32 [ %r455, %bb_while_5_167_whilestms ]
  %r431 = phi i32 [ %r456, %bb_while_5_167_whilestms ]
  %r432 = phi i32 [ %r457, %bb_while_5_167_whilestms ]
  br label %bb_while_5_167_bre

bb_if_9_171_false:
  %r469 = phi i32 [ %r458, %bb_while_5_167_whilestms ]
  %r470 = phi i32 [ %r454, %bb_while_5_167_whilestms ]
  %r471 = phi i32 [ %r455, %bb_while_5_167_whilestms ]
  %r472 = phi i32 [ %r456, %bb_while_5_167_whilestms ]
  %r473 = phi i32 [ %r457, %bb_while_5_167_whilestms ]
  br label %bb_if_9_171_end

bb_if_9_171_end:
  %r423 = phi i32 [ %r469, %bb_if_9_171_false ]
  %r424 = phi i32 [ %r470, %bb_if_9_171_false ]
  %r425 = phi i32 [ %r471, %bb_if_9_171_false ]
  %r426 = phi i32 [ %r472, %bb_if_9_171_false ]
  %r427 = phi i32 [ %r473, %bb_if_9_171_false ]
  %r253 = call i32 @next_token()
  br label %bb_while_9_175_cond

bb_while_9_175_cond:
  %r435 = phi i32 [ %r423, %bb_if_9_171_end ], [ %r415, %bb_while_9_175_whilestms ]
  %r436 = phi i32 [ %r424, %bb_if_9_171_end ], [ %r422, %bb_while_9_175_whilestms ]
  %r437 = phi i32 [ %r425, %bb_if_9_171_end ], [ %r421, %bb_while_9_175_whilestms ]
  %r438 = phi i32 [ %r426, %bb_if_9_171_end ], [ %r420, %bb_while_9_175_whilestms ]
  %r439 = phi i32 [ %r427, %bb_if_9_171_end ], [ %r419, %bb_while_9_175_whilestms ]
  %r254 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0
  %r255 = call i32 @stack_size(i32* %r254)
  %r256 = icmp ne i32 %r255, 0
  br i1 %r256, label %bb38_175_next, label %bb_while_9_175_bre

bb38_175_next:
  %r440 = phi i32 [ %r435, %bb_while_9_175_cond ]
  %r441 = phi i32 [ %r436, %bb_while_9_175_cond ]
  %r442 = phi i32 [ %r437, %bb_while_9_175_cond ]
  %r443 = phi i32 [ %r438, %bb_while_9_175_cond ]
  %r444 = phi i32 [ %r439, %bb_while_9_175_cond ]
  %r257 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0
  %r258 = call i32 @stack_peek(i32* %r257)
  %r259 = call i32 @get_op_prec(i32 %r258)
  %r261 = call i32 @get_op_prec(i32 %r440)
  %r262 = icmp sge i32 %r259, %r261
  br i1 %r262, label %bb_while_9_175_whilestms, label %bb_while_9_175_bre

bb_while_9_175_whilestms:
  %r415 = phi i32 [ %r440, %bb38_175_next ]
  %r416 = phi i32 [ %r441, %bb38_175_next ]
  %r417 = phi i32 [ %r442, %bb38_175_next ]
  %r418 = phi i32 [ %r443, %bb38_175_next ]
  %r419 = phi i32 [ %r444, %bb38_175_next ]
  %r264 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0
  %r265 = call i32 @stack_pop(i32* %r264)
  %r420 = add i32 %r265, 0
  %r267 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r268 = call i32 @stack_pop(i32* %r267)
  %r421 = add i32 %r268, 0
  %r270 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r271 = call i32 @stack_pop(i32* %r270)
  %r422 = add i32 %r271, 0
  %r272 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r276 = call i32 @eval_op(i32 %r420, i32 %r422, i32 %r421)
  call void @stack_push(i32* %r272, i32 %r276)
  br label %bb_while_9_175_cond

bb_while_9_175_bre:
  %r410 = phi i32 [ %r435, %bb_while_9_175_cond ], [ %r440, %bb38_175_next ]
  %r411 = phi i32 [ %r436, %bb_while_9_175_cond ], [ %r441, %bb38_175_next ]
  %r412 = phi i32 [ %r437, %bb_while_9_175_cond ], [ %r442, %bb38_175_next ]
  %r413 = phi i32 [ %r438, %bb_while_9_175_cond ], [ %r443, %bb38_175_next ]
  %r414 = phi i32 [ %r439, %bb_while_9_175_cond ], [ %r444, %bb38_175_next ]
  %r277 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0
  call void @stack_push(i32* %r277, i32 %r410)
  %r279 = load i32, i32* @cur_token
  %r280 = load i32, i32* @TOKEN_NUM
  %r281 = icmp ne i32 %r279, %r280
  br i1 %r281, label %bb_if_9_185_true, label %bb_if_9_185_false

bb_if_9_185_true:
  %r405 = phi i32 [ %r410, %bb_while_9_175_bre ]
  %r406 = phi i32 [ %r411, %bb_while_9_175_bre ]
  %r407 = phi i32 [ %r412, %bb_while_9_175_bre ]
  %r408 = phi i32 [ %r413, %bb_while_9_175_bre ]
  %r409 = phi i32 [ %r414, %bb_while_9_175_bre ]
  %r282 = call i32 @panic()
  ret i32 %r282
bb_if_9_185_false:
  %r381 = phi i32 [ %r410, %bb_while_9_175_bre ]
  %r382 = phi i32 [ %r411, %bb_while_9_175_bre ]
  %r383 = phi i32 [ %r412, %bb_while_9_175_bre ]
  %r384 = phi i32 [ %r413, %bb_while_9_175_bre ]
  %r385 = phi i32 [ %r414, %bb_while_9_175_bre ]
  br label %bb_if_9_185_end

bb_if_9_185_end:
  %r376 = phi i32 [ %r381, %bb_if_9_185_false ]
  %r377 = phi i32 [ %r382, %bb_if_9_185_false ]
  %r378 = phi i32 [ %r383, %bb_if_9_185_false ]
  %r379 = phi i32 [ %r384, %bb_if_9_185_false ]
  %r380 = phi i32 [ %r385, %bb_if_9_185_false ]
  %r283 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r284 = load i32, i32* @num
  call void @stack_push(i32* %r283, i32 %r284)
  %r285 = call i32 @next_token()
  br label %bb_while_5_167_cond

bb_while_5_167_bre:
  %r371 = phi i32 [ %r448, %bb_while_5_167_cond ], [ %r428, %bb_if_9_171_true ]
  %r372 = phi i32 [ %r449, %bb_while_5_167_cond ], [ %r429, %bb_if_9_171_true ]
  %r373 = phi i32 [ %r450, %bb_while_5_167_cond ], [ %r430, %bb_if_9_171_true ]
  %r374 = phi i32 [ %r451, %bb_while_5_167_cond ], [ %r431, %bb_if_9_171_true ]
  %r375 = phi i32 [ %r452, %bb_while_5_167_cond ], [ %r432, %bb_if_9_171_true ]
  %r286 = call i32 @next_token()
  br label %bb_while_5_193_cond

bb_while_5_193_cond:
  %r397 = phi i32 [ %r371, %bb_while_5_167_bre ], [ %r386, %bb_while_5_193_whilestms ]
  %r398 = phi i32 [ %r362, %bb_while_5_167_bre ], [ %r396, %bb_while_5_193_whilestms ]
  %r399 = phi i32 [ %r372, %bb_while_5_167_bre ], [ %r388, %bb_while_5_193_whilestms ]
  %r400 = phi i32 [ %r363, %bb_while_5_167_bre ], [ %r395, %bb_while_5_193_whilestms ]
  %r401 = phi i32 [ %r364, %bb_while_5_167_bre ], [ %r394, %bb_while_5_193_whilestms ]
  %r402 = phi i32 [ %r373, %bb_while_5_167_bre ], [ %r391, %bb_while_5_193_whilestms ]
  %r403 = phi i32 [ %r374, %bb_while_5_167_bre ], [ %r392, %bb_while_5_193_whilestms ]
  %r404 = phi i32 [ %r375, %bb_while_5_167_bre ], [ %r393, %bb_while_5_193_whilestms ]
  %r287 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0
  %r288 = call i32 @stack_size(i32* %r287)
  %r289 = icmp ne i32 %r288, 0
  br i1 %r289, label %bb_while_5_193_whilestms, label %bb_while_5_193_bre

bb_while_5_193_whilestms:
  %r386 = phi i32 [ %r397, %bb_while_5_193_cond ]
  %r387 = phi i32 [ %r398, %bb_while_5_193_cond ]
  %r388 = phi i32 [ %r399, %bb_while_5_193_cond ]
  %r389 = phi i32 [ %r400, %bb_while_5_193_cond ]
  %r390 = phi i32 [ %r401, %bb_while_5_193_cond ]
  %r391 = phi i32 [ %r402, %bb_while_5_193_cond ]
  %r392 = phi i32 [ %r403, %bb_while_5_193_cond ]
  %r393 = phi i32 [ %r404, %bb_while_5_193_cond ]
  %r291 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0
  %r292 = call i32 @stack_pop(i32* %r291)
  %r394 = add i32 %r292, 0
  %r294 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r295 = call i32 @stack_pop(i32* %r294)
  %r395 = add i32 %r295, 0
  %r297 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r298 = call i32 @stack_pop(i32* %r297)
  %r396 = add i32 %r298, 0
  %r299 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r303 = call i32 @eval_op(i32 %r394, i32 %r396, i32 %r395)
  call void @stack_push(i32* %r299, i32 %r303)
  br label %bb_while_5_193_cond

bb_while_5_193_bre:
  %r460 = phi i32 [ %r397, %bb_while_5_193_cond ]
  %r461 = phi i32 [ %r398, %bb_while_5_193_cond ]
  %r462 = phi i32 [ %r399, %bb_while_5_193_cond ]
  %r463 = phi i32 [ %r400, %bb_while_5_193_cond ]
  %r464 = phi i32 [ %r401, %bb_while_5_193_cond ]
  %r465 = phi i32 [ %r402, %bb_while_5_193_cond ]
  %r466 = phi i32 [ %r403, %bb_while_5_193_cond ]
  %r467 = phi i32 [ %r404, %bb_while_5_193_cond ]
  %r304 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0
  %r305 = call i32 @stack_peek(i32* %r304)
  ret i32 %r305
}

define i32 @main( ) {
bb14:
  call void @_sysy_starttime(i32 205)
  %r475 = add i32 0, 0
  %r307 = call i32 @getint()
  %r476 = add i32 %r307, 0
  %r308 = call i32 @getch()
  %r309 = call i32 @next_token()
  br label %bb_while_5_209_cond

bb_while_5_209_cond:
  %r478 = phi i32 [ %r476, %bb14 ], [ %r480, %bb_while_5_209_whilestms ]
  %r311 = icmp ne i32 %r478, 0
  br i1 %r311, label %bb_while_5_209_whilestms, label %bb_while_5_209_bre

bb_while_5_209_whilestms:
  %r479 = phi i32 [ %r478, %bb_while_5_209_cond ]
  %r312 = call i32 @eval()
  call void @putint(i32 %r312)
  call void @putch(i32 10)
  %r314 = sub i32 %r479, 1
  %r480 = add i32 %r314, 0
  br label %bb_while_5_209_cond

bb_while_5_209_bre:
  %r477 = phi i32 [ %r478, %bb_while_5_209_cond ]
  call void @_sysy_stoptime(i32 214)
  ret i32 0
}

