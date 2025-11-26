# =================================================================================================

##【 IMPULSE 】

  ## 関数呼び出し

    # 弾数確認
      scoreboard objectives add SCORE.cronica.SKILL.judgment_stone.Stack dummy
      execute if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count matches ..10 run \
        scoreboard players operation @s SCORE.cronica.SKILL.judgment_stone.Stack = @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count
      execute if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count matches ..10 run \
        scoreboard players operation @s SCORE.cronica.SKILL.judgment_stone.Stack /= #2 SCORE.cronica.CONFIG

  ## 装飾

    # パーティクル
      # particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.05 30 force

    # サウンド
      # playsound minecraft:block.beacon.activate player @a ~ ~ ~ 2 1

    # 弾丸召喚

      # パーティクル_1
        execute if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count matches 2 at @s run \
          function cronica:player/character/ikaros/select/judgment_stone/library/charge/bullet/macro/summon { Number : 1 }
      # パーティクル_2
        execute if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count matches 4 at @s run \
          function cronica:player/character/ikaros/select/judgment_stone/library/charge/bullet/macro/summon { Number : 2 }
      # パーティクル_3
        execute if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count matches 6 at @s run \
          function cronica:player/character/ikaros/select/judgment_stone/library/charge/bullet/macro/summon { Number : 3 }
      # パーティクル_4
        execute if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count matches 8 at @s run \
          function cronica:player/character/ikaros/select/judgment_stone/library/charge/bullet/macro/summon { Number : 4 }
      # パーティクル_5
        execute if score @s SCORE.cronica.CHARACTER.judgment_stone.charge.Stack.Count matches 10 at @s run \
          function cronica:player/character/ikaros/select/judgment_stone/library/charge/bullet/macro/summon { Number : 5 }
# =================================================================================================
# ver 0.12.0
