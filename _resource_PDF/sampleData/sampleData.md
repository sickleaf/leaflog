---
marp: true
---

# 表紙

---

# タイトルL1

## タイトルL2

・アイテム1
・アイテム2
・アイテム3

![width:200px grayscale](image/sample.png)

---

# shellgei

```
#!/bin/sh

saveDir=$1

usage=" usage: <1*:saveDir>"
leastArgs=`echo -n ${usage} | sed "s;[^*];;g" | wc -m`

[ $# -ge ${leastArgs} ] || { echo ${usage}; exit; } # if no args, echo usage

for st in `curl -s https://radiko.jp/v3/station/region/full.xml | grep -o banner/.*/ | cut -d/ -f2 | sort -u`
do
	mkdir -p ${saveDir}
        targetDate=`date  +%Y%m%d`
        xmlPath=${saveDir}/${st}_${targetDate}.xml

        url=http://radiko.jp/v3/program/station/date/${targetDate}/${st}.xml
        wget -q -O ${xmlPath} $url
        echo ${xmlPath}
 
done
```
