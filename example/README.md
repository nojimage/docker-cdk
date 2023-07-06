# docker-cdk example

## sh container

`sh` is provided as a container for development.
This container based on `amazon/aws-sam-cli-build-image-nodejs18.x`, and you can use Node.js, AWS CLI, CDK CLI.

```shell
docker compose run --rm sh {any command}
```

## Example usage

### Register AWS Profile

```shell
docker compose run --rm sh aws configure
```

#### CDK init

```sh
docker compose run --rm sh cdk init app --language=typescript
```

#### CDK deploy

```sh
docker compose run --rm sh cdk deploy
```
