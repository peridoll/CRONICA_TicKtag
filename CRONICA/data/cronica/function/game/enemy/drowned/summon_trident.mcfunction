
# スケルトン召喚
summon drowned ~ ~ ~ {Tags:[TAG.cronica.MOB,TAG.cronica.ENEMY,TAG.cronica.ENEMY.drowned,TAG.cronica.ENEMY.drowned.empty]}
item replace entity @e[tag=TAG.cronica.ENEMY.drowned.empty,sort=nearest,limit=1] armor.head with glass
item replace entity @e[tag=TAG.cronica.ENEMY.drowned.empty,sort=nearest,limit=1] weapon.mainhand with trident
team join B @e[tag=TAG.cronica.ENEMY.drowned.empty]
tag @e[tag=TAG.cronica.ENEMY.drowned.empty] remove TAG.cronica.ENEMY.drowned.empty
