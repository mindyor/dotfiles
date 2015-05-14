#!/usr/bin/env bash

print_message() {
  echo -e "\033[1;32m"$1"\033[00m";
}

print_warning() {
  echo -e "\033[1;33m"$1"\033[00m";
}

print_error() {
  echo -e "\033[1;31m"$1"\033[00m";
}

source_dotfiles() {
  print_message "\nSourcing dotfiles."

  for file in `ls files`
  do
    original_file=$HOME/.$file
    if [ -e $original_file ]; then
      print_warning "$original_file was found, so a back up was created for it ($original_file.bkp.$$)."
      mv $original_file $original_file.bkp.$$
    fi

    print_message "Copying $file"
    ln -sf `pwd`/files/$file $original_file
  done
}

source_dotfiles

print_message "Done!"
exec bash --login
