# My Personal Site

My personal website: https://hightower.space

## Structure

There are two main components housed in this repo:

1. Configs and files for a static site generated using [Hugo](gohugo.io)
2. A directory with [Jupyter](https://jupyter.org/) notebooks deployed on Heroku using [Voila](https://github.com/voila-dashboards/voila)

### Hugo

To update the theme, run:

```bash
git submodule update
```

### Notebooks

Jupyter notebooks capturing thoughts and explorations.

#### Local Usage

To start jupyter lab, run:

```
docker-compose run --rm jupyter
```

To use voila:

```
docker-compose run --rm voila
```

#### Clojure

A clojure kernel is available using [clojupyter](https://github.com/clojupyter/clojupyter).

You can view the Clojure kernels with: `clj -m clojupyter.cmdline list-installs`
and can remove them with: `clj -m clojupyter.cmdline remove-install {KERNEL NAME}`
(e.g. `clj -m clojupyter.cmdline remove-install clojure-kernel`)

#### Javascript

Local use of javascript in Jupyter Lab is limited (see [https://github.com/jupyterlab/jupyterlab/issues/3748](https://github.com/jupyterlab/jupyterlab/issues/3748)).

If one needs to use javascript locally, open a notebook as a classic notebook and it should work.
