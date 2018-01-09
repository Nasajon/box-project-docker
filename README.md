# Box Project Docker

This image is used on our company and we decided to share with the world because we any image of this.

# What is Box Project?

The Box application simplifies the Phar building process. Out of the box (no pun intended), the application can do many great things:

- Add, replace, and remove files and stubs in existing Phars.
- Extract a whole Phar, or cherry pick which files you want.
- Retrieve information about the Phar extension, or a Phar file.
  - List the contents of a Phar.
- Verify the signature of an existing Phar.
- Generate RSA (PKCS#1 encoded) private keys for OpenSSL signing.
  - Extract public keys from existing RSA private keys.
- Use Git tags and short commit hashes for versioning.

Since the application is based on the [Box library](https://github.com/herrera-io/php-box), you get its benefits as well:

- On the fly search and replace of placeholders.
- Compact file contents based on file type.
- Generate custom stubs.

# Using

### Run the `box-project` image:

```sh
docker run --rm --interactive --tty \
    --volume $PWD:/app \
    nasajon/box-project build
```

### Docker pull command
```sh
    docker pull nasajon/box-project
```

### Local runtime/binary

If you want to be able to run `box-project` as if it was installed on your host locally, you can define the following function in your `~/.bashrc`, `~/.zshrc` or similar:

```sh
box () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --volume $(pwd):/app \
        nasajon/box-project "$@"
}
```
