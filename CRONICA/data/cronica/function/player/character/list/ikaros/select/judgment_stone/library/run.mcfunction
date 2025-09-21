## プレイヤー関連処理

# アイテム置き換え
# << アイテムを使用後のものに置き換え>>
function cronica:player/status/item_display/model/used {ItemID: "JudgmentStone"}
function cronica:player/status/item_display/status/charging {ItemID: "JudgmentStone"}

# # ゲームモード
# # << クリエイティブで飛行時には浮遊の効果が適応されないので、一度アドベンチャーに変更してから付与し、再度クリエイティブに戻す >>
# tag @s[gamemode=creative] add TAG.cronica.SKILL.JudgmentStone.RunCreative
# gamemode adventure @s[tag=TAG.cronica.SKILL.JudgmentStone.RunCreative]

# # エフェクト
# # << 浮遊と落下軽減を付与 >>
# effect give @s minecraft:levitation 1 25 true
# effect give @s minecraft:slow_falling infinite 0 true

# # ゲームモード
# # << クリエイティブに戻す >>
# gamemode creative @s[tag=TAG.cronica.SKILL.JudgmentStone.RunCreative]
# tag @s[tag=TAG.cronica.SKILL.JudgmentStone.RunCreative] remove TAG.cronica.SKILL.JudgmentStone.RunCreative

# # 装飾
# # << パーティクル >>
# particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force
# # << サウンド再生 >>
# playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
# playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1

## 後続用処理

# スコア管理

# << コンフィグロード：コンフィグファイルから設定値をロード >>
# クールタイム
# CONFIG: character_config:ikaros:judgment_stone:cool_time [scoreboard players set #CONFIG.cronica.SKILL.JudgmentStone.CoolTime SCORE.cronica.CONFIG {cool_time}}]
scoreboard players set #CONFIG.cronica.SKILL.JudgmentStone.CoolTime SCORE.cronica.CONFIG 320

# << アイテム管理 >>
scoreboard objectives add SCORE.cronica.MODE.JudgmentStone dummy
scoreboard players set @s SCORE.cronica.MODE.JudgmentStone 0
# << 効果時間 >>
scoreboard objectives add SCORE.cronica.TIMER.JudgmentStone.ActivateTime dummy
scoreboard players set @s SCORE.cronica.TIMER.JudgmentStone.ActivateTime 0
# << クールタイム >>
scoreboard objectives add SCORE.cronica.TIMER.JudgmentStone.CoolTime dummy
scoreboard players set @s SCORE.cronica.TIMER.JudgmentStone.CoolTime 0
scoreboard objectives add SCORE.cronica.TIMER.JudgmentStone.CoolTime.Goal dummy
scoreboard objectives add SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack dummy
scoreboard objectives add SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack.Goal dummy
scoreboard players operation @s SCORE.cronica.TIMER.JudgmentStone.CoolTime.Goal = #CONFIG.cronica.SKILL.JudgmentStone.CoolTime SCORE.cronica.CONFIG
scoreboard players set @s[tag=TAG.cronica.CT_ZERO] SCORE.cronica.TIMER.JudgmentStone.CoolTime.Goal 20
scoreboard players operation @s SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack.Goal = @s SCORE.cronica.TIMER.JudgmentStone.CoolTime.Goal
scoreboard players operation @s SCORE.cronica.TIMER.JudgmentStone.CoolTime.Stack.Goal /= #20 SCORE.cronica.CONFIG

# ループ処理
# << 1tickごとにメイン処理を実行 >>
schedule function cronica:player/character/list/ikaros/select/judgment_stone/library/main 1t
schedule function cronica:player/character/list/ikaros/select/judgment_stone/library/ct_main 1t