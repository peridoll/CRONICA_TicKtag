# =================================================================================================

##【 IMPULSE 】








# スコア設置
$scoreboard objectives add SCORE.cronica_dev.STATUS.$(id)_new dummy
$scoreboard players operation @s SCORE.cronica_dev.STATUS.$(id)_new = @s SCORE.cronica_dev.STATUS.$(id)
$scoreboard players add @s SCORE.cronica_dev.STATUS.$(id)_new $(base_value)

# データ管理
$data modify storage cronica_dev:temp $(id).Reverse set value "$(rev_effect)"
$execute if data storage cronica_dev:temp $(id){Reverse:"$(id)"} if score @s SCORE.cronica_dev.STATUS.$(id)_new matches ..-1 run scoreboard players set @s SCORE.cronica_dev.STATUS.$(id)_new 0

# 変動処理
$execute if score @s SCORE.cronica_dev.STATUS.$(id)_new matches 1.. run data modify storage cronica_dev:temp $(id).ID set value "$(effect)"
$execute if score @s SCORE.cronica_dev.STATUS.$(id)_new matches ..-1 run data modify storage cronica_dev:temp $(id).ID set value "$(rev_effect)"
$execute if score @s SCORE.cronica_dev.STATUS.$(id)_new matches ..-1 run scoreboard players operation @s SCORE.cronica_dev.STATUS.$(id)_new *= #-1 SCORE.cronica_dev.CONFIG

# エフェクト撤去
$effect clear @s minecraft:$(effect)
$execute unless data storage cronica_dev:temp $(id){Reverse:"$(id)"} run effect clear @s minecraft:$(rev_effect)

# エフェクト処理
$execute unless score @s SCORE.cronica_dev.STATUS.$(id)_new matches 0 run tag @s add TAG.cronica_dev.STATUS.$(id).Fluctuation
$execute as @s[tag=TAG.cronica_dev.STATUS.$(id).Fluctuation] run scoreboard players remove @s SCORE.cronica_dev.STATUS.$(id)_new 1
$execute as @s[tag=TAG.cronica_dev.STATUS.$(id).Fluctuation] store result storage cronica_dev:temp $(id).Value int 1 run scoreboard players get @s SCORE.cronica_dev.STATUS.$(id)_new
$execute as @s[tag=TAG.cronica_dev.STATUS.$(id).Fluctuation] run function cronica_dev:player/status/effect/basic/common/calc_lib with storage cronica_dev:temp $(id)
$execute as @s[tag=TAG.cronica_dev.STATUS.$(id).Fluctuation] run tag @s remove TAG.cronica_dev.STATUS.$(id).Fluctuation

# スコア撤去
$scoreboard objectives remove SCORE.cronica_dev.STATUS.$(id)_new
$execute unless entity @a[scores={SCORE.cronica_dev.STATUS.$(id)=..-1}] unless entity @a[scores={SCORE.cronica_dev.STATUS.$(id)=1..}] run scoreboard objectives remove SCORE.cronica_dev.STATUS.$(id)
$data remove storage cronica_dev:temp $(id)
# =================================================================================================
# ver 0.10.4
