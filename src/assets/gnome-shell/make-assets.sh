#! /usr/bin/env bash

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Teal' '-Grey'; do
  for type in '' '-Nord' '-Dracula'; do
    case "$theme" in
      '')
        theme_color_dark='#1e66f5'
        theme_color_light='#8caaee'
        ;;
      -Purple)
        theme_color_dark='#8839ef'
        theme_color_light='#ca9ee6'
        ;;
      -Pink)
        theme_color_dark='#ea76cb'
        theme_color_light='#f4b8e4'
        ;;
      -Red)
        theme_color_dark='#d20f39'
        theme_color_light='#e78284'
        ;;
      -Orange)
        theme_color_dark='#fe640b'
        theme_color_light='#ef9f76'
        ;;
      -Yellow)
        theme_color_dark='#df8e1d'
        theme_color_light='#e5c890'
        ;;
      -Green)
        theme_color_dark='#40a02b'
        theme_color_light='#a6d189'
        ;;
      -Teal)
        theme_color_dark='#179299'
        theme_color_light='#81c8be'
        ;;
      -Grey)
        theme_color_dark='#45475a'
        theme_color_light='#ccd0da'
        ;;
    esac

    if [[ "$type" == '-Nord' ]]; then
      case "$theme" in
        '')
          theme_color_dark='#5e81ac'
          theme_color_light='#89a3c2'
          ;;
        -Purple)
          theme_color_dark='#b57daa'
          theme_color_light='#c89dbf'
          ;;
        -Pink)
          theme_color_dark='#cd7092'
          theme_color_light='#dc98b1'
          ;;
        -Red)
          theme_color_dark='#c35b65'
          theme_color_light='#d4878f'
          ;;
        -Orange)
          theme_color_dark='#d0846c'
          theme_color_light='#dca493'
          ;;
        -Yellow)
          theme_color_dark='#e4b558'
          theme_color_light='#eac985'
          ;;
        -Green)
          theme_color_dark='#82ac5d'
          theme_color_light='#a0c082'
          ;;
        -Teal)
          theme_color_dark='#63a6a5'
          theme_color_light='#83b9b8'
          ;;
        -Grey)
          theme_color_dark='#3a4150'
          theme_color_light='#d9dce3'
          ;;
      esac
    fi

    if [[ "$type" == '-Dracula' ]]; then
      case "$theme" in
        '')
          theme_color_dark='#a679ec'
          theme_color_light='#bd93f9'
          ;;
        -Purple)
          theme_color_dark='#a679ec'
          theme_color_light='#bd93f9'
          ;;
        -Pink)
          theme_color_dark='#f04cab'
          theme_color_light='#ff79c6'
          ;;
        -Red)
          theme_color_dark='#f44d4d'
          theme_color_light='#ff5555'
          ;;
        -Orange)
          theme_color_dark='#f8a854'
          theme_color_light='#ffb86c'
          ;;
        -Yellow)
          theme_color_dark='#e8f467'
          theme_color_light='#f1fa8c'
          ;;
        -Green)
          theme_color_dark='#4be772'
          theme_color_light='#50fa7b'
          ;;
        -Teal)
          theme_color_dark='#20eed9'
          theme_color_light='#50fae9'
          ;;
        -Grey)
          theme_color_dark='#3c3f51'
          theme_color_light='#d9dae3'
          ;;
      esac
    fi

    if [[ "$type" != '' ]]; then
      rm -rf "theme${theme}${type}"
      cp -rf "theme" "theme${theme}${type}"
      sed -i "s/#3c84f7/${theme_color_dark}/g" "theme${theme}${type}"/*.svg
      sed -i "s/#5b9bf8/${theme_color_light}/g" "theme${theme}${type}"/*.svg
    elif [[ "$theme" != '' ]]; then
      rm -rf "theme${theme}"
      cp -rf "theme" "theme${theme}"
      sed -i "s/#3c84f7/${theme_color_dark}/g" "theme${theme}"/*.svg
      sed -i "s/#5b9bf8/${theme_color_light}/g" "theme${theme}"/*.svg
    fi
  done
done

echo -e "DONE!"