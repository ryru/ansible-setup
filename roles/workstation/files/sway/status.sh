# Battery capacity and state: discharging 96%
battery_info=$(upower --show-info $(upower --enumerate |\
	grep 'BAT') |\
	egrep "state|percentage" |\
	awk '{print $2}')

# Formatted date and time: So. 30.Okt.2022 16:55:25
date_formatted=$(date "+%a. %d.%b.%Y %H:%M:%S")

# Print status line
echo $battery_info 🔋 $date_formatted
