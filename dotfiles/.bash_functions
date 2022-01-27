#!/usr/bin/env bash

function wayback_urls() {
	GREEN="\033[1;32m"
	RESET="\033[0m"

	gau $1 | sort -u | tee -a  wayback.txt
	if [ -s wayback.txt ]
	then
		echo -e "${GREEN}[*] No URLs were found.${RESET}"
		return 1
	else
		echo -e "${GREEN}[*] URLs sorted and stored at wayback.txt${RESET}"
	fi
	cat wayback.txt | unfurl -u paths >> paths.txt
	if [ -s paths.txt ]
	then
		echo -e "${GREEN}[*] No paths were found.${RESET}"
	else
		echo -e "${GREEN}[*] Paths found, sorted and stored at paths.txt$${RESET}"
	fi
	cat wayback.txt | unfurl -u keys >> keys.txt
	if [ -s keys.txt ]
	then
		echo -e "${GREEN}[*] No keys were found.${RESET}"
	else
		echo -e "${GREEN}[*] Keys found,  sorted and stored at keys.txt${RESET}"
	fi
}
