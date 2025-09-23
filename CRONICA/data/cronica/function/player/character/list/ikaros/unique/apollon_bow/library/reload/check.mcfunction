# キャンセル
execute as @s[tag=TAG.cronica.CHARACTER.ApollonBow.Charging] run return fail
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}, count:8}]}] run return fail

# 実行
function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/main