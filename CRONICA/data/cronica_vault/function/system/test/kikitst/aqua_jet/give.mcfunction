# #■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# #◆◇◆◇◆水流弾◆◇◆◇◆

# #-=active実行=-

# #更新状況 ver 3.0.2

# #player/skill/aqua_jet/give

# #■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# # ◆◇:水流弾:◇◆

# ## <ディスプレイ>
# execute as @s run function cronica:player/skill/aqua_jet/display

# ## <GIVE>
# #[アイテムが浮かんでいるとき&持っていないとき]
# execute as @s run tag @s add TAG.reuse
# execute as @s[nbt={Inventory:[{tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run tag @s remove TAG.reuse
# execute as @s[tag=TAG.reuse] run clear @s warped_fungus_on_a_stick{ItemName:aqua_jet,ItemCategory:skill}
# execute as @s[tag=TAG.reuse] run give @s stick{ItemName:aqua_jet,ItemCategory:skill}
# execute as @s[tag=TAG.reuse] run tag @s remove TAG.reuse

# ## <REPLACE>
# execute as @s[nbt=!{EnderItems:[{tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run tag @s add TAG.reuse
# #[ホットバー]
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:0b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.0 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:1b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.1 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:2b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.2 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:3b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.3 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:4b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.4 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:5b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.5 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:6b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.6 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:7b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.7 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:8b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s hotbar.8 from entity @s enderchest.9
# #[オフハンド]
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:-106b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s weapon.offhand from entity @s enderchest.9
# #[インベントリ]
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:9b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.0 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:10b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.1 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:11b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.2 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:12b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.3 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:13b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.4 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:14b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.5 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:15b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.6 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:16b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.7 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:17b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.8 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:18b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.9 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:19b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.10 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:20b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.11 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:21b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.12 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:22b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.13 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:23b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.14 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:24b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.15 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:25b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.16 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:26b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.17 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:27b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.18 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:28b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.19 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:29b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.20 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:30b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.21 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:31b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.22 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:32b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.23 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:33b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.24 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:34b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.25 from entity @s enderchest.9
# execute as @s[tag=!TAG.reuse,nbt={Inventory:[{Slot:35b,tag:{ItemName:aqua_jet,ItemCategory:skill}}]}] run item replace entity @s inventory.26 from entity @s enderchest.9

# ## <ディスプレイ>
# execute as @s[tag=TAG.reuse] run schedule function cronica:player/skill/aqua_jet/give 1t
# execute as @s[tag=TAG.reuse] run tag @s remove TAG.reuse
# # ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■