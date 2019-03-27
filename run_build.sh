#!/bin/sh
light_green="\033[38;5;245m"
light_red="\033[38;5;215m"
no_color="\033[0m"
printf "$light_green >>> starting compilation $no_color\n"
cmd="dune build ./bin/$1.$2"
start=`date +%s.%N`
$cmd
status=$?
end=`date +%s.%N`
runtime=$(echo "($end - $start) * 1000 / 1" | bc)
[ $status -eq 0 ] && printf "$light_green >>> finished in $runtime ms $no_color\n" || printf "$light_red >>> failed in $runtime ms $no_color \n"