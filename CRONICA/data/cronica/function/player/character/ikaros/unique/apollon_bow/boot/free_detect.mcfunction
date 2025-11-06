# =================================================================================================

##【 REPEAT 】

  ## 行動検知

    # 所持確認 (インベントリに存在するかを確認)
      execute as @a run function cronica:player/inventory/slot/macro/has_check {ItemID: "apollon_bow"}

    # リロード検知
      data remove storage cronica:temp ApollonArrow.ConfigStack
      execute store result storage cronica:temp ApollonArrow.ConfigStack int 1 run \
        scoreboard players get #CONFIG.cronica.INVENTORY.apollon_arrow.Stack SCORE.cronica.CONFIG
      execute \
          as @a[\
            tag = TAG.cronica.INVENTORY.apollon_bow.Has, \
            tag = TAG.cronica.STATUS.IsSneaking \
          ] \
          if predicate cronica:is_on_ground \
        run \
          function cronica:player/character/ikaros/unique/apollon_bow/library/reload/macro/check with storage cronica:temp ApollonArrow

  ## 再起処理

    # 再起処理
      execute if entity @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
        schedule function cronica:player/character/ikaros/unique/apollon_bow/boot/free_detect 1t

##【 REFRESH 】

  ## タグ管理

    # 所持タグ削除
      tag @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] remove TAG.cronica.INVENTORY.apollon_bow.Has
# =================================================================================================
# ver 0.11.0
