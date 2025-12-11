# =================================================================================================

##【 DETECTION 】
# 行動検知

  ## 検知処理

    # タグ付け
      # tag @s add TAG.cronica.STATUS.Combat.Defense.Potion

    # ポーションダメージ時
      #function cronica:player/action/combat/defense

    # 実績剥奪
      advancement revoke @s only cronica:status/defense/potion

  ## 開発

    # デバッグ
      # tellraw @s[tag = dev] ["",{"text":"[CRONICA] ","color":"dark_purple"},{"text":"Detected: Potion Defense","color":"aqua"}]
# =================================================================================================
# ver 0.13.0
