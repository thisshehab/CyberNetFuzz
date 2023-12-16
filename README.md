# CyberNetFuzz
Efficiently discover and scan a web app's content for common vulnerabilities. Identify potential SQL injection, SSRF, XSS, and more.

# Usage
provide a list of domains, the tool will crawling the webapp and get all the possible vulnerable endpoints, then test them using custom nuclei tamplets!

## Installation via docker
make sure that you have installed docker 

```console
apt install docker.io
```

start docker service 
```console
systemctl start docker
```

clone the repository
```console
git clone https://github.com/thisshehab/CyberNetFuzz.git
cd CyberNetFuzz
```
build the image 
```console
docker build -t CyberNetFuzz .
```
## Usage
replace the file yourinput.txt with yours one, make sure that the file format like this 
<br>
http://example.com <br>
https://example.com <br>
...

```console
sudo docker run -v ./yourinput.txt:/app/input.txt -it CyberNetFuzz
```
