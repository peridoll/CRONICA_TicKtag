# =================================================================================================

##【 共通処理 】

  ## キャラクター関連の共通処理を実行
  # MasterID     : brave        / ikaros         / etc..
  # MasterType   : unique       / select         / etc..
  # ItemID       : master_sword / flying_feather / etc..

  # 所持アイテム置き換え、スコアボード作成、コンフィグ読み込み、メイン処理呼び出し、CT処理呼び出し などを実行
function cronica:player/status/common_lib/character_run {MasterID: "sleet", MasterType: "select", ItemID: "test_item"}
# =================================================================================================
#スコア、タグ設置
tag @s add TAG.cronica.preview
scoreboard objectives add SCORE.cronica.CALC.test_item.Angle45 dummy
scoreboard objectives add SCORE.cronica.TIMER.test_item.reset_request dummy
scoreboard players set @s SCORE.cronica.CALC.test_item.Angle45 0
scoreboard players set @s SCORE.cronica.TIMER.test_item.reset_request 0

execute if entity @a[tag=TAG.cronica.preview] run function cronica:player/character/sleet/select/test_item/library/preview_main
# =================================================================================================
