#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#◆◇◆◇◆水流弾:ディスプレイ◆◇◆◇◆

#-=active実行=-

#更新状況 ver 3.0.2

#player/skill/aqua_jet/display

#■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ◆◇:水流弾:◇◆

## <スコア:固有スキル>
#[初期値]
execute as @s run tag @s add TAG.reuse
execute as @s[scores={SCORE_MODE.aqua_jet=0..}] run tag @s remove TAG.reuse
execute as @s[tag=TAG.reuse] run scoreboard objectives add SCORE_MODE.aqua_jet dummy "水流弾"
execute as @s[tag=TAG.reuse] run scoreboard players set @s SCORE_MODE.aqua_jet 0
execute as @s[tag=TAG.reuse] run tag @s remove TAG.reuse

## <水流弾:aqua_jet>
#[CHARGE_FULL]
execute as @s[scores={SCORE_MODE.aqua_jet=0}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:full,ItemStat:enable,Unbreakable:true,HideFlags:63,Enchantments:[{id:"unbreaking"}],CustomModelData:107}
#[NOT_USE]
execute as @s[scores={SCORE_MODE.aqua_jet=1}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:full,ItemStat:disable,Unbreakable:true,HideFlags:63,Enchantments:[{id:"unbreaking"}],CustomModelData:207}

## <ダメージ値別>
execute as @s[scores={SCORE_MODE.aqua_jet=101}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:100}
execute as @s[scores={SCORE_MODE.aqua_jet=102}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:90}
execute as @s[scores={SCORE_MODE.aqua_jet=103}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:80}
execute as @s[scores={SCORE_MODE.aqua_jet=104}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:70}
execute as @s[scores={SCORE_MODE.aqua_jet=105}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:60}
execute as @s[scores={SCORE_MODE.aqua_jet=106}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:50}
execute as @s[scores={SCORE_MODE.aqua_jet=107}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:40}
execute as @s[scores={SCORE_MODE.aqua_jet=108}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:30}
execute as @s[scores={SCORE_MODE.aqua_jet=109}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:20}
execute as @s[scores={SCORE_MODE.aqua_jet=110}] run item replace entity @s enderchest.9 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"水流弾","color":"aqua","bold":true}'},ItemName:aqua_jet,ItemCategory:skill,ItemCharge:progress,ItemStat:disable,HideFlags:63,CustomModelData:207,Damage:10}
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■