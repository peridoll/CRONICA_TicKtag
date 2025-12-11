# =================================================================================================

##【 REPEAT 】

  ## キャラクターコントロール管理

    # 柵乗り越え
      execute \
          as @s[tag = TAG.cronica.STATUS.IsSneaking] \
          at @s \
            rotated ~ 0 \
            if block ~ ~ ~ #cronica:fence \
            if block ~ ~1 ~ #cronica:no_collision \
        run \
          function cronica:player/action/sp_move/climb_fence/charge
      execute if score @s SCORE.cronica.ACTION.SpMove.climb_fence.Charging matches 1.. run \
        function cronica:player/action/sp_move/climb_fence/main

    # スライディング

    # 崖つかまり/壁ジャンプ

    # バニーホップ

    # ジャストガード

    # スマートな着地

# =================================================================================================
# ver 0.13.0
