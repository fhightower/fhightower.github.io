+++
date = "2019-01-27"
title = "Running Gitbook on Gitlab"
description = "How to run a gitbook in gitlab."
tags = ["Gitbook", "Gitlab", "Documentation"]
+++

Here's how to run a [gitbook](https://www.gitbook.com/) in [gitlab pages](https://docs.gitlab.com/ee/user/project/pages/):

1. Create a repo in Gitlab
2. Clone the template [here](https://github.com/fhightower-templates/gitbook-template)
3. Add the following file as `.gitlab-ci.yml` and push to gitlab:

```
# requiring the environment of NodeJS 6.12.x
image: node:6.12

# add 'node_modules' to cache for speeding up builds
cache:
  paths:
    - node_modules/ # Node modules and dependencies

before_script:
  - npm install gitbook-cli -g # install gitbook
  - gitbook fetch latest # fetch latest stable version
  - gitbook install # add any requested plugins in book.json

# the 'pages' job will deploy and build your site to the 'public' path
pages:
  stage: deploy
  script:
    - gitbook build . public # build to public path
  artifacts:
    paths:
      - public
  only:
    - master # this job will affect only the 'master' branch
```

Once you push this, you'll have a gitbook running.
