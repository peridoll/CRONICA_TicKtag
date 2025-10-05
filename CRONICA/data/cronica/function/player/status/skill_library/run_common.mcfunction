# =================================================================================================

## アイテム置き換え
function cronica:player/status/inventory/model/runed {MasterName: "$(MasterName)", MasterType: "$(MasterType)", ItemID: "$(ItemID)"}

## コンフィグ読み込み
$function cronica:player/character/$(MasterName)/$(MasterType)/$(ItemID)/config

## スコア管理

# アイテムモード
$scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
$scoreboard players set @s SCORE.cronica.MODE.$(ItemID) 0

# 実行時間
$scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).ActivateTime dummy
$scoreboard players set @s SCORE.cronica.TIMER.$(ItemID).ActivateTime 0

# クールタイム
#[実行値作成]
$scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime dummy
$scoreboard players set @s SCORE.cronica.TIMER.$(ItemID).CoolTime 0
#[目標値作成]
$scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal dummy
#[目標値設定取得]
$scoreboard players operation @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal = #CONFIG.cronica.SKILL.$(ItemID).CoolTime SCORE.cronica.CONFIG
#[目標値短縮]
$scoreboard players set @s[tag=TAG.cronica.CT_ZERO] SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal 20
#[積算値作成]
$scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack dummy
$scoreboard players set @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack 0
#[積算目標値作成]
$scoreboard objectives add SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal dummy
$scoreboard players operation @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal = @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal
$scoreboard players operation @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal /= #20 SCORE.cronica.CONFIG

## 後続発火
$schedule function cronica:player/character/$(MasterName)/$(MasterType)/$(ItemID)/library/main 1t
$schedule function cronica:player/status/skill_library/ct/main 1t {MasterName: "$(MasterName)", MasterType: "$(MasterType)", ItemID: "$(ItemID)"}
# =================================================================================================
