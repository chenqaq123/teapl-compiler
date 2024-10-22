declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@INF = global i32 65535
%array2D = type { [16 x i32 ] }
@e = global [ 16 x %array2D ] zeroinitializer
@book = global [ 16 x i32 ] zeroinitializer
@dis = global [ 16 x i32 ] zeroinitializer
@n = global i32 0
@m = global i32 0
@v1 = global i32 0
@v2 = global i32 0
@w = global i32 0
define void @Dijkstra( ) {
bb1:
  %r242 = add i32 0, 0
  %r243 = add i32 0, 0
  %r244 = add i32 0, 0
  %r245 = add i32 0, 0
  %r246 = add i32 0, 0
  %r247 = add i32 1, 0
  br label %bb_while_5_18_cond

bb_while_5_18_cond:
  %r254 = phi i32 [ %r247, %bb1 ], [ %r351, %bb_while_5_18_whilestms ]
  %r102 = load i32, i32* @n
  %r103 = icmp sle i32 %r254, %r102
  br i1 %r103, label %bb_while_5_18_whilestms, label %bb_while_5_18_bre

bb_while_5_18_whilestms:
  %r350 = phi i32 [ %r254, %bb_while_5_18_cond ]
  %r105 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r350
  %r106 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 1
  %r107 = getelementptr %array2D, %array2D* %r106, i32 0, i32 0
  %r109 = getelementptr [16 x i32 ], [16 x i32 ]* %r107, i32 0, i32 %r350
  %r110 = load i32, i32* %r109
  store i32 %r110, i32* %r105
  %r112 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r350
  store i32 0, i32* %r112
  %r114 = add i32 %r350, 1
  %r351 = add i32 %r114, 0
  br label %bb_while_5_18_cond

bb_while_5_18_bre:
  %r288 = phi i32 [ %r254, %bb_while_5_18_cond ]
  %r115 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 1
  store i32 1, i32* %r115
  %r289 = add i32 1, 0
  br label %bb_while_5_26_cond

bb_while_5_26_cond:
  %r278 = phi i32 [ %r289, %bb_while_5_18_bre ], [ %r344, %bb_while_9_39_bre ]
  %r279 = phi i32 [ %r242, %bb_while_5_18_bre ], [ %r340, %bb_while_9_39_bre ]
  %r280 = phi i32 [ %r243, %bb_while_5_18_bre ], [ %r341, %bb_while_9_39_bre ]
  %r281 = phi i32 [ %r244, %bb_while_5_18_bre ], [ %r342, %bb_while_9_39_bre ]
  %r282 = phi i32 [ %r245, %bb_while_5_18_bre ], [ %r343, %bb_while_9_39_bre ]
  %r117 = load i32, i32* @n
  %r118 = sub i32 %r117, 1
  %r119 = icmp sle i32 %r278, %r118
  br i1 %r119, label %bb_while_5_26_whilestms, label %bb_while_5_26_bre

bb_while_5_26_whilestms:
  %r265 = phi i32 [ %r278, %bb_while_5_26_cond ]
  %r266 = phi i32 [ %r279, %bb_while_5_26_cond ]
  %r267 = phi i32 [ %r280, %bb_while_5_26_cond ]
  %r268 = phi i32 [ %r281, %bb_while_5_26_cond ]
  %r269 = phi i32 [ %r282, %bb_while_5_26_cond ]
  %r121 = load i32, i32* @INF
  %r270 = add i32 %r121, 0
  %r271 = add i32 0, 0
  %r272 = add i32 1, 0
  br label %bb_while_9_30_cond

bb_while_9_30_cond:
  %r255 = phi i32 [ %r265, %bb_while_5_26_whilestms ], [ %r296, %bb_if_13_31_end ]
  %r256 = phi i32 [ %r266, %bb_while_5_26_whilestms ], [ %r297, %bb_if_13_31_end ]
  %r257 = phi i32 [ %r272, %bb_while_5_26_whilestms ], [ %r301, %bb_if_13_31_end ]
  %r258 = phi i32 [ %r271, %bb_while_5_26_whilestms ], [ %r299, %bb_if_13_31_end ]
  %r259 = phi i32 [ %r270, %bb_while_5_26_whilestms ], [ %r300, %bb_if_13_31_end ]
  %r125 = load i32, i32* @n
  %r126 = icmp sle i32 %r257, %r125
  br i1 %r126, label %bb_while_9_30_whilestms, label %bb_while_9_30_bre

bb_while_9_30_whilestms:
  %r319 = phi i32 [ %r255, %bb_while_9_30_cond ]
  %r320 = phi i32 [ %r256, %bb_while_9_30_cond ]
  %r321 = phi i32 [ %r257, %bb_while_9_30_cond ]
  %r322 = phi i32 [ %r258, %bb_while_9_30_cond ]
  %r323 = phi i32 [ %r259, %bb_while_9_30_cond ]
  %r129 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r321
  %r130 = load i32, i32* %r129
  %r131 = icmp sgt i32 %r323, %r130
  br i1 %r131, label %bb37_31_next, label %bb_if_13_31_false

bb37_31_next:
  %r314 = phi i32 [ %r319, %bb_while_9_30_whilestms ]
  %r315 = phi i32 [ %r320, %bb_while_9_30_whilestms ]
  %r316 = phi i32 [ %r321, %bb_while_9_30_whilestms ]
  %r317 = phi i32 [ %r322, %bb_while_9_30_whilestms ]
  %r318 = phi i32 [ %r323, %bb_while_9_30_whilestms ]
  %r133 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r316
  %r134 = load i32, i32* %r133
  %r135 = icmp eq i32 %r134, 0
  br i1 %r135, label %bb_if_13_31_true, label %bb_if_13_31_false

bb_if_13_31_true:
  %r307 = phi i32 [ %r314, %bb37_31_next ]
  %r308 = phi i32 [ %r315, %bb37_31_next ]
  %r309 = phi i32 [ %r316, %bb37_31_next ]
  %r310 = phi i32 [ %r317, %bb37_31_next ]
  %r311 = phi i32 [ %r318, %bb37_31_next ]
  %r137 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r309
  %r138 = load i32, i32* %r137
  %r312 = add i32 %r138, 0
  %r313 = add i32 %r309, 0
  br label %bb_if_13_31_end

bb_if_13_31_false:
  %r302 = phi i32 [ %r319, %bb_while_9_30_whilestms ], [ %r314, %bb37_31_next ]
  %r303 = phi i32 [ %r320, %bb_while_9_30_whilestms ], [ %r315, %bb37_31_next ]
  %r304 = phi i32 [ %r321, %bb_while_9_30_whilestms ], [ %r316, %bb37_31_next ]
  %r305 = phi i32 [ %r322, %bb_while_9_30_whilestms ], [ %r317, %bb37_31_next ]
  %r306 = phi i32 [ %r323, %bb_while_9_30_whilestms ], [ %r318, %bb37_31_next ]
  br label %bb_if_13_31_end

bb_if_13_31_end:
  %r296 = phi i32 [ %r307, %bb_if_13_31_true ], [ %r302, %bb_if_13_31_false ]
  %r297 = phi i32 [ %r308, %bb_if_13_31_true ], [ %r303, %bb_if_13_31_false ]
  %r298 = phi i32 [ %r309, %bb_if_13_31_true ], [ %r304, %bb_if_13_31_false ]
  %r299 = phi i32 [ %r313, %bb_if_13_31_true ], [ %r305, %bb_if_13_31_false ]
  %r300 = phi i32 [ %r312, %bb_if_13_31_true ], [ %r306, %bb_if_13_31_false ]
  %r141 = add i32 %r298, 1
  %r301 = add i32 %r141, 0
  br label %bb_while_9_30_cond

bb_while_9_30_bre:
  %r290 = phi i32 [ %r255, %bb_while_9_30_cond ]
  %r291 = phi i32 [ %r256, %bb_while_9_30_cond ]
  %r292 = phi i32 [ %r257, %bb_while_9_30_cond ]
  %r293 = phi i32 [ %r258, %bb_while_9_30_cond ]
  %r294 = phi i32 [ %r259, %bb_while_9_30_cond ]
  %r143 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r293
  store i32 1, i32* %r143
  %r295 = add i32 1, 0
  br label %bb_while_9_39_cond

bb_while_9_39_cond:
  %r283 = phi i32 [ %r290, %bb_while_9_30_bre ], [ %r248, %bb_if_13_40_end ]
  %r284 = phi i32 [ %r295, %bb_while_9_30_bre ], [ %r253, %bb_if_13_40_end ]
  %r285 = phi i32 [ %r292, %bb_while_9_30_bre ], [ %r250, %bb_if_13_40_end ]
  %r286 = phi i32 [ %r293, %bb_while_9_30_bre ], [ %r251, %bb_if_13_40_end ]
  %r287 = phi i32 [ %r294, %bb_while_9_30_bre ], [ %r252, %bb_if_13_40_end ]
  %r146 = load i32, i32* @n
  %r147 = icmp sle i32 %r284, %r146
  br i1 %r147, label %bb_while_9_39_whilestms, label %bb_while_9_39_bre

bb_while_9_39_whilestms:
  %r273 = phi i32 [ %r283, %bb_while_9_39_cond ]
  %r274 = phi i32 [ %r284, %bb_while_9_39_cond ]
  %r275 = phi i32 [ %r285, %bb_while_9_39_cond ]
  %r276 = phi i32 [ %r286, %bb_while_9_39_cond ]
  %r277 = phi i32 [ %r287, %bb_while_9_39_cond ]
  %r149 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r276
  %r150 = getelementptr %array2D, %array2D* %r149, i32 0, i32 0
  %r152 = getelementptr [16 x i32 ], [16 x i32 ]* %r150, i32 0, i32 %r274
  %r153 = load i32, i32* %r152
  %r154 = load i32, i32* @INF
  %r155 = icmp slt i32 %r153, %r154
  br i1 %r155, label %bb_if_13_40_true, label %bb_if_13_40_false

bb_if_13_40_true:
  %r324 = phi i32 [ %r273, %bb_while_9_39_whilestms ]
  %r325 = phi i32 [ %r274, %bb_while_9_39_whilestms ]
  %r326 = phi i32 [ %r275, %bb_while_9_39_whilestms ]
  %r327 = phi i32 [ %r276, %bb_while_9_39_whilestms ]
  %r328 = phi i32 [ %r277, %bb_while_9_39_whilestms ]
  %r157 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r325
  %r158 = load i32, i32* %r157
  %r160 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r327
  %r161 = load i32, i32* %r160
  %r163 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r327
  %r164 = getelementptr %array2D, %array2D* %r163, i32 0, i32 0
  %r166 = getelementptr [16 x i32 ], [16 x i32 ]* %r164, i32 0, i32 %r325
  %r167 = load i32, i32* %r166
  %r168 = add i32 %r161, %r167
  %r169 = icmp sgt i32 %r158, %r168
  br i1 %r169, label %bb_if_17_41_true, label %bb_if_17_41_false

bb_if_17_41_true:
  %r352 = phi i32 [ %r324, %bb_if_13_40_true ]
  %r353 = phi i32 [ %r325, %bb_if_13_40_true ]
  %r354 = phi i32 [ %r326, %bb_if_13_40_true ]
  %r355 = phi i32 [ %r327, %bb_if_13_40_true ]
  %r356 = phi i32 [ %r328, %bb_if_13_40_true ]
  %r171 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r353
  %r173 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r355
  %r174 = load i32, i32* %r173
  %r176 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r355
  %r177 = getelementptr %array2D, %array2D* %r176, i32 0, i32 0
  %r179 = getelementptr [16 x i32 ], [16 x i32 ]* %r177, i32 0, i32 %r353
  %r180 = load i32, i32* %r179
  %r181 = add i32 %r174, %r180
  store i32 %r181, i32* %r171
  br label %bb_if_17_41_end

bb_if_17_41_false:
  %r334 = phi i32 [ %r324, %bb_if_13_40_true ]
  %r335 = phi i32 [ %r325, %bb_if_13_40_true ]
  %r336 = phi i32 [ %r326, %bb_if_13_40_true ]
  %r337 = phi i32 [ %r327, %bb_if_13_40_true ]
  %r338 = phi i32 [ %r328, %bb_if_13_40_true ]
  br label %bb_if_17_41_end

bb_if_17_41_end:
  %r260 = phi i32 [ %r352, %bb_if_17_41_true ], [ %r334, %bb_if_17_41_false ]
  %r261 = phi i32 [ %r353, %bb_if_17_41_true ], [ %r335, %bb_if_17_41_false ]
  %r262 = phi i32 [ %r354, %bb_if_17_41_true ], [ %r336, %bb_if_17_41_false ]
  %r263 = phi i32 [ %r355, %bb_if_17_41_true ], [ %r337, %bb_if_17_41_false ]
  %r264 = phi i32 [ %r356, %bb_if_17_41_true ], [ %r338, %bb_if_17_41_false ]
  br label %bb_if_13_40_end

bb_if_13_40_false:
  %r345 = phi i32 [ %r273, %bb_while_9_39_whilestms ]
  %r346 = phi i32 [ %r274, %bb_while_9_39_whilestms ]
  %r347 = phi i32 [ %r275, %bb_while_9_39_whilestms ]
  %r348 = phi i32 [ %r276, %bb_while_9_39_whilestms ]
  %r349 = phi i32 [ %r277, %bb_while_9_39_whilestms ]
  br label %bb_if_13_40_end

bb_if_13_40_end:
  %r248 = phi i32 [ %r260, %bb_if_17_41_end ], [ %r345, %bb_if_13_40_false ]
  %r249 = phi i32 [ %r261, %bb_if_17_41_end ], [ %r346, %bb_if_13_40_false ]
  %r250 = phi i32 [ %r262, %bb_if_17_41_end ], [ %r347, %bb_if_13_40_false ]
  %r251 = phi i32 [ %r263, %bb_if_17_41_end ], [ %r348, %bb_if_13_40_false ]
  %r252 = phi i32 [ %r264, %bb_if_17_41_end ], [ %r349, %bb_if_13_40_false ]
  %r183 = add i32 %r249, 1
  %r253 = add i32 %r183, 0
  br label %bb_while_9_39_cond

bb_while_9_39_bre:
  %r339 = phi i32 [ %r283, %bb_while_9_39_cond ]
  %r340 = phi i32 [ %r284, %bb_while_9_39_cond ]
  %r341 = phi i32 [ %r285, %bb_while_9_39_cond ]
  %r342 = phi i32 [ %r286, %bb_while_9_39_cond ]
  %r343 = phi i32 [ %r287, %bb_while_9_39_cond ]
  %r185 = add i32 %r339, 1
  %r344 = add i32 %r185, 0
  br label %bb_while_5_26_cond

bb_while_5_26_bre:
  %r329 = phi i32 [ %r278, %bb_while_5_26_cond ]
  %r330 = phi i32 [ %r279, %bb_while_5_26_cond ]
  %r331 = phi i32 [ %r280, %bb_while_5_26_cond ]
  %r332 = phi i32 [ %r281, %bb_while_5_26_cond ]
  %r333 = phi i32 [ %r282, %bb_while_5_26_cond ]
  ret void
}

define i32 @main( ) {
bb2:
  %r361 = add i32 0, 0
  %r362 = add i32 0, 0
  %r363 = add i32 0, 0
  call void @_sysy_starttime(i32 53)
  %r364 = add i32 0, 0
  %r187 = call i32 @getint()
  store i32 %r187, i32* @n
  %r188 = call i32 @getint()
  store i32 %r188, i32* @m
  %r365 = add i32 1, 0
  br label %bb_while_5_59_cond

bb_while_5_59_cond:
  %r370 = phi i32 [ %r365, %bb2 ], [ %r411, %bb_while_9_61_bre ]
  %r371 = phi i32 [ %r363, %bb2 ], [ %r410, %bb_while_9_61_bre ]
  %r190 = load i32, i32* @n
  %r191 = icmp sle i32 %r370, %r190
  br i1 %r191, label %bb_while_5_59_whilestms, label %bb_while_5_59_bre

bb_while_5_59_whilestms:
  %r372 = phi i32 [ %r370, %bb_while_5_59_cond ]
  %r373 = phi i32 [ %r371, %bb_while_5_59_cond ]
  %r374 = add i32 1, 0
  br label %bb_while_9_61_cond

bb_while_9_61_cond:
  %r398 = phi i32 [ %r372, %bb_while_5_59_whilestms ], [ %r406, %bb_if_13_62_end ]
  %r399 = phi i32 [ %r374, %bb_while_5_59_whilestms ], [ %r408, %bb_if_13_62_end ]
  %r194 = load i32, i32* @n
  %r195 = icmp sle i32 %r399, %r194
  br i1 %r195, label %bb_while_9_61_whilestms, label %bb_while_9_61_bre

bb_while_9_61_whilestms:
  %r389 = phi i32 [ %r398, %bb_while_9_61_cond ]
  %r390 = phi i32 [ %r399, %bb_while_9_61_cond ]
  %r198 = icmp eq i32 %r389, %r390
  br i1 %r198, label %bb_if_13_62_true, label %bb_if_13_62_false

bb_if_13_62_true:
  %r400 = phi i32 [ %r389, %bb_while_9_61_whilestms ]
  %r401 = phi i32 [ %r390, %bb_while_9_61_whilestms ]
  %r200 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r400
  %r201 = getelementptr %array2D, %array2D* %r200, i32 0, i32 0
  %r203 = getelementptr [16 x i32 ], [16 x i32 ]* %r201, i32 0, i32 %r401
  store i32 0, i32* %r203
  br label %bb_if_13_62_end

bb_if_13_62_false:
  %r387 = phi i32 [ %r389, %bb_while_9_61_whilestms ]
  %r388 = phi i32 [ %r390, %bb_while_9_61_whilestms ]
  %r205 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r387
  %r206 = getelementptr %array2D, %array2D* %r205, i32 0, i32 0
  %r208 = getelementptr [16 x i32 ], [16 x i32 ]* %r206, i32 0, i32 %r388
  %r209 = load i32, i32* @INF
  store i32 %r209, i32* %r208
  br label %bb_if_13_62_end

bb_if_13_62_end:
  %r406 = phi i32 [ %r400, %bb_if_13_62_true ], [ %r387, %bb_if_13_62_false ]
  %r407 = phi i32 [ %r401, %bb_if_13_62_true ], [ %r388, %bb_if_13_62_false ]
  %r211 = add i32 %r407, 1
  %r408 = add i32 %r211, 0
  br label %bb_while_9_61_cond

bb_while_9_61_bre:
  %r409 = phi i32 [ %r398, %bb_while_9_61_cond ]
  %r410 = phi i32 [ %r399, %bb_while_9_61_cond ]
  %r213 = add i32 %r409, 1
  %r411 = add i32 %r213, 0
  br label %bb_while_5_59_cond

bb_while_5_59_bre:
  %r375 = phi i32 [ %r370, %bb_while_5_59_cond ]
  %r376 = phi i32 [ %r371, %bb_while_5_59_cond ]
  %r377 = add i32 1, 0
  br label %bb_while_5_76_cond

bb_while_5_76_cond:
  %r402 = phi i32 [ %r377, %bb_while_5_59_bre ], [ %r397, %bb_while_5_76_whilestms ]
  %r403 = phi i32 [ %r376, %bb_while_5_59_bre ], [ %r392, %bb_while_5_76_whilestms ]
  %r404 = phi i32 [ %r361, %bb_while_5_59_bre ], [ %r396, %bb_while_5_76_whilestms ]
  %r405 = phi i32 [ %r362, %bb_while_5_59_bre ], [ %r395, %bb_while_5_76_whilestms ]
  %r215 = load i32, i32* @m
  %r216 = icmp sle i32 %r402, %r215
  br i1 %r216, label %bb_while_5_76_whilestms, label %bb_while_5_76_bre

bb_while_5_76_whilestms:
  %r391 = phi i32 [ %r402, %bb_while_5_76_cond ]
  %r392 = phi i32 [ %r403, %bb_while_5_76_cond ]
  %r393 = phi i32 [ %r404, %bb_while_5_76_cond ]
  %r394 = phi i32 [ %r405, %bb_while_5_76_cond ]
  %r218 = call i32 @getint()
  %r395 = add i32 %r218, 0
  %r220 = call i32 @getint()
  %r396 = add i32 %r220, 0
  %r222 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r395
  %r223 = getelementptr %array2D, %array2D* %r222, i32 0, i32 0
  %r225 = getelementptr [16 x i32 ], [16 x i32 ]* %r223, i32 0, i32 %r396
  %r226 = call i32 @getint()
  store i32 %r226, i32* %r225
  %r228 = add i32 %r391, 1
  %r397 = add i32 %r228, 0
  br label %bb_while_5_76_cond

bb_while_5_76_bre:
  %r412 = phi i32 [ %r402, %bb_while_5_76_cond ]
  %r413 = phi i32 [ %r403, %bb_while_5_76_cond ]
  %r414 = phi i32 [ %r404, %bb_while_5_76_cond ]
  %r415 = phi i32 [ %r405, %bb_while_5_76_cond ]
  call void @Dijkstra()
  %r416 = add i32 1, 0
  br label %bb_while_5_86_cond

bb_while_5_86_cond:
  %r383 = phi i32 [ %r416, %bb_while_5_76_bre ], [ %r382, %bb_while_5_86_whilestms ]
  %r384 = phi i32 [ %r413, %bb_while_5_76_bre ], [ %r379, %bb_while_5_86_whilestms ]
  %r385 = phi i32 [ %r414, %bb_while_5_76_bre ], [ %r380, %bb_while_5_86_whilestms ]
  %r386 = phi i32 [ %r415, %bb_while_5_76_bre ], [ %r381, %bb_while_5_86_whilestms ]
  %r230 = load i32, i32* @n
  %r231 = icmp sle i32 %r383, %r230
  br i1 %r231, label %bb_while_5_86_whilestms, label %bb_while_5_86_bre

bb_while_5_86_whilestms:
  %r378 = phi i32 [ %r383, %bb_while_5_86_cond ]
  %r379 = phi i32 [ %r384, %bb_while_5_86_cond ]
  %r380 = phi i32 [ %r385, %bb_while_5_86_cond ]
  %r381 = phi i32 [ %r386, %bb_while_5_86_cond ]
  %r233 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r378
  %r234 = load i32, i32* %r233
  call void @putint(i32 %r234)
  call void @putch(i32 32)
  %r236 = add i32 %r378, 1
  %r382 = add i32 %r236, 0
  br label %bb_while_5_86_cond

bb_while_5_86_bre:
  %r366 = phi i32 [ %r383, %bb_while_5_86_cond ]
  %r367 = phi i32 [ %r384, %bb_while_5_86_cond ]
  %r368 = phi i32 [ %r385, %bb_while_5_86_cond ]
  %r369 = phi i32 [ %r386, %bb_while_5_86_cond ]
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 91)
  ret i32 0
}

