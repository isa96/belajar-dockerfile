
# FROM Instruction
docker build -t izzansilmi/from from

docker image ls

# RUN Instruction
docker build -t izzansilmi/run run

docker build -t izzansilmi/run run --progress=plain --no-cache

# CMD Instruction
docker build -t izzansilmi/command command

docker image inspect izzansilmi/command

docker container create --name command izzansilmi/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t izzansilmi/label label

docker image inspect izzansilmi/label

# ADD Instruction
docker build -t izzansilmi/add add

docker container create --name add izzansilmi/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t izzansilmi/copy copy

docker container create --name copy izzansilmi/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t izzansilmi/ignore ignore

docker container create --name ignore izzansilmi/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t izzansilmi/expose expose

docker image inspect izzansilmi/expose

docker container create --name expose -p 8080:8080 izzansilmi/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t izzansilmi/env env

docker image inspect izzansilmi/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 izzansilmi/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t izzansilmi/volume volume

docker image inspect izzansilmi/volume

docker container create --name volume -p 8080:8080 izzansilmi/volume

docker container start volume

docker container logs volume

docker container inspect volume

docker volume ls

# WORKDIR Instruction
docker build -t izzansilmi/workdir workdir

docker container create --name workdir -p 8080:8080 izzansilmi/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t izzansilmi/user user

docker container create --name user -p 8080:8080 izzansilmi/user

docker container start user

docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t izzansilmi/arg arg --build-arg app=aaa

docker container create --name arg -p 8080:8080 izzansilmi/arg

docker container start arg

docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t izzansilmi/health health

docker container create --name health -p 8080:8080 izzansilmi/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t izzansilmi/entrypoint entrypoint

docker image inspect izzansilmi/entrypoint

docker container create --name entrypoint -p 8080:8080 izzansilmi/entrypoint

docker container start entrypoint

# Multi Stage Build
docker build -t izzansilmi/multi multi

docker image ls

docker container create --name multi -p 8080:8080 izzansilmi/multi

docker container start multi

# Docker Push
docker tag izzansilmi/multi registry.digitalocean.com/izzansilmi/multi

docker --config /Users/IZZAN/.docker-digital-ocean/ push registry.digitalocean.com/izzansilmi/multi

docker --config /Users/IZZAN/.docker-digital-ocean/ pull registry.digitalocean.com/izzansilmi/multi