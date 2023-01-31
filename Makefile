.PHONY: vendor

init:
	sudo chown root:root ./config/filebeat.yml && sudo chmod go-w ./config/filebeat.yml

compose-up:
	docker compose -f docker-compose.yml down --remove-orphans
	docker compose -f docker-compose.yml up -d --remove-orphans --build

kibana-create-index:
	curl -X POST "localhost:5601/api/index_patterns/index_pattern" -H 'kbn-xsrf: true' -H 'Content-Type: application/json' -d'{ "index_pattern": { "title": "app", "timeFieldName": "@timestamp" } }'
