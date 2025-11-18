# =================================================================================================

##【 REPEAT 】

  ## 行動検知

    # 所持確認 (インベントリに存在するかを確認)
      execute as @a run function core:player/inventory/has_check/macro/has_check {ItemID: "wind_knowledge"}

    # モードスコア設置
      scoreboard objectives add SCORE.cronica.MODE.wind_knowledge dummy
      scoreboard players add @a[tag = TAG.cronica.INVENTORY.wind_knowledge.Has] SCORE.cronica.MODE.wind_knowledge 0

    # 発動検知
      execute \
          as @a[\
            tag = TAG.cronica.INVENTORY.wind_knowledge.Has, \
            tag = TAG.cronica.STATUS.ItemUsing \
          ] \
          if score @s SCORE.cronica.MODE.wind_knowledge matches 0 \
          unless predicate core:is_on_ground \
        run \
          function cronica:player/character/ikaros/unique/wind_knowledge/run

    # モードスコア撤去
      execute if score @s SCORE.cronica.MODE.wind_knowledge matches 0 run \
        scoreboard players reset @s SCORE.cronica.MODE.wind_knowledge
      execute unless entity @a[scores = {SCORE.cronica.MODE.wind_knowledge = -99.. }] run \
        scoreboard objectives remove SCORE.cronica.MODE.wind_knowledge

  ## 再起処理

    # 再起処理
      execute if entity @a[tag = TAG.cronica.INVENTORY.wind_knowledge.Has] run \
        schedule function cronica:player/character/ikaros/unique/wind_knowledge/boot/free_detect 1t

##【 REFRESH 】

  ## タグ管理

    # 所持タグ削除
      tag @a[tag = TAG.cronica.INVENTORY.wind_knowledge.Has] remove TAG.cronica.INVENTORY.wind_knowledge.Has
# =================================================================================================
# ver 0.12.0
