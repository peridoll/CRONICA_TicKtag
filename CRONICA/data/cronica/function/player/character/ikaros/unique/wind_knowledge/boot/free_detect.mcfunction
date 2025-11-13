# =================================================================================================

##【 REPEAT 】

  ## 行動検知

    # 所持確認 (インベントリに存在するかを確認)
      execute as @a run function core:player/inventory/has_check/macro/has_check {ItemID: "wind_knowledge"}

    # リロード検知
      execute \
          as @a[\
            tag = TAG.cronica.INVENTORY.wind_knowledge.Has, \
            tag = TAG.cronica.STATUS.ItemUsing \
          ] \
          if predicate core:is_flying \
          if predicate core:is_sneaking \
        run \
          function cronica:player/character/ikaros/unique/wind_knowledge/run

  ## 再起処理

    # 再起処理
      execute if entity @a[tag = TAG.cronica.INVENTORY.wind_knowledge.Has] run \
        schedule function cronica:player/character/ikaros/unique/wind_knowledge/boot/free_detect 1t

##【 REFRESH 】

  ## タグ管理

    # 所持タグ削除
      tag @a[tag = TAG.cronica.INVENTORY.wind_knowledge.Has] remove TAG.cronica.INVENTORY.wind_knowledge.Has
# =================================================================================================
# ver 0.11.0
