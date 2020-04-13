.PHONY: install
install:
	brew install telegraf || brew reinstall telegraf
	cp ./telegraf/telegraf.conf.telemac /usr/local/etc/telegraf.conf
	brew services restart telegraf
	docker-compose up --detach

.PHONY: remove
remove:
	brew services stop telegraf || true
	brew uninstall telegraf
	docker-compose down
