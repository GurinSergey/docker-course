run: 
   docker run -d -p 3000:4200 --env-file ./config/.env --name logsapp logsapp:env
run-volumes: 
   docker run -d -p 3000:3000 -v logs:/app/data --rm --name logsapp logsapp:volumes
run-dev:
   docker run -d -p 3000:3000 -v "E:\Practice\Docker\logs-app\:/app" -v /app/node_modules -v logs:/app/data --rm --name logsapp logsapp:volumes
stop:
   docker stop logsapp
