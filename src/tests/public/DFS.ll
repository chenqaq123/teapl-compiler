declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
@m = global i32 0
@to = global [ 5005 x i32 ] zeroinitializer
@next = global [ 5005 x i32 ] zeroinitializer
@head = global [ 1005 x i32 ] zeroinitializer
@cnt = global i32 0
@vis = global [ 1005 x i32 ] zeroinitializer
define i32 @quickread( ) {
bb1:
  %r232 = add i32 0, 0
  %r101 = call i32 @getch()
  %r233 = add i32 %r101, 0
  %r234 = add i32 0, 0
  %r235 = add i32 0, 0
  %r236 = add i32 0, 0
  %r237 = add i32 0, 0
  br label %bb_while_5_5_cond

bb_while_5_5_cond:
  %r272 = phi i32 [ %r233, %bb1 ], [ %r251, %bb_if_9_6_end ]
  %r273 = phi i32 [ %r237, %bb1 ], [ %r250, %bb_if_9_6_end ]
  %r105 = icmp slt i32 %r272, 48
  br i1 %r105, label %bb_while_5_5_whilestms, label %bb25_5_next

bb25_5_next:
  %r270 = phi i32 [ %r272, %bb_while_5_5_cond ]
  %r271 = phi i32 [ %r273, %bb_while_5_5_cond ]
  %r107 = icmp sgt i32 %r270, 57
  br i1 %r107, label %bb_while_5_5_whilestms, label %bb_while_5_5_bre

bb_while_5_5_whilestms:
  %r268 = phi i32 [ %r272, %bb_while_5_5_cond ], [ %r270, %bb25_5_next ]
  %r269 = phi i32 [ %r273, %bb_while_5_5_cond ], [ %r271, %bb25_5_next ]
  %r109 = icmp eq i32 %r268, 45
  br i1 %r109, label %bb_if_9_6_true, label %bb_if_9_6_false

bb_if_9_6_true:
  %r265 = phi i32 [ %r268, %bb_while_5_5_whilestms ]
  %r266 = phi i32 [ %r269, %bb_while_5_5_whilestms ]
  %r267 = add i32 1, 0
  br label %bb_if_9_6_end

bb_if_9_6_false:
  %r247 = phi i32 [ %r268, %bb_while_5_5_whilestms ]
  %r248 = phi i32 [ %r269, %bb_while_5_5_whilestms ]
  br label %bb_if_9_6_end

bb_if_9_6_end:
  %r249 = phi i32 [ %r265, %bb_if_9_6_true ], [ %r247, %bb_if_9_6_false ]
  %r250 = phi i32 [ %r267, %bb_if_9_6_true ], [ %r248, %bb_if_9_6_false ]
  %r110 = call i32 @getch()
  %r251 = add i32 %r110, 0
  br label %bb_while_5_5_cond

bb_while_5_5_bre:
  %r263 = phi i32 [ %r270, %bb25_5_next ]
  %r264 = phi i32 [ %r271, %bb25_5_next ]
  br label %bb_while_5_11_cond

bb_while_5_11_cond:
  %r260 = phi i32 [ %r263, %bb_while_5_5_bre ], [ %r256, %bb_while_5_11_whilestms ]
  %r261 = phi i32 [ %r235, %bb_while_5_5_bre ], [ %r255, %bb_while_5_11_whilestms ]
  %r262 = phi i32 [ %r264, %bb_while_5_5_bre ], [ %r254, %bb_while_5_11_whilestms ]
  %r112 = icmp sge i32 %r260, 48
  br i1 %r112, label %bb26_11_next, label %bb_while_5_11_bre

bb26_11_next:
  %r257 = phi i32 [ %r260, %bb_while_5_11_cond ]
  %r258 = phi i32 [ %r261, %bb_while_5_11_cond ]
  %r259 = phi i32 [ %r262, %bb_while_5_11_cond ]
  %r114 = icmp sle i32 %r257, 57
  br i1 %r114, label %bb_while_5_11_whilestms, label %bb_while_5_11_bre

bb_while_5_11_whilestms:
  %r252 = phi i32 [ %r257, %bb26_11_next ]
  %r253 = phi i32 [ %r258, %bb26_11_next ]
  %r254 = phi i32 [ %r259, %bb26_11_next ]
  %r116 = mul i32 %r253, 10
  %r118 = add i32 %r116, %r252
  %r119 = sub i32 %r118, 48
  %r255 = add i32 %r119, 0
  %r120 = call i32 @getch()
  %r256 = add i32 %r120, 0
  br label %bb_while_5_11_cond

bb_while_5_11_bre:
  %r238 = phi i32 [ %r260, %bb_while_5_11_cond ], [ %r257, %bb26_11_next ]
  %r239 = phi i32 [ %r261, %bb_while_5_11_cond ], [ %r258, %bb26_11_next ]
  %r240 = phi i32 [ %r262, %bb_while_5_11_cond ], [ %r259, %bb26_11_next ]
  %r122 = icmp ne i32 %r240, 0
  br i1 %r122, label %bb_if_5_15_true, label %bb_if_5_15_false

bb_if_5_15_true:
  %r244 = phi i32 [ %r238, %bb_while_5_11_bre ]
  %r245 = phi i32 [ %r239, %bb_while_5_11_bre ]
  %r246 = phi i32 [ %r240, %bb_while_5_11_bre ]
  %r124 = sub i32 0, %r245
  ret i32 %r124
bb_if_5_15_false:
  %r241 = phi i32 [ %r238, %bb_while_5_11_bre ]
  %r242 = phi i32 [ %r239, %bb_while_5_11_bre ]
  %r243 = phi i32 [ %r240, %bb_while_5_11_bre ]
  ret i32 %r242
}

define void @addedge( i32 %r126, i32 %r128 ) {
bb2:
  %r276 = add i32 0, 0
  %r277 = add i32 %r126, 0
  %r278 = add i32 0, 0
  %r279 = add i32 %r128, 0
  %r130 = load i32, i32* @cnt
  %r131 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r130
  store i32 %r279, i32* %r131
  %r133 = load i32, i32* @cnt
  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r133
  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r277
  %r137 = load i32, i32* %r136
  store i32 %r137, i32* %r134
  %r139 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r277
  %r140 = load i32, i32* @cnt
  store i32 %r140, i32* %r139
  %r141 = load i32, i32* @cnt
  %r142 = add i32 %r141, 1
  store i32 %r142, i32* @cnt
  %r143 = load i32, i32* @cnt
  %r144 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r143
  store i32 %r277, i32* %r144
  %r146 = load i32, i32* @cnt
  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r146
  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r279
  %r150 = load i32, i32* %r149
  store i32 %r150, i32* %r147
  %r152 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r279
  %r153 = load i32, i32* @cnt
  store i32 %r153, i32* %r152
  %r154 = load i32, i32* @cnt
  %r155 = add i32 %r154, 1
  store i32 %r155, i32* @cnt
  ret void
}

define void @init( ) {
bb3:
  %r281 = add i32 0, 0
  %r282 = add i32 0, 0
  br label %bb_while_5_43_cond

bb_while_5_43_cond:
  %r286 = phi i32 [ %r282, %bb3 ], [ %r285, %bb_while_5_43_whilestms ]
  %r158 = icmp slt i32 %r286, 1005
  br i1 %r158, label %bb_while_5_43_whilestms, label %bb_while_5_43_bre

bb_while_5_43_whilestms:
  %r284 = phi i32 [ %r286, %bb_while_5_43_cond ]
  %r160 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r284
  %r161 = sub i32 0, 1
  store i32 %r161, i32* %r160
  %r163 = add i32 %r284, 1
  %r285 = add i32 %r163, 0
  br label %bb_while_5_43_cond

bb_while_5_43_bre:
  %r283 = phi i32 [ %r286, %bb_while_5_43_cond ]
  ret void
}

define void @clear( ) {
bb4:
  %r288 = add i32 0, 0
  %r289 = add i32 1, 0
  br label %bb_while_5_51_cond

bb_while_5_51_cond:
  %r293 = phi i32 [ %r289, %bb4 ], [ %r292, %bb_while_5_51_whilestms ]
  %r166 = load i32, i32* @n
  %r167 = icmp sle i32 %r293, %r166
  br i1 %r167, label %bb_while_5_51_whilestms, label %bb_while_5_51_bre

bb_while_5_51_whilestms:
  %r291 = phi i32 [ %r293, %bb_while_5_51_cond ]
  %r169 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r291
  store i32 0, i32* %r169
  %r171 = add i32 %r291, 1
  %r292 = add i32 %r171, 0
  br label %bb_while_5_51_cond

bb_while_5_51_bre:
  %r290 = phi i32 [ %r293, %bb_while_5_51_cond ]
  ret void
}

define i32 @same( i32 %r172, i32 %r174 ) {
bb5:
  %r298 = add i32 0, 0
  %r299 = add i32 0, 0
  %r300 = add i32 0, 0
  %r301 = add i32 %r172, 0
  %r302 = add i32 0, 0
  %r303 = add i32 %r174, 0
  %r177 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r301
  store i32 1, i32* %r177
  %r180 = icmp eq i32 %r301, %r303
  br i1 %r180, label %bb_if_5_59_true, label %bb_if_5_59_false

bb_if_5_59_true:
  ret i32 1
bb_if_5_59_false:
  br label %bb_if_5_59_end

bb_if_5_59_end:
  %r183 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r301
  %r184 = load i32, i32* %r183
  %r318 = add i32 %r184, 0
  br label %bb_while_5_63_cond

bb_while_5_63_cond:
  %r319 = phi i32 [ %r318, %bb_if_5_59_end ], [ %r308, %bb_if_9_65_end ]
  %r320 = phi i32 [ %r298, %bb_if_5_59_end ], [ %r307, %bb_if_9_65_end ]
  %r186 = sub i32 0, 1
  %r187 = icmp ne i32 %r319, %r186
  br i1 %r187, label %bb_while_5_63_whilestms, label %bb_while_5_63_bre

bb_while_5_63_whilestms:
  %r315 = phi i32 [ %r319, %bb_while_5_63_cond ]
  %r316 = phi i32 [ %r320, %bb_while_5_63_cond ]
  %r190 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r315
  %r191 = load i32, i32* %r190
  %r317 = add i32 %r191, 0
  %r193 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r317
  %r194 = load i32, i32* %r193
  %r195 = icmp eq i32 %r194, 0
  br i1 %r195, label %bb26_65_next, label %bb_if_9_65_false

bb26_65_next:
  %r313 = phi i32 [ %r315, %bb_while_5_63_whilestms ]
  %r314 = phi i32 [ %r317, %bb_while_5_63_whilestms ]
  %r198 = call i32 @same(i32 %r314, i32 %r303)
  %r199 = icmp ne i32 %r198, 0
  br i1 %r199, label %bb_if_9_65_true, label %bb_if_9_65_false

bb_if_9_65_true:
  %r311 = phi i32 [ %r313, %bb26_65_next ]
  %r312 = phi i32 [ %r314, %bb26_65_next ]
  ret i32 1
bb_if_9_65_false:
  %r309 = phi i32 [ %r315, %bb_while_5_63_whilestms ], [ %r313, %bb26_65_next ]
  %r310 = phi i32 [ %r317, %bb_while_5_63_whilestms ], [ %r314, %bb26_65_next ]
  br label %bb_if_9_65_end

bb_if_9_65_end:
  %r306 = phi i32 [ %r309, %bb_if_9_65_false ]
  %r307 = phi i32 [ %r310, %bb_if_9_65_false ]
  %r201 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r306
  %r202 = load i32, i32* %r201
  %r308 = add i32 %r202, 0
  br label %bb_while_5_63_cond

bb_while_5_63_bre:
  %r304 = phi i32 [ %r319, %bb_while_5_63_cond ]
  %r305 = phi i32 [ %r320, %bb_while_5_63_cond ]
  ret i32 0
}

define i32 @main( ) {
bb6:
  call void @_sysy_starttime(i32 74)
  %r203 = call i32 @quickread()
  store i32 %r203, i32* @n
  %r204 = call i32 @quickread()
  store i32 %r204, i32* @m
  call void @init()
  %r324 = add i32 0, 0
  %r325 = add i32 0, 0
  %r326 = add i32 0, 0
  %r327 = add i32 0, 0
  %r328 = add i32 0, 0
  %r329 = add i32 0, 0
  br label %bb_while_5_80_cond

bb_while_5_80_cond:
  %r363 = phi i32 [ %r329, %bb6 ], [ %r357, %bb_if_9_85_end ]
  %r364 = phi i32 [ %r327, %bb6 ], [ %r358, %bb_if_9_85_end ]
  %r365 = phi i32 [ %r325, %bb6 ], [ %r359, %bb_if_9_85_end ]
  %r208 = load i32, i32* @m
  %r209 = icmp ne i32 %r208, 0
  br i1 %r209, label %bb_while_5_80_whilestms, label %bb_while_5_80_bre

bb_while_5_80_whilestms:
  %r350 = phi i32 [ %r363, %bb_while_5_80_cond ]
  %r351 = phi i32 [ %r364, %bb_while_5_80_cond ]
  %r352 = phi i32 [ %r365, %bb_while_5_80_cond ]
  %r210 = call i32 @getch()
  %r353 = add i32 %r210, 0
  br label %bb_while_9_82_cond

bb_while_9_82_cond:
  %r360 = phi i32 [ %r350, %bb_while_5_80_whilestms ], [ %r340, %bb_while_9_82_whilestms ]
  %r361 = phi i32 [ %r351, %bb_while_5_80_whilestms ], [ %r341, %bb_while_9_82_whilestms ]
  %r362 = phi i32 [ %r353, %bb_while_5_80_whilestms ], [ %r343, %bb_while_9_82_whilestms ]
  %r212 = icmp ne i32 %r362, 81
  br i1 %r212, label %bb28_82_next, label %bb_while_9_82_bre

bb28_82_next:
  %r347 = phi i32 [ %r360, %bb_while_9_82_cond ]
  %r348 = phi i32 [ %r361, %bb_while_9_82_cond ]
  %r349 = phi i32 [ %r362, %bb_while_9_82_cond ]
  %r214 = icmp ne i32 %r349, 85
  br i1 %r214, label %bb_while_9_82_whilestms, label %bb_while_9_82_bre

bb_while_9_82_whilestms:
  %r340 = phi i32 [ %r347, %bb28_82_next ]
  %r341 = phi i32 [ %r348, %bb28_82_next ]
  %r342 = phi i32 [ %r349, %bb28_82_next ]
  %r215 = call i32 @getch()
  %r343 = add i32 %r215, 0
  br label %bb_while_9_82_cond

bb_while_9_82_bre:
  %r344 = phi i32 [ %r360, %bb_while_9_82_cond ], [ %r347, %bb28_82_next ]
  %r345 = phi i32 [ %r361, %bb_while_9_82_cond ], [ %r348, %bb28_82_next ]
  %r346 = phi i32 [ %r362, %bb_while_9_82_cond ], [ %r349, %bb28_82_next ]
  %r217 = icmp eq i32 %r346, 81
  br i1 %r217, label %bb_if_9_85_true, label %bb_if_9_85_false

bb_if_9_85_true:
  %r335 = phi i32 [ %r344, %bb_while_9_82_bre ]
  %r336 = phi i32 [ %r345, %bb_while_9_82_bre ]
  %r337 = phi i32 [ %r346, %bb_while_9_82_bre ]
  %r218 = call i32 @quickread()
  %r338 = add i32 %r218, 0
  %r219 = call i32 @quickread()
  %r339 = add i32 %r219, 0
  call void @clear()
  %r222 = call i32 @same(i32 %r338, i32 %r339)
  call void @putint(i32 %r222)
  call void @putch(i32 10)
  br label %bb_if_9_85_end

bb_if_9_85_false:
  %r330 = phi i32 [ %r344, %bb_while_9_82_bre ]
  %r331 = phi i32 [ %r345, %bb_while_9_82_bre ]
  %r332 = phi i32 [ %r346, %bb_while_9_82_bre ]
  %r223 = call i32 @quickread()
  %r333 = add i32 %r223, 0
  %r224 = call i32 @quickread()
  %r334 = add i32 %r224, 0
  call void @addedge(i32 %r333, i32 %r334)
  br label %bb_if_9_85_end

bb_if_9_85_end:
  %r357 = phi i32 [ %r339, %bb_if_9_85_true ], [ %r334, %bb_if_9_85_false ]
  %r358 = phi i32 [ %r338, %bb_if_9_85_true ], [ %r333, %bb_if_9_85_false ]
  %r359 = phi i32 [ %r337, %bb_if_9_85_true ], [ %r332, %bb_if_9_85_false ]
  %r227 = load i32, i32* @m
  %r228 = sub i32 %r227, 1
  store i32 %r228, i32* @m
  br label %bb_while_5_80_cond

bb_while_5_80_bre:
  %r354 = phi i32 [ %r363, %bb_while_5_80_cond ]
  %r355 = phi i32 [ %r364, %bb_while_5_80_cond ]
  %r356 = phi i32 [ %r365, %bb_while_5_80_cond ]
  call void @_sysy_stoptime(i32 96)
  ret i32 0
}

