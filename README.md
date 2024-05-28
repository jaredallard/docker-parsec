# parsec

Parsec in a docker container with X11 and PulseAudio forwarding.

```bash
git clone https://github.com/jaredallard/docker-parsec
./parsec
```

## Benefits

* Easily removable and versioned
* Works on ALL linux distributions that can run Docker (even Gentoo)
* Sandboxed (remote connects to X and PulseAudio)
* ???

## Prerequisites

* [Docker](https://docs.docker.com/engine/install/)

## Tags

* `main` latest parsec client version

**Note**: The binary is NOT able to update itself, so you may need to update
your container at some point. The container has no state configured by
default.

## FAQ

### How do I enable persistence?

You'll need to bind mount the `/home/parsec/.parsec` directory inside
the container somewhere on your host (e.g., `-v $HOME/.parsec:/home/parsec/.parsec`).
Currently, you'll need to modify the `parsec` script to do this.

## License

MIT
