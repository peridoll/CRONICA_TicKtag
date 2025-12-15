# =================================================================================================

  ## 画面装飾

    # リロード完了時に全体に通知
      tellraw @a \
        [ \
          {"text": "[ ", "color": "dark_gray"}, {"text": "INFO", "color": "gray"}, {"text": " ] ", "color": "dark_gray"}, \
          {"text": "リロードが完了しました", "color": "red", "bold": true}  \
        ]
      tellraw @a [{"text": "Created By ", "color": "gray"}, {"text": "TicK-tag", "color": "green", "underlined": true}]
# =================================================================================================
# ver 0.14.0

advancement revoke @a everything
clear @a
loot give @a loot cronica:character/ikaros/select/flying_feather
loot give @a loot cronica:character/ikaros/select/blazing_shield
