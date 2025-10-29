# =================================================================================================

## アイテム置き換え

# 状態スコア更新
$execute if score @s SCORE.cronica_dev.MODE.$(ItemID) matches -1 run scoreboard players set @s SCORE.cronica_dev.MODE.$(ItemID) 99
$scoreboard players add @s SCORE.cronica_dev.MODE.$(ItemID) 1

# 置き換え実施
#[データ書き出し]
$data modify storage cronica_dev:temp ct.ItemID set value "$(ItemID)"
data modify storage cronica_dev:temp ct.Model set value "common/charging/gauge_"
#[スコア書き出し]
scoreboard objectives add SCORE.cronica_dev.MODE.temp dummy
$scoreboard players operation @s SCORE.cronica_dev.MODE.temp = @s SCORE.cronica_dev.MODE.$(ItemID)
scoreboard players remove @s SCORE.cronica_dev.MODE.temp 100
execute store result storage cronica_dev:temp ct.Value int 1 run scoreboard players get @s SCORE.cronica_dev.MODE.temp
scoreboard objectives remove SCORE.cronica_dev.MODE.temp
#[置き換え実行]
function cronica_dev:player/status/inventory/model/macro/item_modify with storage cronica_dev:temp ct
#[撤去]
data remove storage cronica_dev:temp ct

# スコア管理
$scoreboard players reset @s SCORE.cronica_dev.TIMER.$(ItemID).CoolTime.Stack
# =================================================================================================
