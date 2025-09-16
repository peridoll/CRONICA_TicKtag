# アイテム置き換え
function cronica:player/status/item_model/default {ItemID: "FlyingFeather"}
function cronica:player/status/item_status/ready {ItemID: "FlyingFeather"}

# 装飾
#[サウンド再生]
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 2

# リセット
function cronica:player/character/list/ikaros/skill/select/flying_feather/library/ct_reset