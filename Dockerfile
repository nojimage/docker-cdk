FROM public.ecr.aws/sam/build-nodejs20.x:latest

RUN npm install -g aws-cdk@^2 typescript esbuild && npm install -g npm@^10
RUN dnf install -y openssl

WORKDIR /var/stack/

CMD ["/bin/bash"]
