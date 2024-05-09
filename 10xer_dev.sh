#!/bin/sh

for days in `seq 365 -1 1`
do
  for minutes in `seq 10 5 40`
  do
    when=`date --date="$days days ago $minutes minutes ago"`
    echo "$when" > fakeit
    git add fakeit
    git commit -m "Work work work" --date="$when"
  done
done



