
# スケルトン召喚
summon skeleton ~ ~ ~ {Tags:[TAG.cronica.MOB,TAG.cronica.ENEMY,TAG.cronica.ENEMY.skeleton,TAG.cronica.ENEMY.skeleton.empty]}
item replace entity @e[tag=TAG.cronica.ENEMY.skeleton.empty,sort=nearest,limit=1] armor.head with glass
item replace entity @e[tag=TAG.cronica.ENEMY.skeleton.empty,sort=nearest,limit=1] weapon.mainhand with bow
team join B @e[tag=TAG.cronica.ENEMY.skeleton.empty]
tag @e[tag=TAG.cronica.ENEMY.skeleton.empty] remove TAG.cronica.ENEMY.skeleton.empty
