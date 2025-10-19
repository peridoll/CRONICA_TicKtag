# =================================================================================================

##【 共通処理 】

  ## キャラクター関連の共通処理を実行
  # MasterID     : brave        / ikaros         / etc..
  # MasterType   : unique       / select         / etc..
  # ItemID       : master_sword / flying_feather / etc..

  # 所持アイテム置き換え、スコアボード作成、コンフィグ読み込み、メイン処理呼び出し、CT処理呼び出し などを実行
function cronica:player/status/common_lib/character_run {MasterID: "sleet", MasterType: "select", ItemID: "test_item"}
# =================================================================================================

#強制終了
execute as @s[tag=TAG.cronica.preview] if score @s SCORE.cronica.TIMER.test_item.reset_request matches 100.. run function cronica:player/character/sleet/select/test_item/library/reset_request
scoreboard players add @a[tag=TAG.cronica.preview] SCORE.cronica.TIMER.test_item.reset_request 1

# プレビューの更新
execute as @a[tag=TAG.cronica.preview] at @s run function cronica:player/character/sleet/select/test_item/library/angle_45
execute as @a[tag=TAG.cronica.preview] at @s run function cronica:player/character/sleet/select/test_item/library/preview_tick

# プレビュー対象がいる限りループ継続
execute if entity @a[tag=TAG.cronica.preview] run schedule function cronica:player/character/sleet/select/test_item/library/preview_main 1t

# =================================================================================================
