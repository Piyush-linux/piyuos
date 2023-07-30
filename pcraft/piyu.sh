#!/usr/bin/env bash

# 1. main : -v , -h > help()
# 

VERSION="1.0.0"
arr=("work" "relax")



get_help(){
  echo "   ------------------- "
	echo "   piyo "${VERSION}
	echo ""
	echo "   ARGUMENTS"
	echo "   -c  --config   opens config in "${EDITOR}
	echo "   -v  --version  shows pomo version"
	echo "   -h  --help     shows this screen"
	echo ""
	echo "   KEYBINDINGS"
	echo "   q      quit"
	echo "   space  pause"
	echo "   r      restart current stretch (1 work + 1 break)"
	echo ""

}


main () {
	# print version with -v
	[ "$1" = -v ] || [ "$1" = --version ] && {
		echo "piyu "${VERSION}
		exit
	}
  # print help with -h
	[ "$1" = -h ] || [ "$1" = --help ] && {
		get_help
		exit
	}
	# print start
	[ "$1" = -s ] || [ "$1" = "start" ] && {
		get_help
		exit
	}

}

main "$@"
