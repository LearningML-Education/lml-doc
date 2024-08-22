# Índice

- [Introducción](#introducción)
- [LML Editor](#lml-editor)
  - [Entorno de desarrollo](#entorno-de-desarrollo)
  - [Construcción de un desplegable](#construcción-de-un-desplegable)
  - [Fichero `.env`](#fichero-env)
  - [Traducciones](#traducciones)
  - [Arquitectura](#arquitectura)
    - [Estructura de componentes](#estructura-de-componentes)
    - [Proveedores de contexto](#proveedores-de-contexto)
    - [Producir un evento en un componente y detectarlo en otro componente hermano](#producir-un-evento-en-un-componente-y-detectarlo-en-otro-componente-hermano)
    - [Modificar el valor de un contexto](#modificar-el-valor-de-un-contexto)
- [La librería `lml-algorithms`](#la-librería-lml-algorithms)
  - [Extractores de características (Feature extractors o encoders)](#extractores-de-características-feature-extractors-o-encoders)
    - [Codificadores de textos implementados](#codificadores-de-textos-implementados)
    - [Codificadores de imágenes implementados](#codificadores-de-imágenes-implementados)
    - [Codificadores de números implementados](#codificadores-de-números-implementados)
  - [Modelo y algoritmo de ML](#modelo-y-algoritmo-de-ml)
    - [Algoritmos implementados](#algoritmos-implementados)
      - [Sequential](#sequential)
      - [KNN](#knn)
- [LML Scratch](#lml-scratch)
  - [Organización del código](#organización-del-código)
    - [Estrategia de bifurcación (fork) de `scratch-gui`](#estrategia-de-bifurcación-fork-de-scratch-gui)
    - [Estrategia de bifurcación (fork) de `scratch-vm`](#estrategia-de-bifurcación-fork-de-scratch-vm)
    - [Estrategia de bifurcación (fork) de `scratch-l10n`](#estrategia-de-bifurcación-fork-de-scratch-l10n)
  - [Despliegue de un entorno de desarrollo para LML Scratch](#despliegue-de-un-entorno-de-desarrollo-para-lml-scratch)
  - [Construcción de un desplegable de LML-Scratch](#construcción-de-un-desplegable-de-lml-scratch)
  - [Archivos importantes para el desarrollo](#archivos-importantes-para-el-desarrollo)
    - [lml-scratch-gui](#lml-scratch-gui)
    - [lml-scratch-vm](#lml-scratch-vm)
  - [Carga de los modelos de mobilenet para la extracción de características de las imágenes](#carga-de-los-modelos-de-mobilenet-para-la-extracción-de-características-de-las-imágenes)
  - [Bloques de la extensión `learningml`](#bloques-de-la-extensión-learningml)
    - [Modo `basic`](#modo-basic)
    - [Modo `advanced`](#modo-advanced)
    - [Modo `autonomous`](#modo-autonomous)
  - [Creación de modelos de ML en LML-Scratch](#creación-de-modelos-de-ml-en-lml-scratch)
- [El objeto de intercambio `lmlModelMetadata`](#el-objeto-de-intercambio-lmlmodelmetadata)
- [Guardando modelos preentrenados](#guardando-modelos-preentrenados)
- [Casos de uso de los modelos de LearningML](#casos-de-uso-de-los-modelos-de-learningml)
  - [1. Creación del modelo en LML-Editor](#1-creación-del-modelo-en-lml-editor)
  - [2. Mejora del modelo desde LML-Editor](#2-mejora-del-modelo-desde-lml-editor)
  - [3. Creación de un modelo desde LML-Scratch](#3-creación-de-un-modelo-desde-lml-scratch)


# Introducción

LearningML v2 es una aplicación web diseñada para la enseñanza y aprendizaje de los fundamentos de la Inteligencia Artificial basada en datos. Desde el punto de vista del software se trata de un sistema compuesto por los siguientes proyectos:


| Aplicación       | repositorio                                  | rama        | descripción                                                                                                                      |
| ---------------- | -------------------------------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------- |
| LML editor       | https://gitlab.com/lml-corp/lml-editor-lit   | main        | El editor de modelos de Machine Learning                                                                                         |
| LML Scratch GUI  | https://gitlab.com/lml-corp/lml-scratch-gui  | dev         | Interfaz de usuario de Scratch para ser usada por la versión 1.3 de LearningML (en producción)                                   |
|                  |                                              | learningml2 | Interfaz de usuario de Scratch para ser usada por la versión 1.3 de LearningML (en producción)                                   |
| LML Scratch VM   | https://gitlab.com/lml-corp/lml-scratch-vm   | dev         | Máquina virtual de Scratch para ser usada por la versión 2 de LearningML (en desarrollo, es decir la referida en este documento) |
|                  |                                              | learningml2 | Máquina virtual de Scratch para ser usada por la versión 2 de LearningML (en desarrollo, es decir la referida en este documento) |
| LML Scratch l10n | https://gitlab.com/lml-corp/lml-scratch-l10n | dev         | Componente de internacionalización de Scratch. Es común a las dos versiones de Scratch mantenidas                                |

# LML Editor

## Entorno de desarrollo

Requisitos: node 20.11.0

1. clonar el proyecto: 
```
git@gitlab.com:lml-corp/lml-editor-lit.git
cd lml-editor-lit
```
2. Ejecutar el servidor de desarrollo
```
npm run dev
```
3. Apuntar el navegador web a `http://localhost:5173`

## Construcción de un desplegable

Ejecutar la instrucción:
```
npm run build
```

En la carpeta `dist` se generará el código HTML/CSS/JS estático listo para ser desplegado en un servidor web.

>Nota: Este desplegable se ha construido pensando en que la aplicación se va a servir en la ruta `/editor/`. Si se quiere cambiar este comportamiento hay que modificar el script `build` del archivo `package.json`:
>```
>"build": "vite build --base /editor/"
>```

## Fichero `.env`

En el fichero `.env` se declara la variable de entorno `URL_BASE` con el valor `/editor`. 
Esta variable se usa tanto en el entorno de desarrollo, con lo que la url para acceder es `http://localhost:5173/editor`, como en el desplegables que se construye con `npm run build`. En principio no hay que cambiar esta variable, pero si se desea que la URL base sea otra distinta, basta con editar el fichero `.env` y cambiarla.

## Traducciones

En el archivo `lit-localize.json` se configura el sistema de traducción. Lo importante es el atributo `targetLocales`, donde se especifica en un array los idiomas a los que se traducirá la aplicación.

Para construir los archivos xliff se ejecuta el comando:
```

./node_modules/@lit/localize-tools/bin/lit-localize.js extract

```
Que genera la carpeta `xliff` con los archivos de traducción. Se editan estos ficheros con las traducciones correspondientes.

A continuación se generan los archivos javascript que usa la aplicación para traducir lanzando el comando:
```

./node_modules/@lit/localize-tools/bin/lit-localize.js build

```
Referencia: https://lit.dev/docs/localization/overview/

## Arquitectura
## Estructura de componentes

Fichero fuente: [[Excalidraw/Estructura-lml-editor-lit.excalidraw]]

  ![[Excalidraw/Estructura-lml-editor-lit.excalidraw.png]]

## Proveedores de contexto
El primer componente que se carga, denominado componente raíz, es `lml-app`. Este componente crea todos los proveedores de contextos que usa la aplicación. Un [proveedor de contexto](https://lit.dev/docs/data/context/) es un mecanismo que *lit* utiliza para gestionar datos que son transversales a todos los componentes. Se crean lo siguientes contextos:

- *configContext*, para almacenar la configuración de la aplicación. 
```javascript
{
    defaultLanguage: "es",
    initMessage: {
        show: true,
        title: "Atención",
        message: "LearningML necesita tu ayuda."
    },
    urlBase: "http://localhost:5173"
}
```

- *statusContext*, para almacenar el estado de la aplicación.
```javascript
{
	modelEditor: "text",
	modelName: "Untitled",
	dimension: 0
}
```
- *datasetContext*, es un mapa de javascript (Map)  que almacena el conjunto de datos (textos, imágenes, números) y sus etiquetas. Las claves son las etiquetas y los valores son conjuntos de javascript (Set) con los textos, imágenes (en Base64) o conjuntos de números (números separados por comas).
	
Un ejemplo de dataset de textos
![[Pasted image 20240401173454.png]]

Un ejemplo de dataset de imágenes
![[Pasted image 20240401173819.png]]

- *featuresContext*, es un mapa (Map) que almacena el conjunto de datos (texto, imagen, número) codificados y sus etiquetas, es decir, almacena las características una vez extraídas de los datos originales. Tiene la misma estructura que el datasetConfig pero los elementos de cada conjunto son datos codificados, esto es, características extraídas desde los elementos originales usando algún tipo de codificación.

Un ejemplo de featureset. Valdría para cualquier tipo de datos (texto, imagen, número), pues la extracción de características o codificación se representa con un Tensor en todos los casos.
![[Pasted image 20240401181046.png]]

- *encodingContext*, es un objeto que almacena el extractor de características (o codificador) que se usará para cada tipo de datos (texto, imagen o número). Estos codificadores son funciones que se aplican sobre los elementos del dataset para construir el featureset.
```javascript
{
	text: useEncode,
	image: mobilenetEncoder,
	numerical: numericalEncoder
}
```
- *modelContext*, es un objeto que representa el modelo que será construido en el proceso de aprendizaje. Por ejemplo una red neuronal feedfoward  o un algoritmo KNN. En realidad modelContext contiene tanto al algoritmo de Machine Learning como al modelo.

En el componente `lml-app` se crean los proveedores de contextos asociados a los contextos anteriores y desde cualquier componente hijo se podrá acceder a los datos almacenados en estos proveedores a través de los consumidores de contexto. Por ejemplo para acceder a los datos del *datasetContext* se haría lo siguiente:

```javascript
import {datasetContext} from 'ruta/a/context.js'
...
export class ComponenteQueSea extends LitElement {
	_datasetConsumer = new ContextConsumer(this, { context: datasetContext });
...
funcionQueSea(){
	let dataset = this._datasetConsumer.value;
}
...
```
## Producir un evento en un componente y detectarlo en otro componente hermano

Cuando emitimos un evento en un componente, este se transmite hacia arriba, de manera que cualquier componente padre puede capturarlo y actuar en consecuencia. Sin embargo, los componentes que están en una rama distinta a la de sus ascendientes, no lo pillan. Por ejemplo, un evento que se origina en el componente `mode-togle-menu` no se puede detectar en el componente `model-learn`. Sin embargo, necesitamos que cuando se haga clic en el botón que conmuta entre el modo básico y el avanzado

![[Pasted image 20240401191907.png]]
el componente `model-learn` oculte o muestre los controles del modo avanzado.  Este problema lo resolvemos de la siguiente manera. Cuando se hace clic en el botón, se lanza un evento desde el componente `mode-toggle-menu`:

```javascript
handleToggleClick() {
    this.advanced = !this.advanced;

    this.dispatchEvent(new CustomEvent('toggle-advanced-mode', {
      bubbles: true
    }));
  }
```

Y se captura en el componente raíz `lml-app` (a él llegan todos los eventos por ser el padre de todos los componentes). Una vez capturado se modifica la propiedad `advancedMode` del componente raíz:
```javascript
this.addEventListener("toggle-advanced-mode", e => {
	this.advancedMode = !this.advancedMode;
	this.requestUpdate();
});
```
Y esta propiedad es transmitida como atributo del único componente hijo que lleva hasta `model-learn`, es decir a través de `model-editor`. Esto significa que, tanto el componente `model-editor` como `model-learn` deben definir `advancedMode` como una propiedad. 
```javascript
static properties = {
	...
    advancedMode: { type: Object, attribute: 'advanced-mode' },
    ...
}
```
>[!info] Atención
>Observa que la propiedad que se define en los componentes `model-editor` como `model-learn` no es booleana, es un objeto con un atributo booleano. La explicación de esto es un tanto sutil y se debe a que en HTML un atributo booleano no requiere un valor específico para ser válido. Si el atributo está presente en el elemento, se considera verdadero, mientras que si está ausente, se considera falso. Y esto en un problema para pasarlo dinámicamente desde un componente a otro.

Y la propiedad se pasa como en cualquier elemento HTML:

en `lml-app` se usa el componente `model-editor`
```html
<model-editor advanced-mode='{"enabled": ${this.advancedMode}}'>
</model-editor>
```
y en `model-editor` se usa el componente `model-learn`
```html
<model-learn advanced-mode='{"enabled": ${this.advancedMode.enabled}}'>
</model-learn>
```

El siguiente diagrama muestra esquemáticamente todo lo anterior:
![[Excalidraw/Paso-de-mensajes-entre-componentes.excalidraw.png]]
> [!info] Una alternativa más simple pero que no funciona (lo he probado)
> En principio, todo este trasiego de información desde el disparo del evento en `mode-togle-menu`hasta la reacción del componente `lml-learn` para mostrar/ocultar los controles del modo avanzado, podría simplificarse usando un contexto de lit. Por ejemplo se podría usar el `statusContext` y agregarle un atributo `advancedMode`. Cuando el usuario hace clic en el botón de cambio de modo, se modificaría este atributo, el cual estaría inmediatamente disponible en todos los componentes. Sin embargo, aunque esto es así, el DOM no detecta este cambio, con lo cual no puede reaccionar para mostrar/ocultar los controles del modo avanzado.


Modificar el valor de un contexto

Los contextos, como ya hemos visto, se inician a través de los proveedores de contexto en el componente raíz `lml-app`. En ocasiones habrá que modificar el valor de alguno de los datos almacenados en los contextos. Por  ejemplo, cuando se cambia de algoritmo en  el modo avanzado, hay que cambiar el valor almacenado en el contexto `modelContext`, asignándole  el algoritmo que le corresponda. Este cambio. según he probado, no se puede hacer directamente en un consumidor de contexto, es decir, hacer algo así:
```javascript
this._modelConsumer.value = new KNN();
```

modifica el valor del atributo `modelConsumer` en el componente donde se halla ejecutado ese código, pero no se enteran los consumidores de contexto  de los demás componentes.

Tampoco funciona crear un proveedor de contexto y usar `setValue()` en los componentes hijos. Lo único que he logrado hacer funcionar es usar `setValue()` en el proveedor de contexto del componente raíz `lml-app`. Así que para que esto ocurra, he seguido una estrategia similar a la del apartado anterior: lanzar un evento en el componente que requiere el cambio del valor almacenado en el contexto, pillar el evento en el componente raíz y usar `setValue()` en el proveedor de contexto del componente raíz. Por otro lado es importante, para que se enteren los consumidores de contexto de este cambio, que se use el atributo `subscribe: true`. Es decir, en el componente donde se necesite actualizar este cambio hay que definir el consumidor de contexto así:

```javascript
_modelConsumer = new ContextConsumer(this, { context: modelContext, subscribe: true });
```

# La librería `lml-algorithms`

Se ha creado una librería denominada `lml-algorithms` para implementar los algoritmos de ML y los encoders. En los siguientes apartados se explican qué son los algoritmos y los encoders.

| Repositorio de gitlab                      | Paquete de NPM                               |
| ------------------------------------------ | -------------------------------------------- |
| https://gitlab.com/lml-corp/lml-algorithms | https://www.npmjs.com/package/lml-algorithms |
El paquete está organizado de la siguiente manera:

- `index.js` exporta las clases del paquete
- `algorithms` es el directorio donde se implementan los algoritmos de ML
- `feature-extractio` es el directorio donde se implementan los encoders.
## Extractores de características (Feature extractors o encoders)

Los modelos de ML solo pueden operar con vectores numéricos, es decir, cualquier cosa que se quiera reconocer con un modelo de ML debe ser previamente convertida a un vector. A este proceso de codificación se le conoce como *extracción de características*.

A partir de ahora al artefacto que extrae las características le llamaremos *encoder*. Cada tipo de dato (texto, imagen, números, etcétera) tiene sus propios *encoders*. Observese que usamos el plural, pues un mismo tipo de datos puede tener muchos *encoders* distintos. Por ejemplo, los textos pueden ser codificados por los siguientes *encoders*:

- Bag Of Words with One hot encoding
- [Word2Vec](https://es.wikipedia.org/wiki/Word2vec)
- Text Embbedings (hay un montón de estos y están basados en transformers)
- y muchos más

El código de LearningML se ha diseñado para poder añadir tantos *encoders* como se quiera para cada tipo de datos. 

Cuando se carga el componente raíz `lml-app` se crea el proveedor de contexto `encodingProvider` cargando el contexto `encodingContext` que contiene un objeto cuyas claves son los tipos de modelos que se pueden crear. El valor de cada clave será el *encoder* que se usará para codificar los ítems.

```javascript
import { useEncode } from '../feature-extraction/useEncode';
import { mobilenetEncoder } from '../feature-extraction/mobilenet';
import { numericalEncoder } from '../feature-extraction/numerical';
...
		this.encodingProvider.setValue({
			text: useEncode,
			image: mobilenetEncoder,
			numerical: numericalEncoder
		});
...
```
Los *encoders* se deben alojar en el directorio `feature-extraction` de la librería `lml-algorithms`.

>[!info] Importante
>Los *encoders* deben implementarse como una función exportada a la que se le pasa como argumentos un array con los ítems a codificar y que devuelve una Promesa cuyo valor de retorno al resolverse es un Tensor con todos los ítems codificados. La *shape* de este Tensor es (N, D), siendo N el nº de ítems codificados y D la dimensión del vector resultante al codificar el ítem.

Por ejemplo, el *encoder* para transformar conjuntos de números en Tensores (posiblemente el más sencillo de todos, pero el más ilustrativo para mostrar la signatura de la función) se implementa en el archivo `feature-extraction/numerical.js` en la siguiente función:
```javascript
import * as tf from '@tensorflow/tfjs';

export function numericalEncoder(items) {
    return new Promise((resolve, reject) => {
        let features = [];
        for (let csv of items) {
            features.push(csv.split(",").map(v => parseFloat(v)));
        }
        resolve(tf.stack(features));
    });    
} 
```
### Codificadores de textos implementados

### Codificadores de imágenes implementados

> [!info] Importante
> Dentro del archivo `feature-extraction/mobilenet.js` se ha metido todo el código de `tfjs-models/mobilenet`, la librería que implementa el famoso modelo de imágenes mobilenet. Esto se ha hecho así para no depender  de las llamadas a internet que realiza la librería para obtener los modelos. Para eliminar esta dependencia, los pesos de los modelos de mobilenet se han colocado en `public/models`. De  esta manera se hacen peticiones al propio servidor web donde se aloja la aplicación.

### Codificadores de números implementados

## Modelo y algoritmo de ML

El objetivo del Machine Learning es construir un modelo capaz de reconocer cosas (texto, imágenes, números, etcétera). El algoritmo de Machine Learning es el encargado de construir dicho modelo. Existe una gran cantidad de algoritmos  de este tipo. Una de los objetivos de LearningML es el estudio de tantos algoritmos como se pueda. Para lo cual hay que permitir al usuario que elija un algoritmo de una lista para que compruebe si es o no adecuado para resolver su problema. Así que debemos  facilitar al desarrollador la incorporación de nuevos algoritmos.

Por tanto, podemos añadir tantos algoritmos como queramos. Cada algoritmo se implementará en un archivo javascript de nombre libre (a decidir por el desarrollador) y alojado en la carpeta `algorithms` de la librería `lml-algorithms`. Dicho fichero debe implementar y exportar una clase, de nombre libre, con los siguientes métodos:

| Método                            | Descripción                                                                                                                                                                                                                                                                                                                                                    |
| --------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `serialize()`                     | Devuelve una promesa con el modelo serializado con los datos para poder reconstruir el modelo. Sigue el esquema del campo `model` del objeto de intercambio `lmlModelMetadata`                                                                                                                                                                                 |
| `train(features, validationData)` | Construye el modelo de ML a partir del argumento `features` el cual es un Tensor que contiene todos los datos del conjunto de datos de entrenamiento codificado.<br>El argumento `validationData` es opcional. Debe ser un Tensor con datos del conjunto de datos de validación codificados y, si se le pasa, se usará para construir una matriz de confusión. |
| `classify(inputTensor)`           | Una vez construido el modelo (después de ejecutar `train`) esta función se usa para realizar la clasificación de un ejemplar (texto, imagen, número, etcétera) codificado.                                                                                                                                                                                     |
| `setHyperParameters(params)`      | Define los [hyper-parámetros](https://en.wikipedia.org/wiki/Hyperparameter_(machine_learning)) que se usarán para llevar a cabo el proceso de construcción del  modelo de ML.  El argumento `params`es un objeto cuyos atributos son los hyper parámetros del algoritmo.                                                                                       |
Cuando añadamos un nuevo algoritmo, además de crear la clase que lo implemente, hay que modificar el archivo `components/model-editor/model-learn.js`. 
- En la función `getHyperParameters()` hay que añadir los hyper-parámetros del algoritmo en cuestión.
- Hay que añadir una función con el HTML para el formulario que recoge los hyperparámetros. Se le puede llamar como se quiera, pero se recomienda `template<NOMBREALGORITML>Params()`
- En la función `render()` hay que añadir el template que corresponda al nuevo algoritmo.
## Algoritmos implementados
### Sequential
Archivo: `algorithms/sequetial.js`.
Clase: `LMLSequential`

Es un wrapper a la clase `tf.sequential` de Tensorflow. Construye una red neuronal feedforward con tres capas: la entrada, una capa oculta y la de salida. Se pueden ajustar los siguientes hyperparámetros: `learning rate`, `batch size` y `epochs`

### KNN
Archivo: `algorithms/knn.js`
Clase: `KNN`

Es una implementación del algoritmo K - nearest neiborgh. Se puede ajustar su único hyperparámetro K, que es el número  de vecinos más cercanos.

> [!info] Importante
> Se ha metido y adaptado dentro del archivo `algorithms/knn.js` el código de https://github.com/tensorflow/tfjs-models/tree/master/knn-classifier


# LML Scratch

## Organización del código

LML-Scratch es una modificación de [Scratch](https://scratch.mit.edu/), consistente en la incorporación de nuevos bloques para utilizar el modelo de Machine Learning que se genera en LML-Editor, o incluso para generar modelos de manera autónoma, esto es, sin necesitar LML-Editor. 

El código de Scratch se ha organizado en varios repositorios distintos (https://github.com/scratchfoundation). Cada uno de ellos da lugar a un paquete npm. El repositorio padre es el correspondiente a `scratch-gui`, desde él se cargan como dependencias el resto. La adaptación que hemos realizado para LearningML requiere únicamente modificar los repositorios correspondientes a `scratch-gui`, `scratch-vm` y `scratch-l10n`. Por eso hemos realizado un fork de dichos repositorios:

- https://github.com/scratchfoundation/scratch-gui
- https://github.com/scratchfoundation/scratch-vm
- https://github.com/scratchfoundation/scratch-l10n

en los siguientes repositorios:

- https://gitlab.com/lml-corp/lml-scratch-gui
- https://gitlab.com/lml-corp/lml-scratch-vm
- https://gitlab.com/lml-corp/lml-scratch-l10n

### Estrategia de bifurcación (fork) de `scratch-gui`

La rama `develop` del repositorio [https://github.com/scratchfoundation/scratch-gui.git](https://github.com/scratchfoundation/scratch-gui.git) ha sido clonada y subida al repositorio  https://gitlab.com/lml-corp/lml-scratch-gui. La copia se ha realizado en etiqueta (tag) v3.2.26.

La rama `dev` del repositorio https://gitlab.com/lml-corp/lml-scratch-gui. ha sido creada a partir de la rama `develop` (commit `9217fd3bad3456820b76c0e7cf6a00c844b8e85d`). Esta última será la rama para el desarrollo del proyecto LearningML. Una vez que estos cambios hayan sido suficientemente probados, se fusionarán con `main`.

Cuando pase cierto tiempo el código de Scratch original cambiará. Para fusionar los cambios realizados por el equipo de Scratch en nuestra rama `dev`, seguiremos los siguientes pasos:
```bash
git clone https://gitlab.com/lml-corp/lml-scratch-gui
git remote add upstream https://github.com/scratchfoundation/scratch-gui
git fetch upstream develop
git checkout develop
git merge upstream/develop
git checkout dev
git merge develop
```
Los conflictos que aparezcan deben resolverse antes de continuar desarrollando nuevas funcionalidades o fusionándose con la rama `dev`.
### Estrategia de bifurcación (fork) de `scratch-vm`

Es exactamente la misma que la explicada en el apartado anterior. En este caso se ha realizado la copia en la etiqueta v2.1.11 (https://gitlab.com/lml-corp/lml-scratch-vm/-/commit/8bb56845489cb651b4bce04874e3be74410b9619).

### Estrategia de bifurcación (fork) de `scratch-l10n`

Es exactamente la misma que la explicada en el apartado anterior. En este caso se ha realizado la copia en la etiqueta v2.1.11 3.16.20231022032157(https://gitlab.com/lml-corp/lml-scratch-l10n/-/commit/a1636ab2dd2595490ea224e69a1484a37155dc59)

## Despliegue de un entorno de desarrollo para LML Scratch.

Se requiere node 20.10.0.

Clonar los repositorios:

```bash
git clone git@gitlab.com:learningml/lml-scratch-gui.git
git clone git@gitlab.com:learningml/lml-scratch-vm.git
git clone git@gitlab.com:learningml/lml-scratch-l10n.git

```
Instala las dependencias:

```bash
cd lml-scratch-l10n
npm install
npm run build
npm link
cd ../lml-scratch-vm
npm install
npm link
npm link scratch-l10n
cd ../lml-scratch-gui
npm install
npm link scratch-vm scratch-l10n

```

Ejecuta la aplicación:

```bash
cd ../lml-scratch-gui
npm start
```
Una vez que `lml-scratch-gui` haya sido compilado, puedes acceder a la plataforma apuntando tu navegador a: `http://localhost:8601`.

> **Nota**: los comandos `npm link <scratch-library>` cambian la dependencia original por las que han sido enlazadas con `npm link`, es decir, en nuestro caso se enlanza con nuestras versiones de `scratch-vm` (`lml-scratch-vm`) y `scratch-l10n` (`lml-scratch-l10n`). De esta manera cuando hacemos cambio en el código de una de las dependencias, los efectos se visualizan inmediatamente en el navegador donde se ejecuta la aplicación.

## Construcción de un desplegable de LML-Scratch

Desde el directorio raíz del proyecto `lml-scratch-gui` se ejecuta:
```bash
npm run build
```
Este proceso crea un directorio `build` cuyo contenido es la aplicación compilada (transpilada) a `javascript/HTML/CSS`. Es un código estático que se puede alojar en cualquier servidor web y ejecutado en cualquier navegador standard (Firefox y Chrome recomendados).

## Archivos importantes para el desarrollo

### lml-scratch-gui

| Archivo                                                                                      | Descripción                          |
| -------------------------------------------------------------------------------------------- | ------------------------------------ |
| `lml-scratch-gui/src/containers/gui.jsx`                                                     | Se carga la extensión `learningml`   |
| `lml-scratch-gui/src/lib/libraries/extensions/index.jsx`                                     | Se declara la extensión `learningml` |
| `lml-scratch-gui/src/lib/libraries/extensions/learningml-images/learningml-illustration.svg` |                                      |
### lml-scratch-vm

| Archivo                                                      | Descripción                                                                               |
| ------------------------------------------------------------ | ----------------------------------------------------------------------------------------- |
| `lml-scratch-vm/src/extension-support/extension-manager.js`  | Se añade la extensión `learningml`                                                        |
| `lml-scratch-vm/src/extensions/scratch3_learningml/index.js` | Es el código de la extensión `learningml`. La mayor parte del desarrollo se realiza aquí. |

## Carga de los modelos de mobilenet para la extracción de características de las imágenes.

La librería [mobilenet](https://www.npmjs.com/package/@tensorflow-models/mobilenet) carga los modelos desde URLs de google. Se ha incluido una copia modificada en la librería [lml-algorithms](https://www.npmjs.com/package/lml-algorithms) que carga dichos modelos desde la URL que se desee. LML-Scratch utiliza esta última librería y, por tanto hay que indicarle desde donde se deben cargar dichos modelos. Esto se hace con el parámetro de URL `url_mobilenet_models`. Si no se especifica la carga se realizara desde la URL `http://localhost:5173`, que es donde está el servidor de desarrollo de LML-editor el cual contienen dichos modelos. Por ello, para desarrollo no es necesario indicar nada. Pero en producción habría que indicar la URL donde se haya colocado LML-editor. Por ejemplo:

```
https://learningml.org/scratch/?url_mobilenet_models=http://learningml.org/editor
```
## Bloques de la extensión `learningml`
La extensión `learningml` consiste en un conjunto de bloques con los que se puede:
- usar el modelo que se ha construido en *lml-editor*
- añadir nuevos datos de entrenamiento y reentrenar el modelo
- construir un modelo de machine learning de manera autónoma, esto es, sin necesidad de usar *lml-editor*.

Cada uno de los puntos anteriores se corresponde con los modos de uso: `basic`, `advanced` y `autonomous`. Estos modos se activan desde la URL:


| URL                         | modo                           |
| --------------------------- | ------------------------------ |
| `URL_BASE`                  | se activa el modo `basic`      |
| `URL_BASE?advanced=1`       activa el modo `advanced`   |
| URL_ `URL_BASE?model=autonomous` activa el modo `autonomous` |
### Modo `basic`
Este modo está pensado para ser usado cuando se ha seleccionado el modo `basic` en el LML-editor. Como indica su nombre es el más sencillo de todo y solo se ofrecen bloques para utilizar el modelo que se ha debido generar previamente en LML-editor. Esto significa que solo se puede realizar clasificaciones de cosas (textos, imágenes o números) y calcular las confianzas asociadas a tales clasificaciones.

En este modo se presentan los siguientes bloques:

| Bloque                                  | Tipo     | Descripción                                                                                                                                                                                                                                                                                                            |
| --------------------------------------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `clasificar elemento <elemento>`        | Reporter | Devuelve la clase más probable a la que pertenece el elemento (texto, imagen o número) dado como argumento del bloque.                                                                                                                                                                                                 |
| `Confianza para el elemento <elemento>` | Reporter | Devuelve la confianza de la clase más probable a la que pertenece el elemento  (texto, imagen o número) dado como argumento del bloque.                                                                                                                                                                                |
| `Current Costume`                       | Reporter | Devuelve el disfraz actual. Se usa cuando el modelo es de reconocimiento de imágenes para usar la imagen del disfraz actual como elemento a clasificar.                                                                                                                                                                |
| `Video Image`                           | Reporter | Devuelve una captura de la imagen que capta la cámara en el momento en que se ejecuta el bloque. Se usa cuando el modelo es de reconocimiento de imágenes para usar la imagen del disfraz actual como elemento a clasificar. Para poder usarlo la cámara debe estar activada. Esto se hace usando el siguiente bloque. |
| `Poner video a <estado>`                | Command  | El argumento `estado` puede ser `on`, `on flipped`y `off`. Los dos primeros activan la cámara y el tercero la desactiva. El segundo, además de activar, convierte la imagen en su espejo.                                                                                                                              |

### Modo `advanced`
Este modo está pensado para ser usado cuando se ha seleccionado el modo `advanced` en el LML-editor. Están disponible los bloques del modo anterior y además los siguiente:


| Bloque                                                | Tipo    | Descripción                                                                                                                                                                   |
| ----------------------------------------------------- | ------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Añadir elemento <elemento> a la etiqueta <etiqueta>` | Command | Añade un nuevo elemento, dado por el primer argumento, y correspondiente a la clase dada por el segundo argumento.                                                            |
| `Eliminar etiqueta <etiqueta>`                        | Command | Eliminar la clase dada por el argumento y todos sus elementos.                                                                                                                |
| `Aprender y esperar`                                  | Command | Ejecuta de nuevo el algoritmo de Machine Learning para construir un nuevo elemento que tiene en cuenta los cambios hechos en el conjunto de datos con los bloques anteriores. |
### Modo `autonomous`

Este modo esta pensado para usar LML-Scratch de manera autónoma, esto es, sin LML-editor. Están disponibles todos los bloques anteriores y algunos más con los que se pueden construir modelos de Machine Learning desde el propio LML-Scratch.


| Bloque                               | Tipo    | Descripción                                                                                                                              |
| ------------------------------------ | ------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| `Definir el tipo de modelo a <tipo>` | Command | Con este bloque se especifica el tipo de modelo que se desea construir (texto, imagen, números)                                          |
| `Definir dimensión a <dimensión>`    | Command | Con este bloque se especifica la dimensión de los conjuntos de números cuando se desea construir un modelo de reconocimiento de números. |
| `Usar <algoritmo> para aprender`     | Command | Con este bloque se especifica el algoritmo de Machine Learning que se usará para construir el modelo.                                    |
| `Set <parámetro> a <valor>`          | Command | En realidad son dos bloques, uno para definir hiperparámetros del algoritmo `Sequential` y otro para los del algoritmo `KNN`.            |


## Creación de modelos de ML en LML-Scratch

En LML-Scratch la creación del modelo tiene 4 fuentes posibles:

1. Desde LML-Editor. Cuando se genera un modelo en LML-Editor se crea un objeto de intercambio `lmlModelMetadata` en el localStorage. Cuando se abre LML-Scratch o incluso cuando ya está abierto, dicho modelo se genera en LML-Scratch a partir de los datos del objeto de intercambio.

2. A través de la carga de un archivo de modelo `.mdl`. Desde el menú `File -> Load ML Model from your computer ` se puede cargar un modelo que se generó con LML-Editor y fue guardado en disco desde el menú `File -> Save model to your computer` de LML-Editor.

3. A través de la carga de un archivo `.sb3`. Si en LML-Scratch existe un modelo generado por cualquier método, al guardar el proyecto a través del menú `File -> save to your computer` en el archivo `.sb3` generado se almacena información para poder reconstruir el modelo cuando se vuelve a cargar dicho arvivo a través del menú `File -> Load from your computer`.

4. De manera autónoma, esto es, sin necesidad de usar ninguno de los 3 métodos anteriores. Es decir, a través de los bloques de programación de la sección `LearningML`.

Cualquiera de los modelos generados por los métodos 1, 2 y 3 pueden ser ampliados mediante el método 4, es decir, añadiendo más datos de ejemplo a través de bloques de programación y regenerando el modelo con esos nuevos datos.

# El objeto de intercambio `lmlModelMetadata`

La información relevante para poder construir modelos de ML, tanto en LML-editor como en LML-Scratch se guarda en un objeto denominado `lmlModelMetadata` que tiene la siguiente estructura:

```JSON
	{
	"encoder": {
		"name": "mobilenetEncoder",
		"vocabulary": []
	},
	"model": {		
		"jsonFile": {...},
		"weights": {...},
		"features": {...},
		"metadata": {	
		    "modelAlgorithm": "sequential",
		    "hyperparameters": {
		        "learningRate": 0.001,
		        "batchSize": 10,
		        "epochs": 20
		    },
		    "labels": [
		        "Monet",
		        "Picasso",
		        "Van Gogh"
		    ]
		}
	},
	"data": {
	    "type": "image",
	    "dimension": 0,
	    "name": "nombre del conjunto de datos/modelo"	    
	}
}
```
**Descripción de los atributos:**
- `encoder` datos que determinan el encoder que se ha usado para obtener las características (features). Para usar el modelo sobre un ejemplar que se quiera clasificar/reconocer, antes hay que pasarlo por este encoder.
	- `name` es el nombre del encoder usado,
	- `vocabulary` cuando el encoder es de tipo BOW (bag of words), se requiere un vocabulario para poder funcionar. Este atributo es opcional.
- `model` son los datos propios del modelo:
	- Una estructura `jsonFile` que contiene información sobre la topología del modelo, la ruta donde se encuentran los pesos y alguna información extra sobre la generación del modelo
	- Los pesos (`weights`), es decir, los valores concretos de los pesos de la red neuronal
	- Los metadatos (`metadata`), que lleva la información del tipo de algoritmo usado, los hiperparámetros y el valor textual de las etiquetas del modelo
	- Los datos de ejemplos usados en el entrenamiento del modelo después de pasar por el encoder y en formato de array (`features`)
- `data`, información sobre el tipo de datos que reconoce el modelo. Esto se requiere para saber qué encoder hay que aplicar a los datos antes de usar el modelo:
	- `type` que puede ser `text`, `image` o `numerical`
	- `name`, el nombre del conjunto de datos/modelo
	- `dimension`  para los datos de tipo `numerical`

Esta estructura queda almacenada en el localStorage con el nombre `lmlModel` cuando se genera un modelo desde LML-Editor. 

Cuando se abre LML-Scratch, se accede al localStorage para leer esta estructura y cargar el modelo. De esa manera se puede usar a través de los bloques de LearningML. 

En LML-Scratch, este objeto se ha añadido como atributo al `runtime` de manera que cuando se guarda un programa en un fichero `sb3`se pueda acceder a dicho objeto para serializarlo. De la misma manera, cuando se carga un fichero `sb3` se puede deserializar y reconstruir el objeto `runtime.lmlModelMetadata`.

Además, en LML-Scratch, se ha añadido al runtime el objeto de tipo Sequential o KNN con los parámetros concretos (pesos, etcétera) (`runtime.lmlModel`).

Es importante entender que el modelo que se carga en LML-Scratch es un **modelo preentrenado**. Una vez en LML-Scratch se puede mejorar dicho modelo añadiendo más datos de ejemplo, pero el nuevo modelo obtenido **ya no se corresponderá con el que se creó en LML-Editor**. 

Cuando se guarde el programa LML-Scratch se guardará también el modelo preentrenado, ya sea el que vino desde LML-Editor, o el que se haya modificado desde LML-Scratch.

# Guardando modelos preentrenados

Cuando, desde LML-Editor, se guarda el modelo desde el menú `Archivo -> Guardar modelo de ML`, esta estructura queda almacenada en un zip que contiene los siguientes ficheros:

- Si el modelo es `sequential`:
	- `model.json`, que se corresponde con la estructura `model.jsonFile`.
	- `model.metadata`, que se corresponde con la estructura `model.metadata`.
	- `model.weight.bin`, que se corresponde con los pesos (`model.weights`) en formato binario.
	- `model.datatype`, que se corresponde con la estructura `data`

- Si el modelo es `knn`:
	- `model.features`, con los ejemplos usados en el aprendizaje ya codificados con el encoder correspondiente.
	- `model.metadata`, que se corresponde con la estructura `model.metadata`.
	- `model.datatype`, que se corresponde con la estructura `data`

Es decir, la información dentro de cada `zip` es la necesaria para poder reconstruir el modelo previamente entrenado.

# Casos de uso de los modelos de LearningML

## 1. Creación del modelo en LML-Editor

- Se crea un modelo en LML-Editor. En ese momento se crea en el localStorage la estructura `lmlModelMetadata`.
- Se abre LML-Scratch. En ese momento se lee la estructura `lmlModelMetadata` para crear el modelo preentrenado.
- Se usa el modelo preentrenado en un programa de LML-Scratch usando los bloques de LearningML.

## 2. Mejora del modelo desde LML-Editor

Se realizan los pasos del [caso 1](#1-creación-del-modelo-en-lml-editor).

1. Usando el bloque `Add Item <item> to label <label>` se añaden nuevos datos de ejemplo.

2. Usando el bloque `Learn and wait` se construye un nuevo modelo para el cual se han usado todos los datos de ejemplo que se añadieron a LML-Editor más los datos que se han añadido en el punto anterior

El nuevo modelo generado ya no es el mismo que el que se generó con LML-Editor. Si se guarda el programa en un `sb3`, se guardará el nuevo modelo construido.

## 3. Creación de un modelo desde LML-Scratch

También se puede crear un modelo desde cero usando exclusivamente LML-Scratch, es decir, prescindiendo de LML-Editor. A este caso de uso le llamamos modo autónomo de LML-Scratch.

1. Usando el bloque `Set model type to <modeltype>` se selecciona el tipo de modelo que se desea construir: reconocimiento de textos, imágenes o números.

2. Usando el bloques `Add Item <item> to label <label>` se añaden nuevos datos de ejemplo (fase de entrenamiento).

3. Usando el bloque `Use <algorithm> for learning` se declara el algoritmo que se usará durante el aprendizaje.

4. Usando `Set <hyperparams> to <value> se declaran los hiperparámetros del algoritmo seleccionado.

5. Usando el bloque `Learn and wait` se construye un nuevo modelo (fase de aprendizaje) usando los datos añadidos en el punto 2.

Si se guarda el programa en un `sb3`, se guardará el modelo construido.




