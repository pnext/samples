#!/bin/bash

mkdir lasdump
v='v'
d='d'
declare -a df=(0 1 2 3 6 7 8)
for k in {1..4}
do
  for j in ${df[@]}
  do
    if [ $k -lt 4 -a $j -gt 3 ]
    then
      continue
    else
      pdal pipeline generator.json --writers.las.minor_version=$k \
          --writers.las.dataformat_id=$j
      for i in {0..9}
      do
        counter=$(expr $i + 1)
        pdal pipeline classify.json --writers.las.filename=lasdump/tmp$counter.las \
            --readers.las.filename=lasdump/tmp$counter.las \
            --filters.assign.assignment=Classification[0:0]=$i
      done
      pdal pipeline merge.json --writers.las.filename=las/$v$k$d$j.las
    fi
  done
done
rm -rf lasdump
