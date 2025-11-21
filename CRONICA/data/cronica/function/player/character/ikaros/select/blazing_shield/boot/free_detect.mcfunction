# =================================================================================================

##【 REPEAT 】

  ## 行動検知

    # 所持確認 (インベントリに存在するかを確認)
      execute as @a run function core:player/inventory/has_check/macro/has_check { ItemID : "blazing_shield"}

  ## 再起処理

    # 再起処理
      execute if entity @a[tag = TAG.cronica.INVENTORY.blazing_shield.Has] run \
        schedule function cronica:player/character/ikaros/select/blazing_shield/boot/free_detect 1t

##【 REFRESH 】

  ## タグ管理

    # 所持タグ削除
      tag @a[tag = TAG.cronica.INVENTORY.blazing_shield.Has] remove TAG.cronica.INVENTORY.blazing_shield.Has
# =================================================================================================
# ver 0.12.0
