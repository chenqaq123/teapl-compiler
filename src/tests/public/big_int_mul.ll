declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@len = global i32 20
define i32 @main( ) {
bb1:
  %r300 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  %r301 = add i32 0, 0
  %r302 = add i32 0, 0
  %r303 = add i32 0, 0
  %r304 = add i32 0, 0
  %r305 = add i32 0, 0
  %r105 = alloca [ 20 x i32 ]
  %r106 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 0
  store i32 1, i32* %r106
  %r107 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 1
  store i32 2, i32* %r107
  %r108 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 2
  store i32 3, i32* %r108
  %r109 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 3
  store i32 4, i32* %r109
  %r110 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 4
  store i32 5, i32* %r110
  %r111 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 5
  store i32 6, i32* %r111
  %r112 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 6
  store i32 7, i32* %r112
  %r113 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 7
  store i32 8, i32* %r113
  %r114 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 8
  store i32 9, i32* %r114
  %r115 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 9
  store i32 0, i32* %r115
  %r116 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 10
  store i32 1, i32* %r116
  %r117 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 11
  store i32 2, i32* %r117
  %r118 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 12
  store i32 3, i32* %r118
  %r119 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 13
  store i32 4, i32* %r119
  %r120 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 14
  store i32 5, i32* %r120
  %r121 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 15
  store i32 6, i32* %r121
  %r122 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 16
  store i32 7, i32* %r122
  %r123 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 17
  store i32 8, i32* %r123
  %r124 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 18
  store i32 9, i32* %r124
  %r125 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 19
  store i32 0, i32* %r125
  %r126 = alloca [ 20 x i32 ]
  %r127 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 0
  store i32 2, i32* %r127
  %r128 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 1
  store i32 3, i32* %r128
  %r129 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 2
  store i32 4, i32* %r129
  %r130 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 3
  store i32 2, i32* %r130
  %r131 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 4
  store i32 5, i32* %r131
  %r132 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 5
  store i32 7, i32* %r132
  %r133 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 6
  store i32 9, i32* %r133
  %r134 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 7
  store i32 9, i32* %r134
  %r135 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 8
  store i32 0, i32* %r135
  %r136 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 9
  store i32 1, i32* %r136
  %r137 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 10
  store i32 9, i32* %r137
  %r138 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 11
  store i32 8, i32* %r138
  %r139 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 12
  store i32 7, i32* %r139
  %r140 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 13
  store i32 6, i32* %r140
  %r141 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 14
  store i32 4, i32* %r141
  %r142 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 15
  store i32 3, i32* %r142
  %r143 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 16
  store i32 2, i32* %r143
  %r144 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 17
  store i32 1, i32* %r144
  %r145 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 18
  store i32 2, i32* %r145
  %r146 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 19
  store i32 2, i32* %r146
  %r306 = add i32 0, 0
  %r148 = load i32, i32* @len
  %r307 = add i32 %r148, 0
  %r308 = add i32 0, 0
  %r150 = load i32, i32* @len
  %r309 = add i32 %r150, 0
  %r151 = alloca [ 25 x i32 ]
  %r152 = alloca [ 25 x i32 ]
  %r153 = alloca [ 40 x i32 ]
  %r154 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  store i32 0, i32* %r154
  %r155 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 1
  store i32 0, i32* %r155
  %r156 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 2
  store i32 0, i32* %r156
  %r157 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 3
  store i32 0, i32* %r157
  %r158 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 4
  store i32 0, i32* %r158
  %r159 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 5
  store i32 0, i32* %r159
  %r160 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 6
  store i32 0, i32* %r160
  %r161 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 7
  store i32 0, i32* %r161
  %r162 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 8
  store i32 0, i32* %r162
  %r163 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 9
  store i32 0, i32* %r163
  %r164 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 10
  store i32 0, i32* %r164
  %r165 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 11
  store i32 0, i32* %r165
  %r166 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 12
  store i32 0, i32* %r166
  %r167 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 13
  store i32 0, i32* %r167
  %r168 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 14
  store i32 0, i32* %r168
  %r169 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 15
  store i32 0, i32* %r169
  %r170 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 16
  store i32 0, i32* %r170
  %r171 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 17
  store i32 0, i32* %r171
  %r172 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 18
  store i32 0, i32* %r172
  %r173 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 19
  store i32 0, i32* %r173
  %r174 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 20
  store i32 0, i32* %r174
  %r175 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 21
  store i32 0, i32* %r175
  %r176 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 22
  store i32 0, i32* %r176
  %r177 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 23
  store i32 0, i32* %r177
  %r178 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 24
  store i32 0, i32* %r178
  %r179 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 25
  store i32 0, i32* %r179
  %r180 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 26
  store i32 0, i32* %r180
  %r181 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 27
  store i32 0, i32* %r181
  %r182 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 28
  store i32 0, i32* %r182
  %r183 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 29
  store i32 0, i32* %r183
  %r184 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 30
  store i32 0, i32* %r184
  %r185 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 31
  store i32 0, i32* %r185
  %r186 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 32
  store i32 0, i32* %r186
  %r187 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 33
  store i32 0, i32* %r187
  %r188 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 34
  store i32 0, i32* %r188
  %r189 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 35
  store i32 0, i32* %r189
  %r190 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 36
  store i32 0, i32* %r190
  %r191 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 37
  store i32 0, i32* %r191
  %r192 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 38
  store i32 0, i32* %r192
  %r193 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 39
  store i32 0, i32* %r193
  %r310 = add i32 0, 0
  br label %bb_while_5_20_cond

bb_while_5_20_cond:
  %r328 = phi i32 [ %r310, %bb1 ], [ %r327, %bb_while_5_20_whilestms ]
  %r196 = icmp slt i32 %r328, %r307
  br i1 %r196, label %bb_while_5_20_whilestms, label %bb_while_5_20_bre

bb_while_5_20_whilestms:
  %r326 = phi i32 [ %r328, %bb_while_5_20_cond ]
  %r198 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r326
  %r200 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 %r326
  %r201 = load i32, i32* %r200
  store i32 %r201, i32* %r198
  %r203 = add i32 %r326, 1
  %r327 = add i32 %r203, 0
  br label %bb_while_5_20_cond

bb_while_5_20_bre:
  %r324 = phi i32 [ %r328, %bb_while_5_20_cond ]
  %r325 = add i32 0, 0
  br label %bb_while_5_26_cond

bb_while_5_26_cond:
  %r394 = phi i32 [ %r325, %bb_while_5_20_bre ], [ %r393, %bb_while_5_26_whilestms ]
  %r206 = icmp slt i32 %r394, %r309
  br i1 %r206, label %bb_while_5_26_whilestms, label %bb_while_5_26_bre

bb_while_5_26_whilestms:
  %r392 = phi i32 [ %r394, %bb_while_5_26_cond ]
  %r208 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r392
  %r210 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 %r392
  %r211 = load i32, i32* %r210
  store i32 %r211, i32* %r208
  %r213 = add i32 %r392, 1
  %r393 = add i32 %r213, 0
  br label %bb_while_5_26_cond

bb_while_5_26_bre:
  %r409 = phi i32 [ %r394, %bb_while_5_26_cond ]
  %r216 = add i32 %r307, %r309
  %r217 = sub i32 %r216, 1
  %r410 = add i32 %r217, 0
  %r411 = add i32 0, 0
  br label %bb_while_5_34_cond

bb_while_5_34_cond:
  %r390 = phi i32 [ %r411, %bb_while_5_26_bre ], [ %r389, %bb_while_5_34_whilestms ]
  %r391 = phi i32 [ %r410, %bb_while_5_26_bre ], [ %r388, %bb_while_5_34_whilestms ]
  %r220 = icmp sle i32 %r390, %r391
  br i1 %r220, label %bb_while_5_34_whilestms, label %bb_while_5_34_bre

bb_while_5_34_whilestms:
  %r387 = phi i32 [ %r390, %bb_while_5_34_cond ]
  %r388 = phi i32 [ %r391, %bb_while_5_34_cond ]
  %r222 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r387
  store i32 0, i32* %r222
  %r224 = add i32 %r387, 1
  %r389 = add i32 %r224, 0
  br label %bb_while_5_34_cond

bb_while_5_34_bre:
  %r383 = phi i32 [ %r390, %bb_while_5_34_cond ]
  %r384 = phi i32 [ %r391, %bb_while_5_34_cond ]
  %r385 = add i32 0, 0
  %r226 = sub i32 %r309, 1
  %r386 = add i32 %r226, 0
  br label %bb_while_5_42_cond

bb_while_5_42_cond:
  %r377 = phi i32 [ %r386, %bb_while_5_34_bre ], [ %r358, %bb_while_9_45_bre ]
  %r378 = phi i32 [ %r302, %bb_while_5_34_bre ], [ %r352, %bb_while_9_45_bre ]
  %r379 = phi i32 [ %r385, %bb_while_5_34_bre ], [ %r353, %bb_while_9_45_bre ]
  %r380 = phi i32 [ %r384, %bb_while_5_34_bre ], [ %r357, %bb_while_9_45_bre ]
  %r381 = phi i32 [ %r303, %bb_while_5_34_bre ], [ %r355, %bb_while_9_45_bre ]
  %r382 = phi i32 [ %r300, %bb_while_5_34_bre ], [ %r356, %bb_while_9_45_bre ]
  %r228 = sub i32 0, 1
  %r229 = icmp sgt i32 %r377, %r228
  br i1 %r229, label %bb_while_5_42_whilestms, label %bb_while_5_42_bre

bb_while_5_42_whilestms:
  %r395 = phi i32 [ %r377, %bb_while_5_42_cond ]
  %r396 = phi i32 [ %r378, %bb_while_5_42_cond ]
  %r397 = phi i32 [ %r379, %bb_while_5_42_cond ]
  %r398 = phi i32 [ %r380, %bb_while_5_42_cond ]
  %r399 = phi i32 [ %r381, %bb_while_5_42_cond ]
  %r400 = phi i32 [ %r382, %bb_while_5_42_cond ]
  %r231 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r395
  %r232 = load i32, i32* %r231
  %r401 = add i32 %r232, 0
  %r234 = sub i32 %r307, 1
  %r402 = add i32 %r234, 0
  br label %bb_while_9_45_cond

bb_while_9_45_cond:
  %r371 = phi i32 [ %r395, %bb_while_5_42_whilestms ], [ %r343, %bb_if_13_47_end ]
  %r372 = phi i32 [ %r402, %bb_while_5_42_whilestms ], [ %r349, %bb_if_13_47_end ]
  %r373 = phi i32 [ %r397, %bb_while_5_42_whilestms ], [ %r345, %bb_if_13_47_end ]
  %r374 = phi i32 [ %r398, %bb_while_5_42_whilestms ], [ %r350, %bb_if_13_47_end ]
  %r375 = phi i32 [ %r401, %bb_while_5_42_whilestms ], [ %r347, %bb_if_13_47_end ]
  %r376 = phi i32 [ %r400, %bb_while_5_42_whilestms ], [ %r348, %bb_if_13_47_end ]
  %r236 = sub i32 0, 1
  %r237 = icmp sgt i32 %r372, %r236
  br i1 %r237, label %bb_while_9_45_whilestms, label %bb_while_9_45_bre

bb_while_9_45_whilestms:
  %r329 = phi i32 [ %r371, %bb_while_9_45_cond ]
  %r330 = phi i32 [ %r372, %bb_while_9_45_cond ]
  %r331 = phi i32 [ %r373, %bb_while_9_45_cond ]
  %r332 = phi i32 [ %r374, %bb_while_9_45_cond ]
  %r333 = phi i32 [ %r375, %bb_while_9_45_cond ]
  %r334 = phi i32 [ %r376, %bb_while_9_45_cond ]
  %r239 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r332
  %r240 = load i32, i32* %r239
  %r243 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r330
  %r244 = load i32, i32* %r243
  %r245 = mul i32 %r333, %r244
  %r246 = add i32 %r240, %r245
  %r335 = add i32 %r246, 0
  %r248 = icmp sge i32 %r335, 10
  br i1 %r248, label %bb_if_13_47_true, label %bb_if_13_47_false

bb_if_13_47_true:
  %r336 = phi i32 [ %r329, %bb_while_9_45_whilestms ]
  %r337 = phi i32 [ %r330, %bb_while_9_45_whilestms ]
  %r338 = phi i32 [ %r335, %bb_while_9_45_whilestms ]
  %r339 = phi i32 [ %r332, %bb_while_9_45_whilestms ]
  %r340 = phi i32 [ %r333, %bb_while_9_45_whilestms ]
  %r341 = phi i32 [ %r334, %bb_while_9_45_whilestms ]
  %r250 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r339
  store i32 %r338, i32* %r250
  %r254 = sub i32 %r339, 1
  %r342 = add i32 %r254, 0
  %r256 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r342
  %r258 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r342
  %r259 = load i32, i32* %r258
  %r261 = sdiv i32 %r338, 10
  %r262 = add i32 %r259, %r261
  store i32 %r262, i32* %r256
  br label %bb_if_13_47_end

bb_if_13_47_false:
  %r318 = phi i32 [ %r329, %bb_while_9_45_whilestms ]
  %r319 = phi i32 [ %r330, %bb_while_9_45_whilestms ]
  %r320 = phi i32 [ %r335, %bb_while_9_45_whilestms ]
  %r321 = phi i32 [ %r332, %bb_while_9_45_whilestms ]
  %r322 = phi i32 [ %r333, %bb_while_9_45_whilestms ]
  %r323 = phi i32 [ %r334, %bb_while_9_45_whilestms ]
  %r264 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r321
  store i32 %r320, i32* %r264
  br label %bb_if_13_47_end

bb_if_13_47_end:
  %r343 = phi i32 [ %r336, %bb_if_13_47_true ], [ %r318, %bb_if_13_47_false ]
  %r344 = phi i32 [ %r337, %bb_if_13_47_true ], [ %r319, %bb_if_13_47_false ]
  %r345 = phi i32 [ %r338, %bb_if_13_47_true ], [ %r320, %bb_if_13_47_false ]
  %r346 = phi i32 [ %r339, %bb_if_13_47_true ], [ %r321, %bb_if_13_47_false ]
  %r347 = phi i32 [ %r340, %bb_if_13_47_true ], [ %r322, %bb_if_13_47_false ]
  %r348 = phi i32 [ %r342, %bb_if_13_47_true ], [ %r323, %bb_if_13_47_false ]
  %r267 = sub i32 %r344, 1
  %r349 = add i32 %r267, 0
  %r269 = sub i32 %r346, 1
  %r350 = add i32 %r269, 0
  br label %bb_while_9_45_cond

bb_while_9_45_bre:
  %r351 = phi i32 [ %r371, %bb_while_9_45_cond ]
  %r352 = phi i32 [ %r372, %bb_while_9_45_cond ]
  %r353 = phi i32 [ %r373, %bb_while_9_45_cond ]
  %r354 = phi i32 [ %r374, %bb_while_9_45_cond ]
  %r355 = phi i32 [ %r375, %bb_while_9_45_cond ]
  %r356 = phi i32 [ %r376, %bb_while_9_45_cond ]
  %r272 = add i32 %r354, %r307
  %r273 = sub i32 %r272, 1
  %r357 = add i32 %r273, 0
  %r275 = sub i32 %r351, 1
  %r358 = add i32 %r275, 0
  br label %bb_while_5_42_cond

bb_while_5_42_bre:
  %r359 = phi i32 [ %r377, %bb_while_5_42_cond ]
  %r360 = phi i32 [ %r378, %bb_while_5_42_cond ]
  %r361 = phi i32 [ %r379, %bb_while_5_42_cond ]
  %r362 = phi i32 [ %r380, %bb_while_5_42_cond ]
  %r363 = phi i32 [ %r381, %bb_while_5_42_cond ]
  %r364 = phi i32 [ %r382, %bb_while_5_42_cond ]
  %r276 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  %r277 = load i32, i32* %r276
  %r278 = icmp ne i32 %r277, 0
  br i1 %r278, label %bb_if_5_62_true, label %bb_if_5_62_false

bb_if_5_62_true:
  %r365 = phi i32 [ %r359, %bb_while_5_42_bre ]
  %r366 = phi i32 [ %r360, %bb_while_5_42_bre ]
  %r367 = phi i32 [ %r361, %bb_while_5_42_bre ]
  %r368 = phi i32 [ %r362, %bb_while_5_42_bre ]
  %r369 = phi i32 [ %r363, %bb_while_5_42_bre ]
  %r370 = phi i32 [ %r364, %bb_while_5_42_bre ]
  %r279 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  %r280 = load i32, i32* %r279
  call void @putint(i32 %r280)
  br label %bb_if_5_62_end

bb_if_5_62_false:
  %r412 = phi i32 [ %r359, %bb_while_5_42_bre ]
  %r413 = phi i32 [ %r360, %bb_while_5_42_bre ]
  %r414 = phi i32 [ %r361, %bb_while_5_42_bre ]
  %r415 = phi i32 [ %r362, %bb_while_5_42_bre ]
  %r416 = phi i32 [ %r363, %bb_while_5_42_bre ]
  %r417 = phi i32 [ %r364, %bb_while_5_42_bre ]
  br label %bb_if_5_62_end

bb_if_5_62_end:
  %r424 = phi i32 [ %r365, %bb_if_5_62_true ], [ %r412, %bb_if_5_62_false ]
  %r425 = phi i32 [ %r366, %bb_if_5_62_true ], [ %r413, %bb_if_5_62_false ]
  %r426 = phi i32 [ %r367, %bb_if_5_62_true ], [ %r414, %bb_if_5_62_false ]
  %r427 = phi i32 [ %r368, %bb_if_5_62_true ], [ %r415, %bb_if_5_62_false ]
  %r428 = phi i32 [ %r369, %bb_if_5_62_true ], [ %r416, %bb_if_5_62_false ]
  %r429 = phi i32 [ %r370, %bb_if_5_62_true ], [ %r417, %bb_if_5_62_false ]
  %r430 = add i32 1, 0
  br label %bb_while_5_67_cond

bb_while_5_67_cond:
  %r418 = phi i32 [ %r430, %bb_if_5_62_end ], [ %r317, %bb_while_5_67_whilestms ]
  %r419 = phi i32 [ %r425, %bb_if_5_62_end ], [ %r312, %bb_while_5_67_whilestms ]
  %r420 = phi i32 [ %r426, %bb_if_5_62_end ], [ %r313, %bb_while_5_67_whilestms ]
  %r421 = phi i32 [ %r427, %bb_if_5_62_end ], [ %r314, %bb_while_5_67_whilestms ]
  %r422 = phi i32 [ %r428, %bb_if_5_62_end ], [ %r315, %bb_while_5_67_whilestms ]
  %r423 = phi i32 [ %r429, %bb_if_5_62_end ], [ %r316, %bb_while_5_67_whilestms ]
  %r284 = add i32 %r307, %r309
  %r285 = sub i32 %r284, 1
  %r286 = icmp sle i32 %r418, %r285
  br i1 %r286, label %bb_while_5_67_whilestms, label %bb_while_5_67_bre

bb_while_5_67_whilestms:
  %r311 = phi i32 [ %r418, %bb_while_5_67_cond ]
  %r312 = phi i32 [ %r419, %bb_while_5_67_cond ]
  %r313 = phi i32 [ %r420, %bb_while_5_67_cond ]
  %r314 = phi i32 [ %r421, %bb_while_5_67_cond ]
  %r315 = phi i32 [ %r422, %bb_while_5_67_cond ]
  %r316 = phi i32 [ %r423, %bb_while_5_67_cond ]
  %r288 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r311
  %r289 = load i32, i32* %r288
  call void @putint(i32 %r289)
  %r291 = add i32 %r311, 1
  %r317 = add i32 %r291, 0
  br label %bb_while_5_67_cond

bb_while_5_67_bre:
  %r403 = phi i32 [ %r418, %bb_while_5_67_cond ]
  %r404 = phi i32 [ %r419, %bb_while_5_67_cond ]
  %r405 = phi i32 [ %r420, %bb_while_5_67_cond ]
  %r406 = phi i32 [ %r421, %bb_while_5_67_cond ]
  %r407 = phi i32 [ %r422, %bb_while_5_67_cond ]
  %r408 = phi i32 [ %r423, %bb_while_5_67_cond ]
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

