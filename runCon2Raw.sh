for z in ./wav16/*.wav
	do ch_wave -c 0 -F 32000 -otype raw $z | x2x +sf | interpolate -p 2 -d | ds -s 43 | x2x +fs > ${z%.*}.raw
done
