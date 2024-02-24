#!/bin/bash 
#!/bin/bash
linux=(
  [ubuntu]="ubuntu"
  )
echo ${linux[ubuntu]}
declare ans1 
menu_from_array ()
{
  echo $1 ;
  arr=("$@")
  unset arr[0]
  # echo "${arr[@]}"
  select opt in  "${arr[@]}"; do
  # Check the selected menu item number
  if [ 1 -le "$REPLY" ] && [ "$REPLY" -le $# ];then
     echo "you choose $opt"
     ans1=$opt  
     break
  else
    echo "Wrong selection: Select any number from 1-$#"
  fi
  done
}

# Declare the array 
q1="Your Fav linux distro"
opt1=('Ubuntu' 'Linux Mint' 'CentOS')

# Call the subroutine to create the menu
menu_from_array "$q1" "${opt1[@]}"
echo $ans1
