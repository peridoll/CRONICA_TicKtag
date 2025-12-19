#> p_motion:system/summon
# Motion付与用エンティティ召喚

# 一時的にTPしたエンティティを戻す
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:"stone",components:{enchantments:{"p_motion:tp":1}}}},Tags:["tp_after","hb.enc_stand"]}

# Y軸
$summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:vertical1":$(Y1),"p_motion:vertical2":$(Y2),"p_motion:vertical3":$(Y3)}}}},Tags:["hb.enc_stand","$(SignY)","v1_$(Y1)","v2_$(Y2)","v3_$(Y3)"]}

# X軸
$execute if data storage cronica:temp Signs{X:1} run summon minecraft:armor_stand ~-0.0001 ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:horizon1":$(X1),"p_motion:horizon2":$(X2),"p_motion:horizon3":$(X3)}}}},Tags:["hb.enc_stand","+","h1_$(X1)","h2_$(X2)","h3_$(X3)"]}
$execute if data storage cronica:temp Signs{X:1} run summon minecraft:armor_stand ~0.0001 ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:horizon1":$(X1),"p_motion:horizon2":$(X2),"p_motion:horizon3":$(X3)}}}},Tags:["hb.enc_stand","-","h1_$(X1)","h2_$(X2)","h3_$(X3)"]}
$execute if data storage cronica:temp Signs{X:-1} run summon minecraft:armor_stand ~0.0001 ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:horizon1":$(X1),"p_motion:horizon2":$(X2),"p_motion:horizon3":$(X3)}}}},Tags:["hb.enc_stand","+","h1_$(X1)","h2_$(X2)","h3_$(X3)"]}
$execute if data storage cronica:temp Signs{X:-1} run summon minecraft:armor_stand ~-0.0001 ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:horizon1":$(X1),"p_motion:horizon2":$(X2),"p_motion:horizon3":$(X3)}}}},Tags:["hb.enc_stand","-","h1_$(X1)","h2_$(X2)","h3_$(X3)"]}

# Z軸
$execute if data storage cronica:temp Signs{Z:1} run summon minecraft:armor_stand ~ ~ ~-0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:horizon1":$(z1),"p_motion:horizon2":$(z2),"p_motion:horizon3":$(Z3)}}}},Tags:["hb.enc_stand","+","h1_$(z1)","h2_$(z2)","h3_$(Z3)"]}
$execute if data storage cronica:temp Signs{Z:1} run summon minecraft:armor_stand ~ ~ ~0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:horizon1":$(z1),"p_motion:horizon2":$(z2),"p_motion:horizon3":$(Z3)}}}},Tags:["hb.enc_stand","-","h1_$(z1)","h2_$(z2)","h3_$(Z3)"]}
$execute if data storage cronica:temp Signs{Z:-1} run summon minecraft:armor_stand ~ ~ ~0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:horizon1":$(z1),"p_motion:horizon2":$(z2),"p_motion:horizon3":$(Z3)}}}},Tags:["hb.enc_stand","+","h1_$(z1)","h2_$(z2)","h3_$(Z3)"]}
$execute if data storage cronica:temp Signs{Z:-1} run summon minecraft:armor_stand ~ ~ ~-0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone,components:{enchantments:{"p_motion:horizon1":$(z1),"p_motion:horizon2":$(z2),"p_motion:horizon3":$(Z3)}}}},Tags:["hb.enc_stand","-","h1_$(z1)","h2_$(z2)","h3_$(Z3)"]}

# 同じ位置のエンティティを一時的にTP
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:"stone",components:{enchantments:{"p_motion:tp":1}}}},Tags:["tp_before","hb.enc_stand"]}