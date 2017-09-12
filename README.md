# danger on docker

docker hub is [https://hub.docker.com/r/pyar6329/danger](https://hub.docker.com/r/pyar6329/danger/).

# Using

Set Environment `DANGER_GITHUB_API_TOKEN` on CI(travis, circleCI, etc...) and add Dangerfile to your root of repository.  
Using CI environment variable is [here](https://github.com/danger/danger/blob/master/lib/danger/ci_source/travis.rb).

Running on CI below script.

```bash
$ printenv > env.list
$ docker run -it --rm --env-file env.list -v "$(pwd):/usr/src/app" pyar6329/danger:latest
```

