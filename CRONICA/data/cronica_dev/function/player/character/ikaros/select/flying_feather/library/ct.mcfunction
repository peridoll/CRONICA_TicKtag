# =================================================================================================
#
# CRONICA - Ikaros - Flying Feather
#
# run
# |
# main
# └─ stop_ceiling
# └─ stop_stun
# └─ flaping
# └─ finish
#   └─ reset
# |
# ct
#
# =================================================================================================

##【継続処理】

  # 初回スタック進行
    execute \
        as @a[scores = {SCORE.cronica_dev.TIMER.flying_feather.CoolTime = 0..}] \
          if score @s SCORE.cronica_dev.TIMER.flying_feather.CoolTime.Stack matches 0 \
      run \
        function cronica_dev:player/status/common_lib/ct/progress {MasterID: "ikaros", MasterType: "select", ItemID: "flying_feather"}

  # スコア管理
    scoreboard players add @a[scores = {SCORE.cronica_dev.TIMER.flying_feather.CoolTime = 0..}, tag =! TAG.cronica_dev.GAMING.Inactive] SCORE.cronica_dev.TIMER.flying_feather.CoolTime 1
    scoreboard players add @a[scores = {SCORE.cronica_dev.TIMER.flying_feather.CoolTime = 0..}, tag =! TAG.cronica_dev.GAMING.Inactive] SCORE.cronica_dev.TIMER.flying_feather.CoolTime.Stack 1

  # スタック進行
    execute \
        as @a[scores = {SCORE.cronica_dev.TIMER.flying_feather.CoolTime = 0..}] \
          if score @s SCORE.cronica_dev.TIMER.flying_feather.CoolTime.Stack >= @s SCORE.cronica_dev.TIMER.flying_feather.CoolTime.Stack.Goal \
          at @s \
      run \
        function cronica_dev:player/status/common_lib/ct/progress {MasterID: "ikaros", MasterType: "select", ItemID: "flying_feather"}

  # チャージ完了
    execute \
        as @a[scores = {SCORE.cronica_dev.TIMER.flying_feather.CoolTime = 0..}] \
          if score @s SCORE.cronica_dev.TIMER.flying_feather.CoolTime >= @s SCORE.cronica_dev.TIMER.flying_feather.CoolTime.Goal \
          at @s \
      run \
        function cronica_dev:player/status/common_lib/ct/finish {MasterID: "ikaros", MasterType: "select", ItemID: "flying_feather"}

  # リセット
    execute as @a[scores = {SCORE.cronica_dev.TIMER.flying_feather.CoolTime = 0..}, tag =! TAG.cronica_dev.GAMING] run \
      function cronica_dev:player/status/common_lib/ct/reset {ItemID: "flying_feather"}

  # ループ処理
    execute if entity @a[scores = {SCORE.cronica_dev.TIMER.flying_feather.CoolTime = 0..}] run \
      schedule function cronica_dev:player/character/ikaros/select/flying_feather/library/ct 1t
# =================================================================================================
# ver 0.10.3
