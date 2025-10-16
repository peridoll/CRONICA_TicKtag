# =================================================================================================
#
# ChangeInventory Detection
#
# activate
# └─ run
#   └─ main (loop)
#
# インベントリ更新の検知では、場所１から場所２へアイテムが移動した際に離れたことも検知してしまい、二重処理で負荷の原因にもなるので
# 発動に特定秒数のラグを設けることで、負荷の軽減を図る
# =================================================================================================

##【 継続処理 】

# タイマー処理
scoreboard players add @a[scores = {SCORE.cronica.STATUS.ChangeInventory = 0..}] SCORE.cronica.STATUS.ChangeInventory 1

##【 後続処理 】

# ▷▷▷ 所持アイテムの格納先の保存 ▷▷▷
execute \
    as @a[scores = {SCORE.cronica.STATUS.ChangeInventory = 1..}] \
    if score @s SCORE.cronica.STATUS.ChangeInventory >= #CONFIG.cronica.DETECT.ChangeInventory.TIME SCORE.cronica.CONFIG \
  run \
    function cronica:player/status/inventory/slot/save/run

##【 状態回復 】

# タイマー削除
execute \
    as @a[scores = {SCORE.cronica.STATUS.ChangeInventory = 1..}] \
    if score @s SCORE.cronica.STATUS.ChangeInventory >= #CONFIG.cronica.DETECT.ChangeInventory.TIME SCORE.cronica.CONFIG \
  run \
    scoreboard players reset @s SCORE.cronica.STATUS.ChangeInventory
execute unless entity @a[scores = {SCORE.cronica.STATUS.ChangeInventory = 0..}] run \
  scoreboard objectives remove SCORE.cronica.STATUS.ChangeInventory

##【 再起処理 】

# 自身を呼び出し
execute if entity @a[scores = {SCORE.cronica.STATUS.ChangeInventory = 0..}] run \
  schedule function cronica:player/status/detection/advancements/change_inventory/main 1t
# =================================================================================================
