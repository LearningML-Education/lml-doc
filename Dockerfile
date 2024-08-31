FROM squidfunk/mkdocs-material AS manual-builder

COPY ./manual /docs

RUN mkdocs build

FROM squidfunk/mkdocs-material AS doc-tecnica-builder

COPY ./doc-tecnica /docs

RUN mkdocs build

FROM nginx:latest

COPY --from=manual-builder /docs/site /usr/share/nginx/html/manual
COPY --from=doc-tecnica-builder /docs/site /usr/share/nginx/html/doc-tecnica-builder