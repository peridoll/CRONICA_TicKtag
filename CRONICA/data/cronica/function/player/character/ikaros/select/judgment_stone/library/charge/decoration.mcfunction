# =================================================================================================

##【 IMPULSE 】

  ## 装飾

    # パーティクル_1
      execute if score @s SCORE.cronica.SKILL.judgment_stone.Stack matches 1.. at @s positioned ~ ~1.5 ~ run \
        function cronica:player/character/ikaros/select/judgment_stone/library/charge/decoration_lib

    # パーティクル_2
      execute if score @s SCORE.cronica.SKILL.judgment_stone.Stack matches 2.. at @s positioned ~ ~1.5 ~ rotated ~30 ~ run \
        function cronica:player/character/ikaros/select/judgment_stone/library/charge/decoration_lib

    # パーティクル_3
      execute if score @s SCORE.cronica.SKILL.judgment_stone.Stack matches 3.. at @s positioned ~ ~1.5 ~ rotated ~-30 ~ run \
        function cronica:player/character/ikaros/select/judgment_stone/library/charge/decoration_lib

    # パーティクル_4
      execute if score @s SCORE.cronica.SKILL.judgment_stone.Stack matches 4.. at @s positioned ~ ~1.5 ~ rotated ~45 ~ run \
        function cronica:player/character/ikaros/select/judgment_stone/library/charge/decoration_lib

    # パーティクル_5
      execute if score @s SCORE.cronica.SKILL.judgment_stone.Stack matches 5.. at @s positioned ~ ~1.5 ~ rotated ~-45 ~ run \
        function cronica:player/character/ikaros/select/judgment_stone/library/charge/decoration_lib
# =================================================================================================
# ver 0.12.0
