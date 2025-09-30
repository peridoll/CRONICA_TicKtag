# =================================================================================================

##【 共通処理 】
# スニーク実行系共通の処理を行う

#【 スコア撤去 】
# 自身のスコアをすべてリセットし、使用中のプレイヤーがいない場合はスコアボードを撤去する
scoreboard players reset @s SCORE.cronica.WEAPON.ApollonBow.Charging
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.Charged 0
scoreboard players reset @s SCORE.cronica.WEAPON.ApollonBow.Shooting
execute unless entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.Charging=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.Charging
execute unless entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.Charging=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.Charged
execute unless entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.Charging=0..}] run scoreboard objectives remove SCORE.cronica.WEAPON.ApollonBow.Shooting
# =================================================================================================
