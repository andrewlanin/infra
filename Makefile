.PHONY: *

# =============================================================================
# Remote commands
# =============================================================================

deploy:
	ssh $(HOST) 'rm -rf ~/infra && mkdir ~/infra'
	scp -r * $(HOST):~/infra
	ssh $(HOST) 'make -C ~/infra up'

# =============================================================================
# On-host commands
# =============================================================================

COMPOSE=docker compose -f hosts/$(shell hostname)/docker-compose.yaml

up:
	$(COMPOSE) up -d --build

ps:
	$(COMPOSE) ps

logs:
	$(COMPOSE) logs $(SERVICE)

shell:
	$(COMPOSE) exec $(SERVICE) sh
