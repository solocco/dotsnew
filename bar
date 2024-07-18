#!/usr/bin/dash
backlight() {
	icon=" "
	backlight=$(printf "%.0f\n" `light -G`)
	printf "^c#a3be8c^$icon$backlight"
}

kernel() {
  stat=$(uname -r | rev | cut -b3- | rev | cut -b1-)
  printf "^c#9399b2^  $stat "
}

logo() {
  printf "  "
}

mem() {
  memused=$(free -h --giga | grep Mem | awk '{print $3}')
  printf "^c#a3be8c^﬙ $memused"
}

temp_cpu() {
  crit=50

  read -r temp </sys/class/thermal/thermal_zone0/temp
  temp="${temp%???}"

  if [ "$temp" -lt "$crit" ] ; then
      printf "^c#a3be8c^ $temp°"
  else
      printf "^c#a3be8c^ $temp°"
  fi
}

vol() {
  [ $(pamixer --get-mute) = true ] && echo " Ø" && exit

vol="$(pamixer --get-volume)"

if [ "$vol" -gt "70" ]; then
	icon=" "
elif [ "$vol" -lt "30" ]; then
	icon=" "
else
	icon=" "
fi

printf "^c#a3be8c^$icon$vol"
}

calendar() {
  printf "^c#a3be8c^$(date '+ %A,%d %B')"
}

time() {
  printf "^c#a3be8c^$(date '+ %R ')"
}

sep() {
  printf "^b#282828^  "
}

## Wi-fi
wlan() {
	case "$(cat /sys/class/net/w*/operstate 2>/dev/null)" in
		up) printf "^c#a3be8c^  %s" " Connected" ;;
		down) printf "^c#a3be8c^ 睊 %s" " Disconnected" ;;
	esac
}

## Cpu Info
cpu_info() {
	cpu_load=$(grep -o "^[^ ]*" /proc/loadavg)

	printf " CPU"
	printf " $cpu_load"
}


wlan
sep
mem
sep
temp_cpu
sep
vol
sep
backlight
sep
calendar
sep
time
