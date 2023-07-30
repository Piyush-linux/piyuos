#!/bin/bash
 
brow="firefox"
pth="$HOME/piyuos/scripts"
#
# coding : linux(itsfoss,githubAwesome) , 
# cat data.yaml | yq '.blogs1'
# cat data.yaml | yq '.blogs1[0]'
# cat data.yaml | yq '.blogs1 | length'
# echo $(cat data.yaml | yq '.blogs1')
   # echo $(cat data.yaml | yq .blogs1[$i])

# coding > dev(git,linux) , web(ui)


# FUN

SURF(){
   START=0
   lst=$(eval "echo $(cat data.yaml | yq '.'$1' | length' )")
   END=$((lst - 1 ))
   for (( c=$START; c<=$END; c++ ))
   do
      links=$(eval "echo $(cat data.yaml | yq .$1[$c] )")
      firefox $links
      echo $c
   done

}

# get & set inp
cat <<"EOC"
+ me
   - portfolio
   - mail
+ price
+ coding
   - dev
      - tool
      - git
      - linux
         - shell
         - tut
         - res
   - web
+ Blogs
     
EOC
read -p ": " tag
cd $pth
echo $(pwd)
echo $tag
SURF $tag



