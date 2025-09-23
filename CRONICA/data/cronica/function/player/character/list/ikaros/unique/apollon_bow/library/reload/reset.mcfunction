# =================================================================================================

##【 共通処理 】
# スニーク実行系共通の処理を行う

#【 スコア撤去 】
# 自身のスコアをすべてリセットし、使用中のプレイヤーがいない場合はスコアボードを撤去する
scoreboard players reset @s SCORE.cronica.WEAPON.ApollonBow.Reloading
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.Reloaded 0
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.ReloadStack 0
execute if entity @s[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.Reloading
execute if entity @s[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.Reloaded
execute if entity @s[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.ReloadStack
# =================================================================================================
