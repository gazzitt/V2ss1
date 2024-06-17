#FROM fabric8/java-centos-openjdk8-jdk:latest As AmirUbuntu
FROM nginx:1.22.1 As AmirUbuntu
EXPOSE 80
USER root
COPY x-ui-linux-amd64-hossinasaadi-0.5.4.tar.gz /home/
COPY ["nginx-1.22.1-Stable version.tar.gz", "/home/"]
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir /etc/x-ui
COPY x-ui.json /etc/x-ui/
COPY start.sh /home/
COPY iran.dat /home/x-ui/bin/
COPY dlc.dat /home/x-ui/bin/
WORKDIR "/home/"
RUN tar xvzf x-ui-linux-amd64-hossinasaadi-0.5.4.tar.gz
RUN rm x-ui-linux-amd64-hossinasaadi-0.5.4.tar.gz
COPY x-ui /home/x-ui/
RUN chmod +x /home/start.sh
RUN chmod +x /home/x-ui/x-ui
CMD bash -C 'start.sh';'bash'
