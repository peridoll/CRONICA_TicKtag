# =================================================================================================

##【 共通処理 】

## キャラクター関連の共通処理を実行
# MasterID   : brave        / ikaros         / etc...
# MasterType : unique       / select         / etc...
# ItemID     : master_sword / judgment_stone / etc...

# 所持アイテム置き換え、スコアボード作成、コンフィグ読み込み、メイン処理呼び出し、CT処理呼び出し などを実行
function cronica:player/status/common_lib/character_run {MasterID: "ikaros", MasterType: "select", ItemID: "judgment_stone"}
# =================================================================================================

##【 固有処理 】
execute as @s at @s positioned ^ ^ ^3 run summon lightning_bolt ~ ~ ~
# =================================================================================================
