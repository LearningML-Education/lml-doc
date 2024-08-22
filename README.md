# Proyecto de documentación de LearningML

El objetivo de este repositorio es recopilar la documentación de todo tipo que se genere sobre el proyecto LearningML.

Se ha usado [`mkdocs-material`](https://squidfunk.github.io/mkdocs-material/) como sistema de generación de documentación. Por ello, todos los documentos que la componen deben ser escritos en formato `markdown`.

## Instalación rápida

```bash
git clone git@gitlab.com:lml-corp/lml-doc.git
cd lml-doc
make upd
```

Se levantarán dos contenedores, uno para la documentación técnica y otro para el manual.

- A la documentación técnica se accede a través de `http://localhost:8000`.
- Al manual se accede a través de `http://localhost:8001`.

Para generar el sitio web estático de la documentación técnica:

```bash
make build-docs
```

Para generar el sitio web estático del manual

```bash
make build-manual
```

Para parar el sistema:

```bash
make down
```

Para eliminar los sitios generados (estos no se añaden al control de versión):

```bash
make clean
```

Los ficheros que componen la documentación de cada proyecto se encuentran en el directorio `<proyecto>/docs`. La documentación debe ser desarrollada siguiendo la lógica del proyecto [`mkdocs`](https://www.mkdocs.org/).

Los sitios se generan en `<proyecto>/site`.