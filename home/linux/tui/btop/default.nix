{ theme, ... }: {

# ██╗███╗   ███╗██████╗  ██████╗ ██████╗ ████████╗███████╗
# ██║████╗ ████║██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝
# ██║██╔████╔██║██████╔╝██║   ██║██████╔╝   ██║   ███████╗
# ██║██║╚██╔╝██║██╔═══╝ ██║   ██║██╔══██╗   ██║   ╚════██║
# ██║██║ ╚═╝ ██║██║     ╚██████╔╝██║  ██║   ██║   ███████║
# ╚═╝╚═╝     ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝

  # Import the configuration for the selected theme.
  imports = [ ./${theme} ];

#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣆⠀⠀⠀⠀⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣤⣤⣤⣤⣤⣄⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⠄⠀⠀⠀⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣦⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⠋⠈⣿⣿⣿⠂⠀⠀⠀⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣷⣴⣦⣿⣿⣟⠀⠀⠀⠀⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⡿⠛⠛⠋⠋⠉⠉⠙⠙⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠿⠿⠿⠿⠿⢿⣿⣿⣿⡄⠀⠀⠀⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⣿⣆⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⡿⣟⣿⠀⠀⠀⠀⠀⠀⠀⣀⣴⣦⠄⣼⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣷⠀⠀⠀⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣻⣽⣷⣄⣴⣿⣧⣀⣀⣴⣿⣻⣽⣟⣿⡇⢀⣴⣆⠀⢀⣴⣾⣿⣟⣿⣾⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⣀⢀⡀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠀
#    ⠀⠀⠀⠀⠀⢠⣶⣶⣾⣿⣿⣿⣿⢿⣟⣿⣟⣿⣿⢿⡿⣿⣻⣿⣿⢿⣻⡿⣿⣿⣿⣿⣿⣿⣿⣾⣯⣿⣿⣿⢿⡿⣟⢿⣻⣛⢯⡳⢏⡻⣍⢯⢞⡽⣓⣻⣛⡟⣿⣿⣿⣿⣿⣿⣿⣿⣃⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣇⠀⠀⠀⠀
#    ⣀⣀⣀⣀⣴⣿⣿⣿⣟⣿⣾⢿⠻⣟⢫⢏⡻⣙⢏⡏⠙⠛⠛⠛⠛⠛⠯⠿⢿⡾⣿⢳⣿⡾⣟⢯⡝⣧⢳⣎⠷⣙⢮⡳⢶⡹⢮⣝⡫⢷⡹⣎⢯⢶⡹⣖⣣⣿⣿⣿⣿⣿⣿⣿⣿⡿⣭⢳⣛⠷⣖⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀
#    ⠻⣿⡿⣿⣿⣿⣿⣿⣾⡛⣜⢎⡳⢬⡓⢮⡱⣭⠃⠀⠀⢀⠀⢀⠀⠀⠀⣰⢞⣱⣾⢻⣏⡳⣝⡺⣜⢧⣏⢮⣛⡽⢎⡽⣣⢟⣣⢞⣝⣣⢟⡼⡭⢶⡹⣖⣳⣿⣿⣿⣿⣿⣿⣿⣿⠳⣭⢳⡹⣞⡱⢮⣝⡻⢶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢻⡜⡯⠀⠀⠀⠀
#    ⠀⢸⣿⣿⣿⣟⣾⣿⢣⡝⡜⢮⡱⢣⡝⣣⠽⠀⠀⠀⠠⠀⠀⠀⠀⠄⣺⣵⡿⣏⠷⣋⢶⡹⣎⢷⡹⣎⢮⡳⣭⠞⣽⣚⡵⣫⢎⡯⢞⡼⣣⢟⡼⣣⢟⡼⣿⣿⣿⣿⣿⣿⣿⣿⢧⡻⣜⢧⡻⣜⡽⣓⢮⣝⡳⢮⡝⡷⣄⡀⠀⠀⠀⠀⠀⢠⡟⣧⣛⡇⠀⠀⠀⠀
#    ⠀⣾⣿⣿⣿⣽⣻⣧⠳⣜⡹⢦⡙⢧⡺⠇⠀⠀⠀⠐⠀⠀⠐⠀⣁⣾⣷⡟⣼⢣⣟⡹⣎⢷⡹⣎⢷⡹⣎⡗⣧⣛⠶⣭⢶⡹⢮⣝⣫⢶⡹⣎⢷⡹⢮⡝⣿⣿⣿⣿⣿⣿⡿⣝⢶⡹⣎⢷⣹⣚⢶⡹⣞⣬⢳⢏⡾⣱⠯⡽⢦⡀⠀⢀⡴⣯⡝⣶⣹⠀⠀⠀⠀⠀
#    ⠀⣿⣿⣿⢿⣿⣿⣇⠻⡴⣙⢦⣋⠗⠃⠀⠀⠀⠁⡀⠀⠁⠀⣰⣻⢾⡵⡺⡵⣫⢶⡹⣎⢷⡹⣎⢷⣹⢶⣹⡶⢭⣛⠶⣭⢫⡗⣮⠵⣎⢷⡹⢮⡝⣧⢻⣜⡻⣟⠿⣟⠿⣙⢮⡳⣝⢮⡳⢮⡵⣫⢵⡺⡼⣹⢎⡷⡹⣞⡹⣏⠿⣾⣏⠷⣓⢾⣱⠃⠀⠀⠀⠀⠀
#    ⠰⣿⣿⣿⡿⣞⣿⣎⢳⡱⣍⠶⠋⠁⠀⠀⡀⠁⠀⠀⢀⢈⣼⢳⣯⢳⡞⣵⢫⡵⣎⢷⡹⣎⣷⣽⣾⣿⣿⣷⣶⣍⠙⠻⣜⢧⡻⣜⡽⢎⡳⣝⢧⡻⣜⡳⣎⠷⣭⢻⡜⡯⣝⢮⡳⣝⢮⢳⢏⡶⣹⢎⡷⣹⢥⡻⣜⡳⣭⢳⣎⠿⣹⣿⣽⡹⢮⠏⠀⠀⠀⠀⠀⠀
#    ⠀⣿⣿⣿⣿⣿⣿⣧⢣⣓⡞⠋⠀⠀⠀⠄⠀⢀⠈⠀⢠⡾⣡⡿⣎⢷⡹⣎⡗⣧⢻⡜⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠈⠳⣝⡞⣼⣋⢷⡹⣎⢷⡹⣜⢧⡻⣜⠧⣏⢷⡹⣎⢷⡹⣎⢟⢮⡳⣝⢮⡳⣝⢮⡳⣭⢳⣣⢟⣬⠻⣕⡞⣿⣽⣿⣷⣶⣤⣀⠀⠀⠀
#    ⠀⢸⣿⣿⣿⣾⣽⣿⡖⠋⠀⠀⠀⠄⠂⠀⠠⠀⠀⣰⢯⡱⣿⡱⣏⢾⡱⢧⡻⣜⢧⡻⣼⣿⣿⣿⣿⣿⢋⣁⣄⠈⠻⠀⠀⠀⢻⡜⣧⢞⣣⢟⡼⣣⢟⡼⣣⢟⡼⣛⡼⣣⢟⡼⣣⢟⡼⢫⡞⣵⢫⡞⣵⢫⡞⣵⢣⡟⣼⢺⣜⡻⣬⢻⡜⣿⣿⣿⣿⣿⣿⣿⣶⡄
#    ⢀⣴⣿⣿⣿⣿⣾⣽⣿⣦⣀⠀⠠⠀⠀⡀⠄⢀⣼⢏⠶⣹⢧⡻⣜⢧⣛⢧⡝⣮⢳⡝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⢸⡝⣞⠮⢧⡻⣜⢧⡻⣜⢧⡻⣜⢧⡳⣝⢮⡳⣝⢮⡝⣧⢻⡜⣧⢻⡜⣧⢻⡜⣧⢻⡜⣧⠞⣵⣋⢧⡻⡼⣿⣿⣿⣿⣿⣿⣿⣿
#    ⡾⠿⣯⣟⣿⣿⣿⣿⢿⣻⣿⣶⣤⣤⣤⣁⣀⣼⣫⣜⣦⣻⣎⢷⡹⣎⡟⣼⢳⡹⣎⢷⣻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⢸⡳⣝⠶⣎⢷⡹⣎⢷⡹⢎⡷⣹⢎⡷⣹⢎⡷⣙⢮⡵⢫⡞⣵⢫⡞⣵⢫⡞⣵⢫⡞⣵⡹⢶⢭⡻⣜⢧⡳⣿⣿⣿⣿⣿⣿⣿⣿
#    ⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣷⣻⣿⡿⣟⣿⢿⡿⣿⣿⢯⣿⡜⣧⣛⢶⡹⣎⢷⡹⣎⢧⣛⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⢠⢾⡱⣏⢾⣙⢮⡳⣝⢮⣝⣫⡜⣧⢻⡜⣧⢻⢼⡹⢮⡝⣧⢻⡜⣧⢻⡜⣧⢻⡜⣧⢛⡶⣹⢭⡞⣵⢫⡞⣵⢻⢻⣿⣿⣿⣿⣿⣿
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠋⠙⢻⣿⣿⣿⣿⣿⠟⣿⠿⣿⣜⡳⣜⢧⡻⣜⢧⣿⣎⠷⣭⢖⡻⣬⣉⠉⠀⠀⠀⠀⠀⣀⡴⢯⡳⣝⢮⣳⡹⣎⢷⡹⣎⢶⣣⢟⡼⣣⢟⡼⣹⠮⣝⢧⡻⣜⢧⡻⣜⢧⡻⣜⢧⡻⡜⣯⡜⣧⢳⣞⡱⣏⢾⣱⢻⡀⣿⣿⣿⣿⣿⣿
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣽⠾⠉⠀⠐⣿⣹⣿⣷⣝⢮⡳⣝⣺⣾⢟⡼⣋⡞⣮⢳⠧⣏⣟⡳⣖⢶⣚⢯⢏⡽⣣⢟⡼⣓⢮⡵⢫⡞⣵⢫⡞⡼⣎⢷⡹⣎⡗⣧⢻⡜⣧⢻⡜⣧⢻⣜⣣⡝⣮⢳⣭⢻⡴⣛⡼⣓⢮⡳⣝⡺⣜⢯⠀⣿⣿⣿⣿⣿⣿
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣏⢓⣿⢯⡝⣮⢳⡝⣞⡱⢯⡝⣞⣬⢳⡝⡮⢧⣛⢮⡳⣝⢮⡳⣝⢮⡝⣧⢻⡜⡧⣏⢷⡹⣎⡗⣧⢻⡜⣧⢻⡜⣧⢻⣜⡳⢮⣕⡻⣜⡳⣜⡳⢞⡱⣝⢮⡳⣝⣎⢷⡹⢾⡁⣿⣿⣿⣿⣿⣿
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⢿⣿⣾⣿⢣⡟⣼⢣⡟⣼⡹⣣⢟⡼⢎⡷⢭⣛⡵⣫⢞⡵⣫⢞⡵⣫⢞⡼⣣⢟⡼⢳⡹⣎⡗⣧⡝⣮⢳⡝⣮⢳⡝⣮⢳⠮⣝⡳⣎⠷⣭⢳⡭⣝⣫⠷⣹⢎⣗⡳⣎⢷⡹⣻⠀⣿⣿⣿⣿⣿⣿
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣻⣼⢻⡼⢯⣏⢷⡹⣎⢷⡹⢶⡹⡵⣫⢞⡝⣮⢳⡭⢶⡹⣎⢷⡹⣎⢷⡹⣎⢷⡹⢮⡝⣧⣛⢶⡹⢶⡹⣎⢷⡹⣎⢧⣛⢶⢫⡝⣮⢳⣭⠻⣜⢧⡝⣮⢵⢫⢧⡻⣬⢳⡝⣮⢳⡧⢀⣿⣿⣿⣿⣿⡇
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⣭⢿⣹⣿⡹⣎⢷⡹⢮⡝⣮⢳⠽⣥⢻⡜⣧⢻⡜⣧⢻⡜⣧⢻⣜⣣⢟⡼⣣⢟⡱⣏⢶⡹⢮⡝⣧⢻⡜⣧⢻⡜⣧⣛⢮⡳⣝⢮⡳⢎⡿⣜⣣⢟⡼⣎⢿⡸⢧⣝⡳⢞⣱⣻⣶⣿⣿⣿⣿⣿⣿⡇
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣾⣯⡿⢧⣛⡼⣣⢟⣱⢻⠼⣭⢻⡜⣧⢻⡜⣧⢻⡜⣧⢻⣜⡳⢮⡵⣎⢷⡹⣎⢷⡹⢮⡝⣧⢻⡜⣧⢻⡜⣧⣛⢶⡹⣎⢷⣹⡾⣽⣛⣟⡻⢮⠿⣶⣽⣎⡽⣓⢮⡝⢯⢶⣿⣿⣿⣿⣿⣿⣿⣿⡇
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣮⡝⡧⣏⢶⡹⣎⠷⣫⡝⣮⢳⡝⣮⢳⡝⣮⢳⡝⣮⢳⠮⣝⡳⢮⡝⣮⢳⡝⣮⡝⣧⢻⡜⣧⢻⡜⣧⣛⢶⡹⣎⢷⣹⡾⣏⠷⣓⠾⣬⣛⣭⣛⠶⣣⢟⡻⣿⣮⣝⣫⣾⣿⣿⣿⣿⣿⣿⣿⡿⠁
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⢦⣛⢮⡻⣿⣵⢫⡞⣵⢫⡝⣧⡝⣮⢳⡝⣮⢳⡹⣜⢧⣛⠶⣫⣝⣮⣝⣧⢻⡜⣧⣛⢦⡻⣜⢧⡻⣜⢧⣛⢶⡹⣎⢷⡹⣎⣿⡵⣫⠽⣭⣛⠶⣭⠶⣭⣛⡵⣫⢳⢇⣟⣻⢛⡿⣿⢿⣟⠛⠋⠉⠁⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⣏⢷⡹⣎⠷⣭⢻⣷⣝⣮⠳⣝⢶⡹⣎⢷⡹⣎⢷⡹⣎⢷⣭⣿⢻⡭⢯⡝⣞⠷⣿⣶⡹⣎⢷⡹⣎⠷⣭⠞⣥⢻⡜⣧⢻⡜⣧⣿⡳⣭⣛⠶⣭⣛⠶⣛⠶⣭⠶⣭⣛⠾⣬⣓⢯⢞⡱⣏⢾⡹⢶⣄⠀⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢮⣷⡹⢎⡟⣼⣓⢮⣝⡻⢿⣼⣣⡟⣼⢣⡟⣼⢣⣿⡾⡟⡽⣜⢧⣛⢮⡝⣮⣛⢶⡹⢿⣮⡳⣝⢮⣛⠶⣫⡝⣧⢻⡜⣧⣛⢦⣛⣿⡶⢭⣛⠶⣭⣛⣭⣛⠶⣛⠶⣭⢳⣇⢯⢞⣭⢳⡝⣮⣝⡳⣞⢧⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠞⠳⠞⠳⠚⠉⠋⠉⠁⠉⢙⣳⡾⣟⡻⡵⣫⣝⢳⣎⠷⣹⠮⣝⢶⡹⢮⡝⣧⢻⣷⡹⣎⡳⣏⡳⡽⡜⣧⣛⢶⡹⣎⡗⣮⠿⣧⣏⡻⣴⣋⠶⣭⣛⣭⢻⣜⡳⣎⢯⡞⣼⢣⢟⡲⣎⣷⣮⣯⡇⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⢧⡻⣜⡳⡽⣱⢎⡷⢎⣟⣱⢻⡜⣧⢻⣱⣯⣾⢟⡯⣳⢭⡳⣭⢳⡝⣽⢲⣝⣮⣳⡵⠻⠶⠏⠛⠛⠓⠳⠮⠿⠶⠽⠒⠯⢶⣹⣎⠷⣺⡱⣏⢾⡱⣏⣶⣳⡞⠁⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣣⣯⡷⣏⡳⡽⣥⢻⡜⣏⢮⣓⣯⡾⠗⠛⠉⠀⠀⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠛⠚⠓⠛⠈⠉⠁⠀⠀⠀
#    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠿⢜⣳⣳⣭⣳⡽⠾⢛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

}
