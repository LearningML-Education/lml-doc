# Comandos
.PHONY: upd down build-docs build-manual clean help

# Mostrar ayuda
help:
	@echo "Comandos disponibles en este Makefile:"
	@echo "  upd          - Inicia el sistema de documentación"
	@echo "  down         - Detiene el sistema de documentación"
	@echo "  build-docs   - Genera el sitio de documentación técnica"
	@echo "  build-manual - Genera el manual de usuario"
	@echo "  clean        - Limpia los archivos generados"
	@echo "  help         - Muestra esta ayuda"

# Iniciar sistema de documentación
upd:
	@echo "Iniciando sistema de documentación..."
	docker compose up -d --build

# Parar sistema de documentación
down:
	@echo "Parando sistema de documentación..."
	docker compose down

# Generar sitio de documentación técnica
build-docs:
	@echo "Generando sitio de documentación técnica..."
	docker exec -it mkdocs-doc-tecnica mkdocs build

# Generar manual de usuario
build-manual:
	@echo "Generando manual de usuario..."
	docker exec -it mkdocs-manual mkdocs build

# Limpiar archivos generados
clean:
	@echo "Limpiando archivos generados..."
	sudo rm -rf ./doc-tecnica/site ./manual/site

