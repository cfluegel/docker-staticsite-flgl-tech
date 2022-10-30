# docker-staticsite-flgl-tech
Dockerfile and Content for the Static Site Container Image Definition of the site flgl.tech  

Matrix requires files on specific locations for the Federation to work. Instead of trying to redirect the request, which would probably be the better solution, I will add the files as static content to a httpd container image. Luckyly the content does not change. 

I will need this container image because I am switching to a Traefik Docker environment for most of my content.  

## Github Workflow 
For the time being this feature is not required. The contents will not change that often. 
