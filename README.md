# My Personal Site

My personal website: https://hightower.space

## Structure

There are two main components housed in this repo:

1. Configs and files for a static site generated using [Hugo](gohugo.io)
2. A directory with [Jupyter](https://jupyter.org/) notebooks deployed on Heroku using [Voila](https://github.com/voila-dashboards/voila)

### Hugo

To update the theme, run:

```bash
cd ./themes/cactus
git init .
git remote add origin git@github.com:monkeyWzr/hugo-theme-cactus.git
git pull origin main

# update the logo and favicon
cp ~/Pictures/chess_knight.png ./static/images/logo.png
cp ~/Pictures/chess_knight.png ./static/images/favicon.ico

rm -rf exampleSite/
rm -rf .git/
```

#### Changes From [Base Theme](https://github.com/monkeyWzr/hugo-theme-cactus)

- Removed some sharing options (#28)
- Updated about page [commit](https://github.com/fhightower/fhightower.github.io/commit/c4ad78d721282173cb6a2950a89175f3900cf5eb)
- Adding support for external links [commit](https://github.com/fhightower/fhightower.github.io/commit/35afe3e4d0e2c5ed67f02b054c1b16eabd06185e)
- Config changes [commit](https://github.com/fhightower/fhightower.github.io/commit/fa181b39b98b3a2a52c4deacacf33ab8c6d38b56#diff-28043ff911f28a5cb5742f7638363546311225a63eabc365af5356c70d4deb77)
- Simplifying sharing options [commit](https://github.com/fhightower/fhightower.github.io/commit/75304fa0f30f13cbf49f581c086db487b1085a92#diff-385e3689cd88941ebcd3dee3b5032a9e18a1d64ddbca65ae7c32faf0dcb3ef8b)

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
