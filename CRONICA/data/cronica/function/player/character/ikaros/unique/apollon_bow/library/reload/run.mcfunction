# =================================================================================================

##【 IMPULSE 】

  ## 状態管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Reloading dummy
      scoreboard players add @s SCORE.cronica.WEAPON.apollon_bow.Reloading 1

    # タグ管理
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Reloaded
      tag @s add TAG.cronica.WEAPON.apollon_bow.Reloading

## 後続処理呼び出し

    # リロード中処理呼び出し
      schedule function cronica:player/character/ikaros/unique/apollon_bow/library/reload/main 1t
# =================================================================================================
# ver 0.10.3
