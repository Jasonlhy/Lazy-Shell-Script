#!/bin/zsh

# This shell script is written under MAC OX 10.11 with safari with default brower for opening some websites
# The open command will open the website in safari
function tech(){
  open "https://news.ycombinator.com"
  open "https://www.reddit.com/r/programming/"
}

function game(){
  open "https://sガンロワ攻略.gamematome.jp/game/965/wiki/トップページ"
}

function playAPI(){
  open "https://docs.oracle.com/javase/8/docs/api/"
  open "https://www.playframework.com/documentation/2.4.x/api/scala/index.html#package"
  open "https://www.playframework.com/documentation/2.4.x/Home"
}

function testRegex(){
  open "http://regexr.com"
}

function angularMaterial(){
  open "https://material.angularjs.org/latest/api/directive/mdIcon"
}

# just invoke the function by name
if ! `$1`; then
  # $0 is the shell script path
  # grep the function header and put it into a single line to show the usage
  usage=`grep -E "^function .+()" $0 | sed -E 's/(function) (.+)\(\).?{/\2/g' | sort | paste -s -d"," -`
  echo "Usage: $usage"
fi
