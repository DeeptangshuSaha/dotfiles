function fish_greeting
  #echo (set_color green)"Welcome to Fish shell, "(set_color yellow)$USER(set_color normal)"!"
  #echo (set_color blue)"Current directory: "(set_color cyan)(pwd)
  set -l greeting_message (set_color 20dfe6)"󰑱 Welcome $USER 󰑱"(set_color normal)
  set -l message_length (string length $greeting_message)
  set -l terminal_width $COLUMNS
  set -l padding (math --scale=0 "($terminal_width - $message_length) / 2")

  printf "%*s%s\n" $padding "" $greeting_message
  #echo (set_color 20dfe6) "󰑱 Welcome $USER 󰑱"
end
