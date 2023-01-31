# Golang and ELK Stack Example

In this repo you can find example how to work with Elasticsearch and Go together

## Using technologies

- Golang 1.18 (with Go Mod for Golang vendor)
- Elasticsearch v7.17.0
- Kibana v7.17.0
- Filebeat v7.17.0
- Docker and docker-compose for running

## Service does

1. Run ElasticSearch
2. Run Kibana
3. Run Filebeat
4. Run Logstash
5. Configurate Kibana dashboards
6. Go application sending some test logs

## How to run

1. Clone project:

    ```bash
    git clone git@github.com:0x000777/elk-golang.git
    ```

2. Run init:

    ```bash
    make init
    ```

3. Run services:

    ```bash
    make compose-up
    ```

4. Wait services up and run for create index:

    ```bash
    make kibana-create-index
    ```

5. Open <http://localhost:5601> to see dashboard data
