#!/bin/bash

inotifywait -m --timefmt '%d/%m/%y %H:%M' --format '%T %w %e %f' "$1" | while read date time dir evt file; do
  echo "${date} ${time} - An event ${evt} acted on ${dir}/${file}."
done
