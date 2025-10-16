# =================================================================================================
#
# SavingSlot
#
# run
# └─ main
#
# 現在所持しているアイテムの座標を保存する
#
# =================================================================================================

##【 起動処理 】

# ストレージ初期化
data remove storage cronica:temp SavingSlot
data modify storage cronica:temp Storage set value "SavingSlot"

# UUID取得
function cronica:system/common/storage/get_uuid
function cronica:system/common/storage/set_uuid with storage cronica:temp

# すべてのスロットを探索して保存を行っていく
function cronica:player/status/inventory/slot/save/main










## 各種カテゴリごとにスロットの保存を実施

# # MainWeapon
# data modify storage cronica:temp SavingSlot.ItemCategory set value "main_weapon"
# function cronica:player/status/inventory/slot/save/main with storage cronica:temp SavingSlot
# # SubWeapon
# data modify storage cronica:temp SavingSlot.ItemCategory set value "sub_weapon"
# function cronica:player/status/inventory/slot/save/main with storage cronica:temp SavingSlot
# # Ammo
# data modify storage cronica:temp SavingSlot.ItemCategory set value "ammo"
# function cronica:player/status/inventory/slot/save/main with storage cronica:temp SavingSlot
# # UniqueSkill
# data modify storage cronica:temp SavingSlot.ItemCategory set value "unique_skill"
# function cronica:player/status/inventory/slot/save/main with storage cronica:temp SavingSlot
# # PassiveSkill
# data modify storage cronica:temp SavingSlot.ItemCategory set value "passive_skill"
# function cronica:player/status/inventory/slot/save/main with storage cronica:temp SavingSlot
# # ExtraSkill
# data modify storage cronica:temp SavingSlot.ItemCategory set value "extra_skill"
# function cronica:player/status/inventory/slot/save/main with storage cronica:temp SavingSlot
# # SelectSkill
# data modify storage cronica:temp SavingSlot.ItemCategory set value "select_skill"
# function cronica:player/status/inventory/slot/save/main with storage cronica:temp SavingSlot

##【 状態回復 】

# ストレージ削除
data remove storage cronica:temp SavingSlot
data remove storage cronica:temp Storage
# =================================================================================================
