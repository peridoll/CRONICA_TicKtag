# =================================================================================================

##【 IMPULSE 】

  ## データ関連管理

    # スコア作成
      scoreboard objectives add SCORE.cronica.INCENTORY.FullExecute.SlotNum dummy
      scoreboard players set @s SCORE.cronica.INCENTORY.FullExecute.SlotNum -1

  ## マクロ本体実行

    # インベントリ内のすべてのアイテムについて関数を実行する
      $function cronica:player/inventory/full_execute/common/macro/main {function: "$(function)"}
# =================================================================================================
# ver 0.11.0
