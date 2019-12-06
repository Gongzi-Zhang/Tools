#!/bin/bash

complete -W "red green blue yellow purple pink orange" color

function _fizzbuzz() {
    length=${#COMP_WORDS[@]}
    number=$((length - 1))

    if	 ! ((number % 15)); then COMPREPLY=(fizzbuzz)
    elif ! ((number % 3));  then COMPREPLY=(fizz)
    elif ! ((number % 5));  then COMPREPLY=(buzz)
    else			 COMPREPLY=($number)
    fi
}

## try source this bash file and then type in command
## > fizzbuzz <Tab><Tab>
complete -F _fizzbuzz fizzbuzz	# set complete for function fizzbuzz

