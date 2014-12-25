CheckiO dev image
=======

###### Instruction:
*Mac os*
1. install docker: https://docs.docker.com/installation/mac/
2. If you see message when you `boot2docker start`:
  `To connect the Docker client to the Docker daemon, please set: export  DOCKER_HOST=tcp://192.168.59.103:2375`
  you can add those vars to ~/.bash_profile
3. `echo $(boot2docker ip) checkio | sudo tee -a /etc/hosts`
4. Register at docker.com
5. Ask access to `mastak/checkio-dev` image
6. Get image `docker pull mastak/checkio-dev`
7. For run server, you can run this command in this directory:
`make path="/path/to/checkio" run` - quick start
`make path="/path/to/checkio" run-full` - start with migration and install requirements

*Linux*
1. install docker: https://docs.docker.com/installation/mac/
2. Register at docker.com
3. Ask access to `mastak/checkio-dev` image
4. Get image `docker pull mastak/checkio-dev`
5. For run server, you can run this command in this directory:
`make path="/path/to/checkio" run` - quick start
`make path="/path/to/checkio" run-full` - start with migration and install requirements

Site will be available at http://checkio/

###### Build image with new DB:
1. place sql dump file to this directory like `db.sql`
2. Run `make new`
3. wait...
4. profit

5. You can push image like `docker push mastak/checkio-dev` for update image in the Lane
