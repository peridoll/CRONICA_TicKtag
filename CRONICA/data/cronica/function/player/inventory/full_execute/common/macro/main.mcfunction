# =================================================================================================

##【 REPEAT 】

  ## データ関連管理

    # スコアボード増加
      $scoreboard players add @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum 1

    # ストレージ初期化
      $data remove storage cronica:temp FullExecute_$(Function).SlotNum

    # スロット番号取得
      $execute store result storage cronica:temp FullExecute_$(Function).SlotNum int 1 run scoreboard players get @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum

    # アイテムデータ取得
      $function cronica:player/inventory/full_execute/common/macro/get_item_data with storage cronica:temp FullExecute_$(Function)

  ## 関数実行

    # 渡された引数の関数を実行
      $function cronica:player/inventory/full_execute/func/$(function)/macro/execute with storage cronica:temp FullExecute_$(Function)

  ## 再起処理

    # インベントリ内のすべてのアイテムについて関数を実行するか判定
      $execute if score @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum matches ..35 run function cronica:player/inventory/full_execute/common/macro/main with storage cronica:temp FullExecute_$(Function)
      $execute if score @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum matches 36.. run function cronica:player/inventory/full_execute/common/macro/finish with storage cronica:temp FullExecute_$(Function)
# =================================================================================================
# ver 0.11.0
