#!/usr/bin/env bash

function wayback_urls() {
	GREEN="\033[1;32m"
	RESET="\033[0m"

	gau $1 | sort -u | tee -a  wayback.txt
	echo -e "${GREEN}[*] URLs sorted and stored at wayback.txt${RESET}"
	cat wayback.txt | unfurl -u paths >> paths.txt
	echo -e "${GREEN}[*] Paths found, sorted and stored at paths.txt${RESET}"
	cat wayback.txt | unfurl -u keys >> keys.txt
	echo -e "${GREEN}[*] Keys found, sorted and stored at keys.txt${RESET}"
}
