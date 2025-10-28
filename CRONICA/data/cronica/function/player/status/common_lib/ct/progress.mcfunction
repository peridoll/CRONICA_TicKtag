# =================================================================================================

## アイテム置き換え

# 状態スコア更新
$execute if score @s SCORE.cronica.MODE.$(ItemID) matches -1 run scoreboard players set @s SCORE.cronica.MODE.$(ItemID) 99
$scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 1

# 置き換え実施
#[データ書き出し]
$data modify storage cronica:temp ct.ItemID set value "$(ItemID)"
data modify storage cronica:temp ct.Model set value "common/charging/gauge_"
#[スコア書き出し]
scoreboard objectives add SCORE.cronica.MODE.temp dummy
$scoreboard players operation @s SCORE.cronica.MODE.temp = @s SCORE.cronica.MODE.$(ItemID)
scoreboard players remove @s SCORE.cronica.MODE.temp 100
execute store result storage cronica:temp ct.Value int 1 run scoreboard players get @s SCORE.cronica.MODE.temp
scoreboard objectives remove SCORE.cronica.MODE.temp
#[置き換え実行]
function cronica:player/status/inventory/model/macro/item_modify with storage cronica:temp ct
#[撤去]
data remove storage cronica:temp ct

# スコア管理
$scoreboard players reset @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack
# =================================================================================================
