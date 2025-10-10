# # =================================================================================================

# ##【 各種処理実行 】
# # 各カテゴリごとの処理へ分岐する
# execute if data storage cronica:context ItemCategory{Value:"MainWeapon"} run function cronica:player/status/check/item_using/category/main_weapon
# execute if data storage cronica:context ItemCategory{Value:"UniqueSkill"} run function cronica:player/status/check/item_using/category/unique_skill
# execute if data storage cronica:context ItemCategory{Value:"SelectSkill"} run function cronica:player/status/check/item_using/category/select_skill
# # =================================================================================================
