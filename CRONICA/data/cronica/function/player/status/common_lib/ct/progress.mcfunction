# =================================================================================================

## アイテム置き換え

# 状態スコア更新
$execute if score @s SCORE.cronica.MODE.$(ItemID) matches -1 run scoreboard players set @s SCORE.cronica.MODE.$(ItemID) 99
$scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 1

# 置き換え実施
data modify storage cronica:temp ct.ItemID set value "$(ItemID)"
data modify storage cronica:temp ct.Model set value "common/chargoing_"
$execute store result storage cronica:temp ct.Value int 1 run scoreboard players get @s SCORE.cronica.MODE.$(ItemID)
function cronica:player/status/common_lib/modify with storage cronica:temp ct
data remove storage cronica:temp ct

# スコア管理
$scoreboard players reset @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack
# =================================================================================================
