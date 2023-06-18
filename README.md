# internet-monitoring

Due to intermittent issues with my internet, I've decided to create a monitoring stack that would show me how often the internet goes down.

## How does it work?
The shell script periodically pings Google's DNS and writes a response to a postgres database which is then queried by the grafana instance.

## How to run:
Just clone the repo and run ./start.sh, you need to have docker running.

❗grafana login data:
- admin/admin
- user/user

Once all the container start, you should be able to see the dashboard at [http://localhost:3001](http://localhost:3001):

![image](https://github.com/TomasMrkva/internet-monitoring/assets/57423011/12dfb687-3815-4ec7-8062-21f7e8a4af79)
