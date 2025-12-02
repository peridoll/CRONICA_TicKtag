# =================================================================================================

##【 IMPULSE 】

  ## スコア管理

    # 進行度カウントリセット＆加算
      scoreboard players reset @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack
      scoreboard players add @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count 1

  ## 装飾

    # 表示時間設定
      title @s times 0 60 20

    # 進行度表示
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 0 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 1 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|","color":"green","bold":true,"underlined":true},{"text":"||||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 2 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"||","color":"green","bold":true,"underlined":true},{"text":"|||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 3 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||","color":"green","bold":true,"underlined":true},{"text":"||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 4 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"||||","color":"green","bold":true,"underlined":true},{"text":"|||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 5 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||||","color":"green","bold":true,"underlined":true},{"text":"||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 6 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"||||||","color":"green","bold":true,"underlined":true},{"text":"|||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 7 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||||||","color":"green","bold":true,"underlined":true},{"text":"||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 8 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"||||||||","color":"green","bold":true,"underlined":true},{"text":"|","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.WEAPON.apollon_bow.Reload.Stack.Count matches 9 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||||||||","color":"green","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
# =================================================================================================
# ver 0.13.0
