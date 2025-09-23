# =================================================================================================

##【 スタック処理 】
# 一定割合ごとにスタックを増加させて画面に表示

#【 画面表示 】
# スタックごとに分岐して表示を変える
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 0 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|","color":"green","bold":true,"underlined":true},{"text":"||||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 1 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"||","color":"green","bold":true,"underlined":true},{"text":"|||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 2 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||","color":"green","bold":true,"underlined":true},{"text":"||||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 3 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"||||","color":"green","bold":true,"underlined":true},{"text":"|||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 4 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||||","color":"green","bold":true,"underlined":true},{"text":"||||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 5 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"||||||","color":"green","bold":true,"underlined":true},{"text":"|||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 6 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||||||","color":"green","bold":true,"underlined":true},{"text":"||","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 7 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"||||||||","color":"green","bold":true,"underlined":true},{"text":"|","color":"gray","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]
execute if score @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack matches 8 run title @s actionbar [{"text":"RELOAD","color":"gray","bold":false},{"text":"[","color":"dark_green","bold":false},{"text":"|||||||||","color":"green","bold":true,"underlined":true},{"text":"]","color":"dark_green","bold":false},{"text":"RELOAD","color":"gray","bold":false}]

#【 スコア管理 】
# スタックを1増加させ、リロード時間をリセットする
scoreboard players add @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack 1
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.Reloading 0
# =================================================================================================
