##  Garry's Mod Dedicated Server Images
**With CS:S content.**<br/>
*NOT AN OFFICIAL IMAGE.*<br/>

### Pull from DockerHub
```bash
docker pull fnjn/garrysmod:latest
docker run -d -p 27015:27015 garrysmod:latest
```

### Build from Dockerfile
```bash
git git@github.com:Fnjn/garrysMod-docker.git
cd garrysMod-docker
docker build . -t garrysmod:latest
docker run -d -p 27015:27015 garrysmod:latest
```

### Configuration
Configure server setting in `cfg/server.cfg`.<br/>
Mount supported games in `cfg/mount.cfg`.<br/>
Add banned IP in `cfg/banned_ip.cfg`.<br/>
Add banned users in `cfg/banned_user.cfg`.<br/>

### Example

```
garrysmod/srcds_run -game garrysmod -maxplayers 16 +gamemode sandbox +map gm_flatgrass
```

<br/>**Report any problem to [issue](https://github.com/Fnjn/garrysMod-docker/issues) page.**<br/>
