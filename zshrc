#!/bin/bash

alias cc="clang++ -Wall -Wextra -Werror -std=c++98"

gitcheck()
{
    # If in a git repo - call git mv. otherwise- call mv
    if [ -z "$1" ];
    then
        echo "Provide repo url"
    else
        cd ~ && git clone $1 &&
        clear &&
        ls -lR $(basename $1)
        rm -fr $(basename $1)
    fi
}

alias gitcheck=gitcheck
#echo "git clone $(1) && ls -lR rmdaba && rm -fr rmdaba"
