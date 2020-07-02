bash /bin/wait-for docker-mc-db:5432 -- echo "DB Server has been started"
echo "=========Files from BUILDER=========="
ls -la /root/.ssh
echo "=========Files from GITHUB=========="
ls -la /opt/app2
echo "=========Files from HOST=========="
ls -la /opt/app3/docker-mc-p11
echo "===================================="
[[ -d node_modules ]] || npm i \
&& DEBUG=myapp:* npm start