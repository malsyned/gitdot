(
    echo '```'
    ./gitdot help
    for cmd in init destroy clone dstatus bindump; do
	echo
	./gitdot help $cmd | awk 'NR > 1 { printf("    ") } 1'
    done
    echo '```'
) > "$(dirname "$0")/README.md"
