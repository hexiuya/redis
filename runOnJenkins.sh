docker stop redis
docker rm redis
docker run -d -it -p 6379:6379 -v redis.conf:/usr/local/etc/redis/redis.conf --name redis --network crm-network --network-alias alias-redis-server redis redis-server /usr/local/etc/redis/redis.conf
