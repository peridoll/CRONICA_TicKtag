# =================================================================================================

##【 IMPULSE 】

  # スコア設置
    scoreboard objectives remove SCORE.cronica.CONFIG
    scoreboard objectives add SCORE.cronica.CONFIG dummy

  # 定数作成
  # /* 計算には設定済みのダミーユーザーを使用しなければいけない */
    scoreboard players set #-1 SCORE.cronica.CONFIG -1
    scoreboard players set #10 SCORE.cronica.CONFIG 10
    scoreboard players set #20 SCORE.cronica.CONFIG 20
    scoreboard players set #100 SCORE.cronica.CONFIG 100
# =================================================================================================
# ver 0.10.4
