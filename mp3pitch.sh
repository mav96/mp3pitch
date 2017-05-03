#/bin/bash
in=$1
out=$2
prfx=""

if [[ -z "${2}" ]]; then
	if [[ -z "${1}" ]]; then
		in="."
		out="."
		prfx="result-"
	else 
		in="."
		out=$1
	fi	
fi


for f in `ls $in | grep \.mp3$`; do
	echo "File -> $f"
	ffmpeg -i "${in}/${f}" -filter:a "atempo=1.5"  -vn "${out}/${prfx}${f}"
done
