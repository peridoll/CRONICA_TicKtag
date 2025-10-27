# =================================================================================================

##【 REPEAT 】

  ## 状態管理

    # 移動不可付与
      # function cronica:player/status/effect/basic/calculation/set_top {ID: "Speed", Amount: -10}

  ## 後続処理呼び出し

    # 使用終了検知
      execute if entity @s[tag = TAG.cronica.WEAPON.apollon_bow.Reloaded] run function cronica:player/status/common_lib/charge/cancel with storage cronica:temp Reload
      tag @s[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] add TAG.cronica.WEAPON.apollon_bow.Reloaded

    # 進捗処理
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack >= @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Goal run \
        function cronica:player/status/common_lib/charge/progress with storage cronica:temp Reload

    # 完了処理
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reloading >= @s SCORE.cronica.WEAPON.apollon_bow.Reload.Goal run \
        function cronica:player/status/common_lib/charge/complete with storage cronica:temp Reload
# =================================================================================================
# ver 0.10.4
