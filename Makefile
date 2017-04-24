SHELL = /bin/bash

.PHONY: install run

install:
	@echo "Configurando Sculpin..."
	@composer install
	@echo "Instalando sitio Web..."
	@php bin/sculpin install

run:
	@php bin/sculpin generate --watch --server
