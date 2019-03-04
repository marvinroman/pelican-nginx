# Pelican Earth Strike Site
## How to Use
* Install docker on your computer
* Follow these instructions to clone and launch the docker.
```
git clone https://github.com/marvinroman/pelican-nginx.git
cd pelican-nginx
docker-compose up -d
```
* Find the ID of the docker that was launched by looking at the output of ```docker-compose up -d```
**Example Output**
```
mycomputer:pelican-nginx myuser$ docker-compose up -d
Recreating pelican-nginx_pelican-nginx_1 ... done
```
In the above context it is ```pelican-nginx_pelican-nginx_1```
* Now you can enter the docker to run commands inside it similar to SSH (replace the section with brackets with the name of the docker)
```docker exec -it [pelican-nginx_pelican-nginx_1] sh```
* You prompt should now be inside the docker and you can regenerate the site using the following command.
```pelican```
* You can alter the theme of the by using the **-t** flag after the command. Like so
```pelican -t pelican-themes/[selected theme]```
