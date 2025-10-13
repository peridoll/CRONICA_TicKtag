# =================================================================================================

# UUID取得
function cronica:system/common/storage/get_uuid

# MainWeapon
data modify storage cronica:temp/uuid ItemCategory set value "main_weapon"
function cronica:system/common/storage/use_data_func_lib with storage cronica:temp/uuid
# SubWeapon
data modify storage cronica:temp/uuid ItemCategory set value "sub_weapon"
function cronica:system/common/storage/use_data_func_lib with storage cronica:temp/uuid
# Ammo
data modify storage cronica:temp/uuid ItemCategory set value "ammo"
function cronica:system/common/storage/use_data_func_lib with storage cronica:temp/uuid
# UniqueSkill
data modify storage cronica:temp/uuid ItemCategory set value "unique_skill"
function cronica:system/common/storage/use_data_func_lib with storage cronica:temp/uuid
# PassiveSkill
data modify storage cronica:temp/uuid ItemCategory set value "passive_skill"
function cronica:system/common/storage/use_data_func_lib with storage cronica:temp/uuid
# ExtraSkill
data modify storage cronica:temp/uuid ItemCategory set value "extra_skill"
function cronica:system/common/storage/use_data_func_lib with storage cronica:temp/uuid
# =================================================================================================
