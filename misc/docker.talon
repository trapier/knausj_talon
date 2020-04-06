app: /terminal/
app: cmd.exe
app: iTerm2
app: Terminal
app: Windows Command Processor
app: URxvt
-

# Standard commands
docker images: "docker images"
docker logs: "docker logs"
docker node: "docker node "
docker node inspect: "docker node inspect "
docker node ls: "docker node ls\n"
docker ps: "docker ps\n"
docker ps table: insert("docker ps --format 'table {{{{.Names}}}}\\t{{{{.Status}}}}'\n")
docker ps status <phrase>: insert("docker ps -f status={phrase}")
docker run: "docker run "
docker service inspect: "docker service inspect "
docker service ls: "docker service ls\n"
docker service ls filter: "docker service ls -f "
docker service ps: "docker service ps "
docker service update force: "docker service update --force "
