# =================================================================================================

##【 REPEAT 】

  ## パネルギミック管理

    # Lime：ジャンプパネル
      execute if predicate cronica:is_on_ground at @s if block ~ ~-1 ~ lime_shulker_box run \
        function cronica:world/gimmick/panel/lime_jump/run

    # Orange：ダッシュパネル
      # execute if predicate cronica:is_on_ground at @s if block ~ ~-1 ~ orange_shulker_box \
          if predicate cronica:is_sprinting \
        run \
          function cronica:world/gimmick/panel/orange_dash/run

    # Blue：ストリームパネル
      # execute if predicate cronica:is_on_ground at @s if block ~ ~-1 ~ blue_shulker_box run \
        function cronica:world/gimmick/panel/blue_stream/run

    # Purple：テレポートパネル
      # execute if predicate cronica:is_on_ground at @s if block ~ ~-1 ~ purple_shulker_box run \
        function cronica:world/gimmick/panel/purple_teleport/charge
# =================================================================================================
# ver 0.13.0
