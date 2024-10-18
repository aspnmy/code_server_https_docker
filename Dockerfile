FROM linuxserver/code-server:4.93.1

#启用https
RUN  sed -i.bak 's/cert: false/cert: true/' ~/.config/code-server/config.yaml && sed -i.bak 's/bind-addr: 127.0.0.1:8080/bind-addr: 0.0.0.0:8443/' ~/.config/code-server/config.yaml
RUN sudo setcap cap_net_bind_service=+ep /usr/lib/code-server/lib/node

EXPOSE 8443


