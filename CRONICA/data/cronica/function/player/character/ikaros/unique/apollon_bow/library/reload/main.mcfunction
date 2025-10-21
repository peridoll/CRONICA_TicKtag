# =================================================================================================

##【 REPEAT 】

  # 使用終了検知
    execute if entity @s[tag = TAG.cronica.WEAPON.apollon_bow.Reloaded] run function cronica:player/character/ikaros/unique/apollon_bow/library/reload/finish
    tag @s[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] add TAG.cronica.WEAPON.apollon_bow.Reloaded
# =================================================================================================
# ver 0.10.3
