# =================================================================================================

# スコア作成
$scoreboard objectives add SCORE.cronica.STATUS.$(effect) dummy
$scoreboard players add @s SCORE.cronica.STATUS.$(effect) 0

# エフェクト管理:通常時
$execute if score @s SCORE.cronica.STATUS.$(effect) matches 0 unless score @s SCORE.cronica.STATUS.$(effect) matches $(base_value) run scoreboard objectives add SCORE.cronica.TIMER.$(effect).base dummy
$execute if score @s SCORE.cronica.STATUS.$(effect) matches 0 unless score @s SCORE.cronica.STATUS.$(effect) matches $(base_value) run scoreboard players operation @s SCORE.cronica.TIMER.$(effect).base = @s SCORE.cronica.STATUS.$(effect)
$execute if score @s SCORE.cronica.STATUS.$(effect) matches 0 unless score @s SCORE.cronica.STATUS.$(effect) matches $(base_value) run scoreboard players add @s SCORE.cronica.TIMER.$(effect).base -1
$data modify storage cronica:temp $(effect).ID
$execute store result storage cronica:temp $(effect).Value int 1 run scoreboard players get @s SCORE.cronica.TIMER.$(effect).base




$execute if score @s SCORE.cronica.STATUS.$(effect) matches 0 unless score @s SCORE.cronica.STATUS.$(effect) matches $(base_value) run effect give @s minecraft:$(effect) infinite $(base_value) true

# エフェクト管理:増減時
$execute unless score @s SCORE.cronica.STATUS.$(effect) matches 0 run function cronica:player/status/effect/basic/calc {effect: $(effect), base_value: $(base_value), rev_effect: $(rev_effect)}

# スコア撤去
$execute unless entity @s[scores={SCORE.cronica.STATUS.$(effect)=..-1}] unless entity @s[scores={SCORE.cronica.STATUS.$(effect)=1..}] run scoreboard objectives remove SCORE.cronica.STATUS.$(effect)
# =================================================================================================