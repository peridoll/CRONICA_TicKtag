# =================================================================================================

##【 実行チェック 】
# 各種実行してよいかの確認を行う

#【 キャンセル 】
# この条件に合う場合は実行が始まらない
execute unless predicate cronica:grand run return fail
execute as @s[scores={SCORE.cronica.WEAPON.ApollonBow.Charging=1..}] run return fail
execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"ItemID": "ApollonArrow"}}, count:8}]}] run return fail

#【 実行 】
# 実行可能な場合はリロード処理を実行する
function cronica:player/character/list/ikaros/unique/apollon_bow/library/reload/main
# =================================================================================================
