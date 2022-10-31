# build docker image
sh ./sh/build.sh

# run docker container
sh ./sh/run.sh

# 打开我们的jira容器shell
docker exec -it `docker ps|grep jira|awk '{print $1}'` /bin/bash


cd /opt/atlassian/jira/

# 通过破解包生成激活码
# -p 产品名称 jira
# -m 邮箱（test@test.com）
# -n 用户名，这个随意
# -o 部署的入口地址
# -s 服务器ID（BY9B-GWD1-1C78-K2DE）

java -jar atlassian-agent.jar -p jira -m test@test.com -n MTWS -o https://127.0.0.1:8080 -s B012-3EMF-0Q6N-2H7P