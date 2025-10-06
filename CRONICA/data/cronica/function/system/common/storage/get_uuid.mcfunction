# =================================================================================================

# データ削除
data remove storage cronica:temp/uuid uuid_1
data remove storage cronica:temp/uuid uuid_2
data remove storage cronica:temp/uuid uuid_3
data remove storage cronica:temp/uuid uuid_4

# UUID取得
data modify storage cronica:temp/uuid uuid_1 set from entity @s UUID[0]
data modify storage cronica:temp/uuid uuid_2 set from entity @s UUID[1]
data modify storage cronica:temp/uuid uuid_3 set from entity @s UUID[2]
data modify storage cronica:temp/uuid uuid_4 set from entity @s UUID[3]
# =================================================================================================
