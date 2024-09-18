# Desarrollo y despliegue de LearningML2

LearningML2 consta de los siguientes proyectos:

- https://gitlab.com/lml-corp/lml-dev
- https://gitlab.com/lml-corp/lml-editor-lit
- https://gitlab.com/lml-corp/lml-scratch-gui
- https://gitlab.com/lml-corp/lml-scratch-vm
- https://gitlab.com/lml-corp/lml-scratch-l10n

# lml-dev

Es un proyecto cuya finalidad es instalar un entorno de desarrollo dockerizado con todos los componentes, instalados como submódulos de git, que requiere LearningML2.

Ofrece un `Makefile` con el que se pueden lanzar los comandos más frecuentes para el desarrollo.

Tiene dos ramas: `devel` y `main`. Los componentes:

- https://gitlab.com/lml-corp/lml-editor-lit
- https://gitlab.com/lml-corp/lml-scratch-gui
- https://gitlab.com/lml-corp/lml-scratch-vm
- https://gitlab.com/lml-corp/lml-scratch-l10n

Deben estar siempre en la rama que corresponde a la rama del proyecto principal `lml-dev`.

Para cambiar de ramas tanto el proyecto `lml-dev` como los submódulos se debe usar `make change-devel` o `make change-main`.

# lml-editor-lit

Es el editor de modelos de LearningML.

Tiene dos ramas: `develop`y `main`. Solo cuando se suben cambios a la rama `main` se ejecuta una pipeline que construye la imagen que usa el servidor de LearningML. En este último una instancia de `watchtower` se encarga de mantener actualizada la imagen.



# lml-scratch-gui

Es el componente principal de lml-scratch. 

Tiene dos ramas: `devel`y `main`. Solo cuando se suben cambios a la rama `main` se ejecuta una pipeline que construye la imagen que usa el servidor de LearningML. En este último una instancia de `watchtower` se encarga de mantener actualizada la imagen.

# lml-scratch-vm

Es la máquina virtual de lml-scratch.

Tiene dos ramas: `devel`y `main`. Solo cuando se suben cambios a la rama `main` se ejecuta una pipeline que lanza la pipeline del proyecto `lml-scratch-gui` el cual construye la imagen de Scratch completa.

# lml-scratch-l10n

Es el componente para la internacionalización de lml-scratch.

Tiene dos ramas: `devel`y `main`. Solo cuando se suben cambios a la rama `main` se ejecuta una pipeline que lanza la pipeline del proyecto `lml-scratch-gui` el cual construye la imagen de Scratch completa.

# Estrategia de desarrollo y despliegue

Para desarrollar se usará el proyecto `lml-dev` en la rama `devel` con todos los submódulos en la rama `devel`. A medida que se vayan cambiando los submódulos se debe ir actualizando el proyecto `lml-dev`. Obviamente, cuando haya cambios en los ficheros de este proyecto, también hay que actualizar.

Cuando se tenga una versión de desarrollo que se quiera instalar en producción hay que:

1. Subir a gitlab la rama `devel` de `lml-dev` y todas las ramas `devel` de los componentes.

2. Cambiar a la rama `main` de `lml-dev` con `make change-main`.

3. Fusionar `main` de `lml-dev` con `devel`.

4. Entrar en los proyectos `lml-editor-lit`, `lml-scratch-l10n`, `lml-scratch-vm` y `lml-scratch-gui`, fusionar con `devel` y subir a gitlab la rama `main`. Se crearán las imágenes `lml-editor` y `lml-scratch` y se actulizarán automáticamente en el servidor de LearningML.

5. Subir la rama `main` de `lml-dev` a gitlab.

En todos los proyectos se debe desarrollar únicamente sobre la rama `develop`, y realizar merge request desde `develop` a `main` cuando se quiera actualizar la versión del servidor.