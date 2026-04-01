FROM public.ecr.aws/sam/build-nodejs22.x:latest

# Copy CDK version file
COPY .cdk-version /tmp/.cdk-version

# Install CDK with specific version from .cdk-version file
RUN CDK_VERSION=$(cat /tmp/.cdk-version) && \
    echo "Installing CDK version: $CDK_VERSION" && \
    npm install -g aws-cdk@$CDK_VERSION typescript esbuild && \
    corepack enable pnpm && \
    rm /tmp/.cdk-version
RUN npm install -g npm@^11
RUN dnf install -y openssl

# Install Session Manager plugin
# https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html
RUN ARCH=$(uname -m) && \
    case $ARCH in \
        x86_64) PLATFORM_NAME="linux_64bit";; \
        aarch64) PLATFORM_NAME="linux_arm64";; \
        *) echo "Unsupported platform"; exit 1;; \
    esac && \
    dnf install -y "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/$PLATFORM_NAME/session-manager-plugin.rpm"

WORKDIR /var/stack/

CMD ["/bin/bash"]
