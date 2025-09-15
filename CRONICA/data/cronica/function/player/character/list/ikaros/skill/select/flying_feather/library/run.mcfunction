
# アイテム置き換え
execute if data storage cronica:context ItemID{Mainhand:"FlyingFeather"} run item modify entity @s weapon.mainhand cronica:common/model/used
execute if data storage cronica:context ItemID{Mainhand:"FlyingFeather"} run item modify entity @s weapon.mainhand cronica:common/status/charging
execute if data storage cronica:context ItemID{Offhand:"FlyingFeather"} run item modify entity @s weapon.offhand cronica:common/model/used
execute if data storage cronica:context ItemID{Offhand:"FlyingFeather"} run item modify entity @s weapon.offhand cronica:common/status/charging
# スコア管理
scoreboard objectives add SCORE.cronica.SKILL.FlyingFeather.Activate dummy
scoreboard objectives add SCORE.cronica.SKILL.FlyingFeather.CT dummy



say 2




