# =================================================================================================

  ## 装飾

    # リロード完了時通知
      tellraw @a \
        [ \
          { "text": "[ ",                   "color": "dark_gray" }, \
          { "text": "INFO",                 "color": "gray"      }, \
          { "text": " ] ",                  "color": "dark_gray" }, \
          { "text": "リロードが完了しました", "color": "red",      "bold": true }  \
        ]
      tellraw @a \
        [ \
          { "text": "Created By",           "color": "gray"      }, \
          { "text": " ",                    "color": "white"     }, \
          { "text": "TicK-tag",             "color": "green",    "underlined": true } \
        ]
# =================================================================================================
# ver 0.14.0
