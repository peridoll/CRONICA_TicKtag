# =================================================================================================

##【 REPEAT 】

  ## パネルギミック管理

    # Lime：ジャンプパネル
      execute if predicate core:is_on_ground at @s if block ~ ~-1 ~ lime_shulker_box run \
        function core:player/status/sp_move/gimmick/action_panel/lime_jump/run

    # Orange：ダッシュパネル
      # execute if predicate core:is_on_ground at @s if block ~ ~-1 ~ orange_shulker_box \
          if predicate core:is_sprinting \
        run \
          function core:player/status/sp_move/gimmick/action_panel/orange_dash/run

    # Blue：ストリームパネル
      # execute if predicate core:is_on_ground at @s if block ~ ~-1 ~ blue_shulker_box run \
        function core:player/status/sp_move/gimmick/action_panel/blue_stream/run

    # Purple：テレポートパネル
      # execute if predicate core:is_on_ground at @s if block ~ ~-1 ~ purple_shulker_box run \
        function core:player/status/sp_move/gimmick/action_panel/purple_teleport/charge

  ## キャラクターコントロール管理

    # 柵乗り越え
      execute \
          as @s[tag = TAG.cronica.STATUS.IsSneaking] \
          at @s \
            rotated ~ 0 \
            if block ~ ~ ~ #core:fence \
            if block ~ ~1 ~ #core:no_collision \
        run \
          function core:player/status/sp_move/gimmick/character_control/climb_fence/charge
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charging matches 1.. run \
        function core:player/status/sp_move/gimmick/character_control/climb_fence/main

    # スライディング

    # 崖つかまり/壁ジャンプ

    # バニーホップ

    # ジャストガード

    # スマートな着地

# =================================================================================================
# ver 0.12.0
