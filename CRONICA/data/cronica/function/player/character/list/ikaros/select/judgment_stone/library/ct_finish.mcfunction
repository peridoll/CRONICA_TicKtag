# アイテム置き換え
function cronica:player/status/item_display/model/default {ItemID: "JudgmentStone"}
function cronica:player/status/item_display/status/ready {ItemID: "JudgmentStone"}

# 装飾
#[サウンド再生]
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 2

# リセット
function cronica:player/character/list/ikaros/select/judgment_stone/library/ct_reset