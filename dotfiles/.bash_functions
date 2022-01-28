#!/usr/bin/env bash

function wayback() {
	BLUE="\033[1;36m"
	YELLOW="\033[1;33m"
	GREEN="\033[1;32m"
	RESET="\033[0m"

	echo -e "${BLUE}[*] Scraping for URLs.${RESET}"
	gau $1 | sort -u | tee -a  wayback.txt 
	if [ ! -s wayback.txt ]; then 
		echo -e "${YELLOW}[*] No URLs were found.${RESET}"
		rm wayback.txt
		return 1
	else
		echo -e "${GREEN}[*] URLs sorted and stored at wayback.txt${RESET}"
	fi
	cat wayback.txt | unfurl -u paths >> paths.txt
	if [ ! -s paths.txt ]; then
		echo -e "${YELLOW}[*] No paths were found.${RESET}"
		rm paths.txt
	else
		echo -e "${GREEN}[*] Paths found, sorted and stored at paths.txt${RESET}"
	fi
	cat wayback.txt | unfurl -u keys >> keys.txt
	if [ ! -s keys.txt ]; then
		echo -e "${YELLOW}[*] No keys were found.${RESET}"
		rm keys.txt
	else
		echo -e "${GREEN}[*] Keys found,  sorted and stored at keys.txt${RESET}"
	fi
}
