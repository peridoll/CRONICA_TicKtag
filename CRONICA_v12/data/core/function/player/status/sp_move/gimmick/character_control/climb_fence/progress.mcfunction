# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # スコア管理
      scoreboard players reset @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack
      scoreboard players add @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count 1

  ## 装飾

    # 画面表示
      title @s times 0 60 20
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 1 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"|","color":"aqua","bold":true,"underlined":true},{"text":"|||||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 2 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"||","color":"aqua","bold":true,"underlined":true},{"text":"||||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 3 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"|||","color":"aqua","bold":true,"underlined":true},{"text":"|||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 4 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"||||","color":"aqua","bold":true,"underlined":true},{"text":"||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 5 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"|||||","color":"aqua","bold":true,"underlined":true},{"text":"|||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 6 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"||||||","color":"aqua","bold":true,"underlined":true},{"text":"||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 7 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"|||||||","color":"aqua","bold":true,"underlined":true},{"text":"|||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 8 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"||||||||","color":"aqua","bold":true,"underlined":true},{"text":"||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 9 run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"|||||||||","color":"aqua","bold":true,"underlined":true},{"text":"|","color":"gray","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
      execute if score @s SCORE.cronica.STATUS.SpMove.climb_fence.Charge.Stack.Count matches 10.. run title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"||||||||||","color":"aqua","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
# =================================================================================================
# ver 0.12.0
