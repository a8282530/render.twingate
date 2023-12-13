# 使用 Ubuntu 22.04 作为基础镜像
FROM ubuntu:22.04

# 安装 Shellinabox
RUN apt-get update && \
    apt-get install -y wget curl gnupg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 设置 root 用户的密码为 'root'
# RUN echo 'root:root' | chpasswd


curl "https://binaries.twingate.com/connector/setup.sh" | sudo TWINGATE_ACCESS_TOKEN="eyJhbGciOiJFUzI1NiIsImtpZCI6IkZOMU5NQVZUTUpaNVN0cUFMdDNRUklXbUstMXVjUzNhb2tqaHJMS21WY3MiLCJ0eXAiOiJEQVQifQ.eyJudCI6IkFOIiwiYWlkIjoiMTk5NzcyIiwiZGlkIjoiMTExNTYyOCIsImp0aSI6IjIzNzQ3Njc3LTY4MjctNDk1My1iYmU4LTA3MDQwN2FhZjcwZSIsImlzcyI6InR3aW5nYXRlIiwiYXVkIjoiZGFuYXMiLCJleHAiOjE3MDI0NTgwMzAsImlhdCI6MTcwMjQ1NDQzMCwidmVyIjoiNCIsInRpZCI6IjY1MjExIiwicm53IjoxNzAyNDU0NzMwLCJybmV0aWQiOiI4MTY4OCJ9.KZu60KoOElEmk2inHZBRMWBFXvLzHrWzHDRsFKPld1I4epglwpj9G89cMYxQpj2rZaOIFGsRVujcflZYn-wBVw" TWINGATE_REFRESH_TOKEN="KZGwCrZDsvA_vdazUVwoV9Ca-PQae1h_CX4HHp3r_kcFE8_zRGljlQ7qZmQK7h_Sm2lgZ2YlZmP1pJSpKJSWd11JegaoC-kP3I0VLpnKol03M21UI_KSlDke3OUz4MkPpMrNlw" TWINGATE_NETWORK="danas" bash
