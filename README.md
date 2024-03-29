<h1 align="center"> The-Switchboard </h1>

An Ubuntu image run in a  container, configured with a collection of tools and more for CTF-Challenges and Bug Bounty.

## Instructions
1. Install [![Docker](https://badgen.net/badge/icon/docker?icon=docker&label)](https://https://docs.docker.com/get-docker/) on your machine.

2. Create a directory to copy The-Switchboard code into (you can name it whatever you want).
```bash
mkdir switchboard
```
3. Move into the directory.
```bash
cd switchboard
```
4. Clone the repository.
```bash
git clone https://github.com/D1al-T0ne/The-Switchboard.git
```
5. You will need to build the image.
```bash
docker build -t switchboard .
```
Running this command with "-t" or "--tag" followed by a name will tag the image with this name. The "." is telling docker the Dockerfile is in the current directory to build from.<br>

6. You then can run the image.
```bash
docker run -it switchboard
```
Running this command with "-it" allows for interactive processes (like a shell).

## Notes:
I created an alias to run the image.

```bash
alias switchboard='cd ~/switchboard && docker run -v ~/switchboard:/srv/ -it --rm swithcboard'
```
 Breaking down the alias.
 - "cd ~/switchboard", moves you into the directory switchboard 
 - "docker run. -v ~/switchboard:/srv/", this gives persistant storage.
 - "--it --rm swithchboard", "--rm" is away to keep things clean after the image is shutdown.


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
 - Finish setup.sh script to finsih some configurations for Bash, and Vim.
 - Add curlrc file

## Feedback
If you have any tips or improvement ideas I should be working on please let me [know.](https://github.com/D1al-T0ne/The-Switchboard/issues)

[![D1al T0ne](https://aleen42.github.io/badges/src/twitter.svg)](https://twitter.com/D1AL__T0NE)<br>
