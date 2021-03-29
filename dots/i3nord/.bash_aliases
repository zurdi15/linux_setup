# Custom z aliases
alias l="colorls -lA --sd --dark"
alias ll="colorls -l --tree --sd --dark"
alias lll="colorls -lA --tree --sd --dark"
alias rd="rm -rf"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias ra="ranger"
alias gitd="git checkout develop"
alias shut="shutdown now"
# audio control
alias audio_builtin="pacmd set-default-sink 'alsa_output.pci-0000_00_1f.3.analog-stereo'"
alias audio_builtin_up="pactl set-sink-volume 'alsa_output.pci-0000_00_1f.3.analog-stereo' '+5%'"
alias audio_builtin_down="pactl set-sink-volume 'alsa_output.pci-0000_00_1f.3.analog-stereo' '-5%'"

alias audio_corsair="pacmd set-default-sink 'alsa_output.usb-Corsair_Corsair_VOID_PRO_Wireless_Gaming_Headset-00.analog-stereo'"
alias audio_corsair_up="pactl set-sink-volume  'alsa_output.usb-Corsair_Corsair_VOID_PRO_Wireless_Gaming_Headset-00.analog-stereo' '+5%'"
alias audio_corsair_down="pactl set-sink-volume 'alsa_output.usb-Corsair_Corsair_VOID_PRO_Wireless_Gaming_Headset-00.analog-stereo' '-5%'"
