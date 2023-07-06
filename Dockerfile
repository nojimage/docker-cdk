FROM public.ecr.aws/sam/build-nodejs18.x:latest

RUN npm install -g aws-cdk@^2 typescript esbuild && npm install -g npm@^9
RUN yum install -y openssl

WORKDIR /var/stack/

CMD ["/bin/bash"]
