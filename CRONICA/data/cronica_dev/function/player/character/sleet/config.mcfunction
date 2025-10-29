# =================================================================================================

##【 DESCRIPTION 】

# コンフィグをセットする場合のスコアは、SCORE.cronica_dev.CONFIG を使用する
#
# 例）
# 太陽神の弓(apollon_bow)のリロード時間を3秒に設定する場合 (20t = 1s)
# scoreboard players set #CONFIG.cronica_dev.WEAPON.apollon_bow.Reload SCORE.cronica_dev.CONFIG 60
#
# =================================================================================================

##【 IMPULSE 】

  ## UNIQUE

  ## SELECT

# =================================================================================================

##【 DEV STORAGE 】

  ## UNIQUE

  ## SELECT

    # 水流弾
      execute unless entity @s run scoreboard objectives add SCORE.cronica_dev.MODE.aqua_jet dummy

# =================================================================================================
# ver 0.10.4
