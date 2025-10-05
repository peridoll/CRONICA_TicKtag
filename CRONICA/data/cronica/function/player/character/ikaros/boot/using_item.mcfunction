# =================================================================================================

# データ記入
$data modify storage cronica:temp item_id set value "$(ItemID)"

# FlyingFeather
execute if data storage cronica:temp {item_id: "flying_feather"} run function cronica:player/character/ikaros/select/flying_feather/run
# =================================================================================================
