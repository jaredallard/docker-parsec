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

`latest` latest parsec client version
`146` 28th April 2018 (`-2)

**Note**: The binary is NOT able to update itself, so you may need to update
your container at some point. The container has no state configure so you should
just have to `docker pull jaredallard/parsec:<version>` and re-run `./parsec`

## License 

MIT
