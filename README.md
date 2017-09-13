# danger on docker

docker hub is [https://hub.docker.com/r/pyar6329/danger](https://hub.docker.com/r/pyar6329/danger/).

## Supported tags and respective `Dockerfile` links

- `5.4.1-ruby`, `5.4.1`, `latest` [(ruby/Dockerfile)](https://github.com/pyar6329/danger-docker/blob/master/ruby/Dockerfile)
- `5.4.1-node` [(javascript/Dockerfile)](https://github.com/pyar6329/danger-docker/blob/master/javascript/Dockerfile)

## Using

Set Environment `DANGER_GITHUB_API_TOKEN` on CI(travis, circleCI, etc...) and add Dangerfile to your root of repository.  
Using CI environment variable is [here](https://github.com/danger/danger/blob/master/lib/danger/ci_source/travis.rb).

Running on CI below script.

### Ruby

```bash
$ printenv | grep -Ev "PATH|path|GEM" > env.list
$ docker run -it --rm --env-file env.list -v "$(pwd):/usr/src/app" pyar6329/danger:5.4.1
```

### Javascript

```bash
$ printenv | grep -Ev "PATH|path|GEM|NVM" > env.list
$ docker run -it --rm --env-file env.list -v "$(pwd):/usr/src/app" pyar6329/danger:5.4.1-node
```

