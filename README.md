# Website for colonio

- Source code of [webpage](https://www.colonio.dev/) for [colonio](https://github.com/llamerada-jp/colonio), [colonio-seed](https://github.com/llamerada-jp/colonio-seed) and related repositories
- Using [GitHub Pages](https://docs.github.com/en/github/working-with-github-pages) and [jekyll](http://jekyllrb-ja.github.io/)

### Setup jekyll

on ubuntu 20.04

```console
$ sudo apt install ruby ruby-dev
$ make setup
```

### Generate API documents

on ubuntu 20.04

```console
$ export COLONIO_GIT_PATH=<path to cloned colonio repository>
$ make generate
```

### Preview

on ubuntu 20.04

```console
$ jekyll s
```

Access [http://localhost:4000](http://localhost:4000) using your browser.

## License

MIT License
