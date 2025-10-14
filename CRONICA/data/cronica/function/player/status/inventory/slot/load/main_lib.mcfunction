# =================================================================================================

# インベントリ
$execute if score @s SCORE.cronica.STATUS.LoadingSlot matches $(LoadingSlot) run loot replace entity @s container.$(LoadingSlot) loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)
# =================================================================================================
