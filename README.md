# Mednafen Server for GNU/Debian

[![GitHub Release](https://img.shields.io/github/release/valentineus/mednafen-server.svg)](https://github.com/valentineus/mednafen-server/releases)
[![Build Status](https://travis-ci.org/valentineus/mednafen-server.svg?branch=master)](https://travis-ci.org/valentineus/mednafen-server)

Automatic build and deployment of the package `mednafen-server`.

## General use

Installation packages are available in the
[release](https://github.com/valentineus/mednafen-server/releases)
section.

After downloading the package, perform the installation:
```bash
# dpkg --install mednafen-server_*_amd64.deb
```

Starting the server:
```bash
# mednafen-server standard.conf
```

An example of the configuration file is in the repository.
Detailed information is available on the
[developer's website](https://mednafen.github.io/releases/#mednafen-server).

## Docker use

* Download the image:
```bash
$ docker pull valentineus/mednafen-server:latest
```

* Start the container:
```bash
$ docker run --detach --restart=unless-stopped --publish 4046:4046 --name "mednafen-server" valentineus/mednafen-server
```

More information on the
[image page](https://hub.docker.com/r/valentineus/mednafen-server/).

## License

<img height="256px" alt="GNU Banner" src="https://www.gnu.org/graphics/runfreegnu.png" />

[GNU GPLv3](LICENSE.txt).
Copyright (c)
[Valentin Popov](mailto:info@valentineus.link).