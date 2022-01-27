function wayback() {
	GREEN="\033[1;32m"
	RESET="\033[0m"

	gau $1 | sort -u | > wayback
	echo -e "${GREEN}[*] URLs sorted and stored at wayback.${RESET}"
	cat wayback | unfurl paths | sort -u | > paths
	echo -e "${GREEN}[*] Paths found, sorted and stored at paths.${RESET}"
	cat wayback | unfurl keys | sort -u | > keys
	echo -e "${GREEN}[*] Keys found, sorted and stored at keys.${RESET}"
}
