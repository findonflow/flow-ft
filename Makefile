.PHONY: test
test:
	$(MAKE) generate -C lib/go
	$(MAKE) test -C lib/go
	flow test --cover tests/*.cdc

.PHONY: ci
ci:
	$(MAKE) ci -C lib/go
	flow test --cover tests/*.cdc
