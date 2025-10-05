# =================================================================================================

# スコア設置
$scoreboard objectives add SCORE.cronica.STATUS.$(id)_new dummy
$scoreboard players operation @s SCORE.cronica.STATUS.$(id)_new = @s SCORE.cronica.STATUS.$(id)
$scoreboard players add @s SCORE.cronica.STATUS.$(id)_new $(base_value)

# データ管理
$data modify storage cronica:temp $(id).Reverse set value "$(rev_effect)"
$execute if data storage cronica:temp $(id){Reverse:"$(id)"} if score @s SCORE.cronica.STATUS.$(id)_new matches ..-1 run scoreboard players set @s SCORE.cronica.STATUS.$(id)_new 0

# 変動処理
$execute if score @s SCORE.cronica.STATUS.$(id)_new matches 1.. run data modify storage cronica:temp $(id).ID set value "$(effect)"
$execute if score @s SCORE.cronica.STATUS.$(id)_new matches ..-1 run data modify storage cronica:temp $(id).ID set value "$(rev_effect)"
$execute if score @s SCORE.cronica.STATUS.$(id)_new matches ..-1 run scoreboard players operation @s SCORE.cronica.STATUS.$(id)_new *= #-1 SCORE.cronica.CONFIG

# エフェクト撤去
$effect clear @s minecraft:$(effect)
$execute unless data storage cronica:temp $(id){Reverse:"$(id)"} run effect clear @s minecraft:$(rev_effect)

# エフェクト処理
$execute unless score @s SCORE.cronica.STATUS.$(id)_new matches 0 run tag @s add TAG.cronica.STATUS.$(id).Fluctuation
$execute as @s[tag=TAG.cronica.STATUS.$(id).Fluctuation] run scoreboard players remove @s SCORE.cronica.STATUS.$(id)_new 1
$execute as @s[tag=TAG.cronica.STATUS.$(id).Fluctuation] store result storage cronica:temp $(id).Value int 1 run scoreboard players get @s SCORE.cronica.STATUS.$(id)_new
$execute as @s[tag=TAG.cronica.STATUS.$(id).Fluctuation] run function cronica:player/status/effect/basic/common/calc_lib with storage cronica:temp $(id)
$execute as @s[tag=TAG.cronica.STATUS.$(id).Fluctuation] run tag @s remove TAG.cronica.STATUS.$(id).Fluctuation

# スコア撤去
$scoreboard objectives remove SCORE.cronica.STATUS.$(id)_new
$execute unless entity @s[scores={SCORE.cronica.STATUS.$(id)=..-1}] unless entity @s[scores={SCORE.cronica.STATUS.$(id)=1..}] run scoreboard objectives remove SCORE.cronica.STATUS.$(id)
$data remove storage cronica:temp $(id)
# =================================================================================================
