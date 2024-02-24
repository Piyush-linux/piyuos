# TODO
# - [ ] progress bar

tim=1
work=1  

quotes(){
  q1="Its now or never"
  q2="no pain no gain"
  q3="Simplicity is the ultimate sophistication"
  q=($q1 $q2 $q3)
  return ${q[0]}
}

notifyBreak(){
  txt="Take 10 min Break"
  echo -e "\e[33m${txt}\e[0m"
  sleep 5
  timer 
}

notifyDone(){
  txt="You are successfull !!!"
  echo -e "\e[32m${txt}\e[0m"
  echo ""
  # wanna take a break 
  echo "Wanna tak a break "
  read -p "1(yes) 2(No) : " opt

  if [[ $opt -eq 1 ]];  then
    notifyBreak
  elif [[ $opt -eq 2 ]]; then
    timer 
  else
    echo "invalid i/p "
  fi

}




timer(){
  # get inp
  echo -e "\nP I Y U D O R O \n"
  echo -e "1(1s) 2(5s) 3(10s)" 
  read -p "Enter your timer : " tim 

  # progress bar
   # echo -n "["
   #  for ((i = 0 ; i <= 100 ; i+=)); do
   #      sleep 0.05
   #      echo -n "###"
   #  done
   #  echo -n "]"
   #  echo
  # timer then done
  if [[ $work -eq 1 ]];  then
    num=$(( 1 * 2 ))
    sleep $num 
    notifyDone 
  elif [[ $work -eq 0 ]]; then
	  echo "Tak break"
  else
	  echo "invalid i/p "
  fi
}

timer
