
# 太陽神ノ弓：リロード時間
scoreboard players set #CONFIG.cronica.WEAPON.ApollonBow.ReloadTime SCORE.cronica.CONFIG 40
scoreboard players operation #CONFIG.cronica.WEAPON.ApollonBow.ReloadStackTime SCORE.cronica.CONFIG = #CONFIG.cronica.WEAPON.ApollonBow.ReloadTime SCORE.cronica.CONFIG
scoreboard players operation #CONFIG.cronica.WEAPON.ApollonBow.ReloadStackTime SCORE.cronica.CONFIG /= #10 SCORE.cronica.CONFIG
# 太陽神ノ弓：黄昏チャージ時間
scoreboard players set #CONFIG.cronica.WEAPON.ApollonBow.ChargeTwilightTime SCORE.cronica.CONFIG 60
