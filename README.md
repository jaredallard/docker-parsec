# parsec

Parsec in a docker container 


```bash
docker pull jaredallard/parsec
./parsec
```

## Benefits

* Easily removable and versioned
* Works on ALL linux distros that can run Docker (even Gentoo)
* Sandboxed (remote connects to X and Pulseaudio)
* ???

## Tags

* `latest` latest parsec client version
* `146` 28th April 2018 (`-2`)

**Note**: The binary is NOT able to update itself, so you may need to update
your container at some point. The container has no state configure so you should
just have to `docker pull jaredallard/parsec:<version>` and re-run `./parsec`

## Persistence

Bind mount `$HOME/.parsec -> /home/parsec/.parsec` i.e: `-v $HOME/.parsec:/home/parsec/.parsec`

## Setup Docker

After following setup instructions below (EXCEPT GENTOO), run this:

```bash
$ systemctl enable docker
$ systemctl start docker
```

**Arch**: `pacman -S docker`

**Ubuntu / Debian**:

```bash
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$ sudo apt-get update
$ sudo apt-get install -y docker-ce
```

**Gentoo**:

First you'll need build your kernel following [this](https://wiki.gentoo.org/wiki/Docker) guide.

Then rebuild your kernel via `buildkernel`, if you have it from Sakaki's guide or `genkernel` (stock), once it's
done restart your computer

Install Docker

```
$ sudo emerge -av docker
```

Verify you configured the kernel properly `/usr/share/docker/contrib/check-config.sh`

**Note**: You can safely ignoring missing features, like, `Storage Drivers` if you're not using them,
i.e zfs but you only use `ext4,btrfs,etc...`. You can also ignore `CONFIG_NF_NAT_[T]FTP+`

Start docker via `sudo rc-service docker start`, verify it started with `sudo rc-service docker status`.
If it didn't crash you're good. You should add it to default via `sudo rc-update add docker default`

## License 

MIT
