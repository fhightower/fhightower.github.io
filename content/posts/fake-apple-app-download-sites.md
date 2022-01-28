+++
date = "2022-01-25"
title = "Fake Apple App Download Sites"
description = "A collection of sites serving fake Apple download pages."
tags = ["Malware Analysis", "Threat Intelligence", "Apple"]
+++

**Note:** All URLs/domains in this post are [defanged](https://ioc-fanger.hightower.space/#overview). You can fang/defang them [here](https://ioc-fanger.hightower.space/#use-the-package-live).

I was investigating how to use [x11](https://elinux.org/X11) to serve a GUI running inside a docker container for an [nand2tetris](https://github.com/fhightower/nand2tetris) project I'm working on and I found a collection of domains serving fake Apple app downloads:

```
hXXps://loadsea[.]heredoggi[.]com/x11-forwarding-for-mac/
hXXps://moraea[.]batteryscience[.]us/location-of-x11-libraries-mac-os/
hXXps://letdwnl[.]brittanythomassigler[.]us/mac-os-x11-app/
hXXps://gogo[.]sunshinebeagles[.]us/mac-x11-manual-pdf-5252/
hXXps://isabelmaries[.]co/xquartz-alternative/
hXXps://holidayshunter[.]naturalwatches[.]co/x11-forwarding-for-mac/
```

Most of these redirect to a URL like:

```
hXXps://viperctum[.]info/go[.]php?url=https%3A%2F%2Fcdn[.]ketamo[.]info%2F%3Fa%3D337
89%26c%3D303745%26s1%3D111%26s2%3D1411c3vzwslb4a16%26s3%3DX11%2BForwarding%2BFor%2BM
ac&uclick=3vzwslb4
```

Which, decoded, looks like:

```
hXXps://viperctum[.]info/go[.]php?url=hXXps://cdn[.]ketamo[.]info/?a=33789&c=303745
&s1=111&s2=1411c3vzwslb4a16&s3=X11+Forwarding+For+Mac&uclick=3vzwslb4
```

When followed, this link goes to:

```
hXXps://www[.]pdf4mac[.]com/?czfjp=1296&e=2647&a=4389&f=pb&r=d2c78a53d92d4e789ead565
5b694d7101c8b4
```

Which contains a download for [this](https://www.virustotal.com/gui/file/856f233ee7363c0297a4f84e8783cdae0098ada0241009957dea433ebe1270de), undetected file.
