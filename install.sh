#!/usr/bin/env bash

function link_file
{
  echo "Linking $HOME/.$1"
  ln -s "$PWD/$1" "$HOME/.$1"
}

function replace_file
{
  rm -rfv "$HOME/.$1"
  link_file $1
}

function link_dotfiles
{
  replace_all=false

  for file in $*
  do
    if [ -e "$HOME/.$file" ]
    then
      if $replace_all
      then
        replace_file $file
      else
        echo "Overwrite $HOME/.$file? [ynaq]"
        read answer
        case $answer in
          'a')
            replace_all=true
            replace_file $file
            ;;
          'y')
            replace_file $file
            ;;
          'q')
            break
            ;;
          *)
            echo "Skipping $HOME/.$file"
            ;;
        esac
      fi
    else
      link_file $file
    fi
  done
}

ignore_files='(LICENSE)|(install*)|(README)|(__)|(Rakefile)|(fonts)|(config)'
files=`ls | egrep -v "$ignore_files"`

link_dotfiles $files
link_dotfiles `ls -d config/*`
