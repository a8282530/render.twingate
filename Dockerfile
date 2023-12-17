# 使用 twingate/connector:1 作为基础镜像
FROM twingate/connector:1

# 设置环境变量
ENV TWINGATE_NETWORK=vnc
ENV TWINGATE_ACCESS_TOKEN=eyJhbGciOiJFUzI1NiIsImtpZCI6ImNqUC02dmdxTm94Wkt3ajRDNFREMjJQTGRENFBGSXJGRWpMQk5fZmZNZTgiLCJ0eXAiOiJEQVQifQ.eyJudCI6IkFOIiwiYWlkIjoiMjAyMjA2IiwiZGlkIjoiMTEyNDA1NiIsImp0aSI6IjFlNDA0OTg3LWIwZmQtNDkzMy04Njg5LWNiYWY3MzYwMjRjNyIsImlzcyI6InR3aW5nYXRlIiwiYXVkIjoidm5jIiwiZXhwIjoxNzAyNzg5NTg0LCJpYXQiOjE3MDI3ODU5ODQsInZlciI6IjQiLCJ0aWQiOiI2NTk3MyIsInJudyI6MTcwMjc4NjI4NCwicm5ldGlkIjoiODI1OTYifQ.YwDW1DGGUK4Oz0WLo8pBl-7_rQq8-YhEG2o0GNeUDqiCkx7016M6MOc7OUmzwvKNPrYQN4Y_zk32NbgsyAPJXw
ENV TWINGATE_REFRESH_TOKEN=_567B6-20iBXKgpEuJUnx1L9O9eaVuZ21u60LLNQ2vitzqobmOjUU26FeEb-LZICh9JVZfEmATHABBE2yrYulhHcW8PbtDIe-Z3kJrFfRQDJ2AyO4_l7VP3J-B8avM3bTbzLfA
# 设置容器的名称和重启策略在 docker run 命令中，不能在 Dockerfile 中设置
# --name "twingate-render"
# --restart=unless-stopped
