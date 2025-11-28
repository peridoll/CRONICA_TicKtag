# =================================================================================================

##【 MACRO LIBRARY 】
# 手動実行不可, 鎖状実行

  ## 特殊スロット確認

    # オフハンド
      $data modify storage cronica:temp FullExecute_$(Function).OtherFunc set value "weapon.offhand"
      $execute if entity @s[ tag =! TAG.cronica.INVENTORY.UsingEscapeSlot, gamemode =! creative ] run \
        function cronica:player/inventory/full_execute/common/macro/other_func with storage cronica:temp FullExecute_$(Function)

    # カーソル
      $data modify storage cronica:temp FullExecute_$(Function).OtherFunc set value "player.cursor"
      $execute if entity @s[ tag =! TAG.cronica.INVENTORY.UsingEscapeSlot, gamemode =! creative ] run \
        function cronica:player/inventory/full_execute/common/macro/other_func with storage cronica:temp FullExecute_$(Function)

  ## データ管理

    # スコア削除
      $scoreboard objectives remove SCORE.cronica.INVENTORY.FullExecute.$(Function).SlotNum

    # ストレージ初期化
      $data remove storage cronica:temp FullExecute_$(Function)
# =================================================================================================
# ver 0.13.0
