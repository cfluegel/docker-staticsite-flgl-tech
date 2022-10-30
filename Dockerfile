# syntax=docker/dockerfile:1
FROM httpd:2.4

COPY content/ /usr/local/apache2/htdocs/
