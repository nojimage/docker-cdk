# AWS CDK Image

This image based on `amazon/aws-sam-cli-build-image-nodejs24.x`, and you can use Node.js, AWS CLI, CDK CLI.

## Usage

```shell
docker pull ghcr.io/nojimage/docker-cdk:2.24
```

## Version semantics

- major: CDK version
- minor: Node.js version
- patch: CDK minor version
- prerelease: CDK patch version

e.g. 2.24.1031-0 => CDK 2.1031.0 with Node.js 24.x
e.g. 2.24.1031 => CDK 2.1031.x (latest patch) with Node.js 24.x
