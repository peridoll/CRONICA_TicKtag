# スコア増加
scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.Reloading dummy
scoreboard players add @s SCORE.cronica.WEAPON.ApollonBow.Reloading 1
scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.Reloaded dummy
scoreboard players set @s SCORE.cronica.WEAPON.ApollonBow.Reloaded 1
scoreboard objectives add SCORE.cronica.WEAPON.ApollonBow.ReloadStack dummy

# エフェクト
effect give @s[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] slowness infinite 5 true

# キャンセル
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..},tag=!TAG.cronica.STATUS.Sneaking] run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/cancel
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] unless predicate cronica:grand run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/cancel
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] if score @s SCORE.cronica.WEAPON.ApollonBow.charging matches 1.. run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/cancel
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] unless data storage cronica:context ItemID{Mainhand:"ApollonBow"} unless data storage cronica:context ItemID{Offhand:"ApollonBow"} run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/cancel

# タグ管理
tag @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] remove TAG.cronica.STATUS.Sneaking

# 更新
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] if score @s SCORE.cronica.WEAPON.ApollonBow.Reloading >= #CONFIG.cronica.WEAPON.ApollonBow.ReloadStackTime SCORE.cronica.CONFIG run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/stack

# 終了
execute as @a[scores={SCORE.cronica.WEAPON.ApollonBow.ReloadStack=10..}] run function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/finish

# ループ処理
execute if entity @a[scores={SCORE.cronica.WEAPON.ApollonBow.Reloading=0..}] run schedule function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/main 2t