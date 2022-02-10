<h1 align="center"> The-Switchboard </h1>

[![Docker](https://badgen.net/badge/icon/docker?icon=docker&label)](https://https://docker.com/)

## Info
An Ubuntu image run in a Docker container, with a collection of tools and more for CTF-Challenges and Bug Bounty.

## Instructions
I created an alias to run the image.

```bash
alias switchboard='cd ~/switchboard && docker run -v ~/switchboard:/srv/ -it --rm swithcboard'
# "cd ~/switchboard"
# Moves you into the directory "switchboard" (this must be created and have the Dockerfile).
# "docker run. -v ~/switchboard:/srv/
# This gives persistant storage.
# "--it --rm swithchboard"
# Running the image with "--rm" is away to keep things clean after the image is shutdown.
```
Run the setup script in dotfiles folder to finish configuration.

## Tools

| Tool | Description |
| --- | --- |
| [arjun](https://github.com/s0md3v/Arjun) | Arjun is a tool for finding query parameters for URL endpoints. |
| [amass](https://github.com/OWASP/Amass) | The OWASP Amass Project performs network mapping of attack surfaces and external asset discovery using open source information gathering and active reconnaissance techniques. |
| [dirsearch](https://github.com/maurosoria/dirsearch) | Dirsearch is a mature command-line tool designed to brute force directories and files in webservers. |
| [eyewitness](https://github.com/FortyNorthSecurity/EyeWitness) | EyeWitness is designed to take screenshots of websites provide some server header info, and identify default credentials if known. |
| [ffuf](https://github.com/ffuf/ffuf/blob/master/README.md) | FFUF is an Open Source web fuzzing tool, intended for discovering elements and content within web applciations, or web servers. |
| [gau](https://github.com/lc/gau) | getallurls (gau) fetches known URLs from AlienVault's Open Threat Exchange, the Wayback Machine, and Common Crawl for any given domain. Inspired by Tomnomnom's waybackurls.|
| [gf](https://github.com/tomnomnom/gf) | A wrapper around grep to avoid typing common patterns. |
| [httprobe](https://github.com/tomnomnom/httprobe) | HTTProbe takes a list of domains and probes for working http and https servers. |
| [iis shortname scanner](https://github.com/irsdl/IIS-ShortName-Scanner) | Microsoft IIS contains a flaw that may lead to an unauthorized information disclosure. The issue is triggered during the parsing of a request that contains a tilde character (~). |
| [kiterunner](https://github.com/assetnote/kiterunner) | Kiterunner is a tool that is capable of not only performing traditional content discovery at lightning fast speeds, but also bruteforcing routes/endpoints in modern applications. |
| [linkfinder](https://github.com/GerbenJavado/LinkFinder) | LinkFinder is a python script written to discover endpoints and their parameters in JavaScript files. |
| [massdns](https://github.com/blechschmidt/massdns) | MassDNS is a simple high-performance DNS stub resolver targeting those who seek to resolve a massive amount of domain names in the order of millions or even billions. Without special configuration, MassDNS is capable of resolving over 350,000 names per second using publicly available resolvers. |
| [meg](https://github.com/tomnomnom/meg) | meg is a tool for fetching lots of URLs but still being 'nice' to servers. |
| [nmap](https://nmap.org/) | Nmap is a free and open source utility for network security and auditing. |
| [qsreplace](https://github.com/tomnomnom/qsreplace) | Accept URLs on stdin, replace all query string values with a user-supplied value, only output each combination of query string parameters once per host and path. |
| [secrectfinder](https://github.com/m4ll0k/SecretFinder) | SecretFinder is a python script based on LinkFinder, written to discover sensitive data like apikeys, accesstoken, authorizations, jwt,..etc in JavaScript files. |
| [sqlmap](https://sqlmap.org/) | sqlmap is an open source penetration testing tool that automates the process of detecting and exploiting SQL injection flaws and taking over of database servers. |
| [unfurl](https://github.com/tomnomnom/unfurl) | Pull out bits of URLs provided on stdin |

## Todo
 - Fix FFUF install
 - Move GF-Patterns to .gf
 - Add curlrc file
 - Add README to script folder that describes each script.

### Feedback
If you have any tips or improvement ideas I should be working on please let me [know.](https://github.com/D1al-T0ne/The-Switchboard/issues)

---
