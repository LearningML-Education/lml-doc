# El *editor de modelos* de Machine Learning

## Introducción

El acceso al *editor de modelos* se realiza a través de la url [https://v2.learningml.org](https://v2.learningml.org). Con esta aplicación puedes construir tus propios modelos de Machine Learning. Utiliza una técnica conocida como *Aprendizaje Automático Supervisado* (*Supervised Machine Learning*) que consiste en recolectar conjuntos de ejemplos de distintas clases y etiquetarlos manualmente con la clase que les corresponda.

Las técnicas de [Machine Learning](https://es.wikipedia.org/wiki/Aprendizaje_autom%C3%A1tico) tienen como objetivo construir un *modelo* capaz de realizar tareas para la que se requiere algún tipo de "inteligencia" como clasificar, reconocer o generar objetos (textos, imágenes, video, música, etcétera). La característica más importante de cualquiera de estas técnicas es su **naturaleza inductiva**, pues construyen el *modelo* como resultado de un análisis estadístico de grandes cantidades de datos de ejemplo. El análisis y la consecuente construcción del *modelo* lo realiza alguno de los muchos *algoritmos* de Machine Learnig existentes. Se puede concluir que cualquier técnica de Machine Learning consiste en:

> la construcción de un modelo de inteligencia artificial a partir del análisis estadístico de un conjunto de datos de ejemplo.

Una vez obtenido el *modelo* se puede utilizar en una aplicación informática para resolver problemas relacionados con el tipo de tarea para la que ha sido diseñado.

Son tres los tipos de técnicas de Machine Learning:

- Aprendizaje supervisado.
- Aprendizaje no supervisado.
- Aprendizaje por refuerzo.

Aunque actualmente existen otros tipos de Machine Learning, como el aprendizaje autosupervisado o semisupervisado, la clasificación anterior es suficiente pues estos nuevos tipos son enfoques híbridos o más especializados.

*LearningML2*, por lo pronto[^1], solo incorpora el aprendizaje supervisado, el cual, como reconoce [Andrew Ng](https://youtu.be/5p248yoa3oE?t=104) es el más relevante por la cantidad de aplicaciones de IA que lo usan.

[^1]: La intención del equipo de LearningML es continuar el desarrollo para incorporar nuevos tipos de Machine Learning.

El aprendizaje supervisado se produce en tres fases:

1. Entrenamiento. El usuario recopila un conjunto de datos de ejemplo del tipo que se desea reconocer o clasificar y los etiqueta con la clase a la que pertenece. Se trata de un proceso manual: es el humano quien realiza y organiza estos datos.

2. Aprendizaje. Los datos de ejemplo debidamente organizados, que es lo mismo que decir etiquetados, se introducen como entrada de un algoritmo de Machine Learning que, previamente, ha elegido el usuario entre los muchos existentes. Durante esta fase el algoritmo realiza el análisis de los datos para encontrar patrones y generar el *modelo* de Machine Learning.

3. Evaluación. El usuario prueba el modelo construido sobre un conjunto de datos similares pero distintos a los usados en la fase de entrenamiento. El objetivo es comprobar su capacidad de *generalización*. Es decir, cómo de bueno es para reconocer o clasificar ejemplos que no se utilizaron durante el aprendizaje.

*LearningML2* guía al usuario a través de estas 3 fases para construir *modelos* de Machine Learning capaces de reconocer texos, imágenes o conjuntos numéricos.

## Pantalla de selección de tarea

La primera pantalla que presenta *LearningML2* presenta 3 tarjetas que sirven para seleccionar el tipo de datos que quieres reconocer en tu modelo de Machine Learning: textos, imágenes o conjuntos numéricos. Basta con hacer clic en cualquiera de ellas para iniciar el proceso de construcción del modelo.

![Pantalla inicial: selección de tarea](img/01-home.png)

También presenta un menú superior que es común a toda la aplicación. Más adelante se describirán sus funcionalidades.

![Menú superior](img/02-menu.png)

## Construcción de modelos de reconocimiento de textos

Para construir un modelo de reconocimiento de textos debes hacer clic en la tarjeta "Reconocimiento de texto" de la pantalla principal. Se abrirá la pantalla de construcción de modelos con los elementos necesarios para introducir textos de ejemplo etiquetados.

![Pantalla de construcción de modelos de textos](img/03-modelo-texto.png)

Esta pantalla está dividida en 3 partes que se corresponden con las 3 fases del aprendizaje supervisado: entrenamiento, aprendizaje y evaluación.

### Entrenamiento

Para introducir los textos de ejemplo, primero debes crear las clases, también llamadas etiquetas. Cada clase se crea introduciendo su nombre en el cuadro de texto de la zona de "Entrenamiento" y haciendo clic en el botón "Añadir nueva clase". Se creará un contenedor en el que debes añadir los textos que pertenezcan a esa clase, esto es, que tengan esa etiqueta.

![Agregar nueva clase](img/04-agregar-clase.png)

Cada contenedor ofrece en la parte superir botones para editar el nombre de la clase y para eliminarla. Y en la parte inferior un botón para añadir textos desde el editor y otro para añadirlos desde un archivo de textos.

![Botones del contenedor de clase](img/05-botones-contenedor-clase.png)

Al hacer clic en el botón "Añadir" se abre un editor de textos en el que puedes añadir tantos textos como quieras a la clase en cuestión. 

![Editor de textos](img/06-editor-de-textos.png)

Cada nueva linea que añadas al editor será interpretada como un texto cuando hagas clic en el botón "Añadir ejemplos de texto".

![Textos en contenedor de clase](img/07-textos-en-contenedor-de-clase.png)

Si ya dispones de un archivo de texto con los textos que quieres añadir a la clase puedes usar el botón "Cargar" del contenedor de clase. Se abrirá un navegador de ficheros con el que puedes localizar el archivo y cargarlo.

También puedes editar los textos que has añadido usando el botón con el icono de un lápiz que aparece al lado de cada texto o borrarlo usando el botón con el icono de cubo de basura.

![Botones editar y borrar texto](img/08-botones-editar-borrar-texto.png)

De cualquiera de estas dos formas: usando el editor de textos o el navegador de ficheros, irás completando tu conjunto de ejemplos de entrenamiento.

### Aprendizaje

En esta fase un algoritmo de Machine Learning analizará los datos de ejemplo que has introducido en la fase de entrenamiento y construirá un modelo capaz de reconocer o clasificar textos distintos, pero similares, a los del conjunto de datos. Es lo que se denomina el poder de generalización del modelo. Ten en cuenta que este algoritmo necesita al menos dos clases y varios ejemplos en cada clase (cuantos más mejor).

En el modo básico de LearningML2 (más adelante se explicará el modo avanzado), para ejecutar el algoritmo, tan solo hay que hacer clic en el botón "Aprender a reconocer textos" de la zona "Aprender".

![Aprender a reconocer textos](img/09-aprender-a-reconocer-textos.png)

Entonces aparecerá una ventana modal que indica el progreso del proceso de construcción del modelo. El tiempo que necesita el algoritmo de Machine Learning será mayor cuanto más textos de ejemplos hayas añadido al conjunto de datos de entrenamiento. Mientras el algoritmo está ejecutándose, aparece una ventana modal con una barra de progreso y una píldora de conocimiento sobre fundamentos del Machine Learning. 

![Modelo en construcción](img/10-modelo-en-construccion.png)

Al finalizar, en la misma ventana modal, se informa del tiempo que se ha invertido en construir el modelo.

![Modelo construido](img/11-modelo-construido.png)


### Evaluación

La última fase del Machine Learning supervisado consiste en evaluar la calidad del modelo construido alimentándolo con textos diferentes pero similares a los usados en el conjunto de datos de entrenamiento. Basta con introducir un texto en el área de textos de la zona "Probar" y hacer clic en el botón "Comprobar". 

![Probar el modelo](img/12-probar-el-modelo.png)

El resultado muestra la **confianza** para cada una de las clases, esto es, la probabilidad en términos de porcentaje, de que el texto introducido pertenezca a cada una de las clases según los cálculos realizados por el modelo construido.

Es importante realizar varias pruebas, cuantas más mejor. Ten en cuenta que el modelo construido NO es infalible y puede fallar en algunos casos. Si no estamos satisfechos con los resultados que arroja el modelo con los textos de prueba, puedes añadir más textos de ejemplo a las clases de la zona "Entrenar". Incluso puedes añadir nuevas clases con más textos. Una vez que lo hayas hecho, como el conjunto de datos ha cambiado, debes volver a construir el modelo, es decir, volver a hacer clic en el botón "Aprender a reconocer textos" de la zona "Aprender". Seguramente la calidad del modelo haya mejorado. Puedes comprobarlo realizando, una vez más, una fase de pruebas. Este proceso es iterativo y puedes repetirlo todas las veces que quieras hasta obtener un modelo que te satisfaga.

Llegados a este punto puedes desarrollar una aplicación informática con Scratch que use el modelo de Machine Learning que acabas de construir. Pero esto se explicará más adelante en la sección dedicada al **Editor de programación** de este mismo manual.

## Construcción de modelos de reconocimiento de imágenes

Para construir un modelo de reconocimiento de imágenes debes hacer clic en la tarjeta "Reconocimiento de imágenes" de la pantalla principal. Se abrirá la pantalla de construcción de modelos con los elementos necesarios para introducir imágenes de ejemplo etiquetadas.

![Pantalla de construcción de modelos de reconocimiento de imágenes](img/21-modelo-imagenes.png)

El procedimiento para crear modelos de reconocimiento de imágenes es idéntico al de reconocimiento de textos que acabamos de ver. La única diferencia es que en la fase de entrenamiento y de evaluación usaremos imágenes en lugar de textos. 

### Añadir imágenes en la fase de entrenamiento

En cada uno de los contenedores de clases aparecen dos botones para añadir imágenes.

![Botones del contenedor de clases para imágenes](img/22-botones-contenedor-clase-imagen.png)

Con el botón "Subir" puedes añadir imágenes (`.jpg`, `.png`, `.webp`, `.svg`) a través del navegador de ficheros. Ten en cuenta que puedes usar en combinación con el puntero del ratón las teclas "Mayúsculas" y/o "Ctrl" para elegir varias imágenes de una sola vez.

![Subir imágenes](img/23-subir-imagenes.png)

Con el botón "Cámara" se activará la cámara que tengas configurada en tu navegador y podrás añadir instantáneas tomadas con ella. Cuando se activa la cámara aparece la imagen que esté tomando en ese momento y los botones "Captura" y "Cerrar". Cada vez que hagas clic en el primero se añádirá una instantánea a la clase en cuestión.

![Captura con webcam](img/24-captura-webcam.png)

### Añadir imágenes en la fase de evaluación

Al igual que en la fase de entrenamiento, en la fase de evaluación aparecen dos botones, uno para añadir imágenes desde un navegador de ficheros "Subir imágenes" y otro para hacerlo desde la cámara configurada en el navegador "Tomar desde cámara". Funcionan de la misma manera que se ha explicado en el punto anterior.

![Evaluación de imágenes](img/25-evaluacion-imagenes.png)

## Construcción de modelos de reconocimiento de conjuntos numéricos

Para construir un modelo de reconocimiento de conjuntos numéricos debes hacer clic en la tarjeta "Reconocimiento de números" de la pantalla principal. Se abrirá la pantalla de construcción de modelos con los elementos necesarios para introducir conjuntos numéricos de ejemplo etiquetados.

![Pantalla de construcción de modelos de reconocimiento de conjuntos numéricos](img/26-modelo-numeros.png)

### Qué son los conjuntos numéricos

Los conjuntos numéricos son datos tabulados al estilo de una hoja de cálculo. En realidad, todos los datos que son introducidos en un algoritmo de Machine Learning deben ser de este tipo. En el caso de los textos y las imágenes, un procedimiento denominado *feature extraction* (extracción de características) convierte los textos o las imágenes en conjuntos de números, y son estos últimos los que se introducen en el algoritmo de Machine Learning para construir el modelo. Se puede decir por tanto que los conjuntos numéricos son el tipo de datos natural con que trabajan las técnicas de Machine Learning.

Lo mejor para comprender este tipo de datos es usar un ejemplo. Supongamos que pretendemos construir un modelo para reconocer flores que pertenecen a tres especies distintas denominadas: *iris virginica*, *iris versicolor* e *iris setosa*. Para ello, se han realizado medidas sobre la longitud del sépalo, la anchura del sépalo, la longitud del pétalo y la anchura del pétalo de 150 ejemplares distintos. Es decir, cada conjunto numérico que representa a un ejemplar consta de 4 números. Estos serían los 3 primeros ejemplares de la clase *iris-setosa*

| longitud del sépalo | anchura del sépalo | longitud del pétalo | anchura del pétalo|
|---------------------|--------------------|---------------------|-------------------|
| 5.1                 | 3.5                | 1.4                 | 0.2               |
| 4.9                 | 3.0                | 1.4                 | 0.2               |
| 4.7                 | 3.2                | 1.3                 | 0.2               |

Cada fila de la tabla anterior representa a un ejemplar. Y cada columna representa una característica. En este caso se han elegido 4 características de los objetos, esto es, de las flores iris, que dan lugar a un conjunto de 4 números para cada ejemplar. Técnicamente a cada uno de estos conjuntos de 4 números se le llama **vector**. Los vectores se caracterizan por su **dimensión**, que no es más que el número de elementos que componen el vector. En este caso la dimensión es **4**. Es muy importante que **todos** los vectores que se introducen como entrada del algoritmo de Machime Learning tengan la **misma** dimensión.

### Cómo introducir vectores como datos de entrenamiento

Al igual que ocurre con el reconocimiento de textos y de imágenes, lo primero que debes hacer para construir un modelo de reconocimiento de números es añadir las clases (etiquetas) del problema. En el ejemplo de las flores iris añadirás 3 clases: *iris virginica*, *iris versicolor* e *iris setosa*. Cada contenedor de clase muestra 2 botones: "Añadir" y "Cargar".

![Botones contenedor clase números](img/27-botones-contenedor-clase-numeros.png)

El botón "Añadir" lleva a un editor de texto idéntico al del reconocimiento de textos. Lo usaremos para introducir los vectores como filas de números separados por comas. Los tres primeros ejemplares de la clase *iris-setosa* ilustrados en el apartado anterior se introducirían así.

![Introducción de vectores a través del editor de textos](img/28-introduccion-vectores-en-editor.png)

El caracter coma (,) separa cada elemento del vector y el caracter punto (.) se usa como separador decimal. Una vez pulsado el botón "Añadir ejemplos" se añadirán al contenedor de la clase.

![Vectores en contenedor de clase](img/29-vectores-en-contenedor-de-clase.png)

Donde puedes editarlos uno a uno con el botón del icono del lápiz, o eliminarlos usando el botón con el icono del cubo de basura.

> Importante!! Todos los vectores deben tener la misma dimensión y todos sus elementos deben ser números. En caso contrario el sistema arrojará un error.

Por otro lado, el botón "Cargar" abre un navegador de archivos con el que puedes abrir un archivo CSV (Comma Separated Values), esto es, un archivo de texto que contiene lineas de texto separadas por comas. Es importante, según hemos indicado en la nota previa, que los textos representen números y cada linea tenga el mismo número de elementos (misma dimensión).

La introducción de vectores en la fase de evaluación se hace escribiendo la representación CSV que acabamos de explicar en el cuadro de texto de la zona "Probar".

## El menú superior

LearningML2 presenta en todas sus pantallas un menú superior con el que puedes realizar las siguientes operaciones.

### Vover a la pantalla principal

Si haces clic en el icono del genio volverás a la pantalla principal para construir un nuevo modelo.

![Botón cabeza de genio](img/13-boton-cabeza-genio.png)

### Cambiar idioma

Puedes cambiar el idioma de la aplicación haciendo clic en el botón con el icono del globo terrestre.

![Menú idiomas](img/14-menu-idiomas.png)

### Menú archivo

Desde este menú puedes realizar las siguientes operaciones:

![Menú archivo](img/15-menu-archivo.png)

- **Nuevo**. Volver a la pantalla principal para construir un nuevo modelo. Es equivalente a hacer clic en el icono con la cabeza del genio.

- **Subir conjunto de datos desde tu ordenador**. Se abre un navegador de ficheros con el que puedes buscar un fichero con datos de entrenamiento que previamente has debido guardar en el disco de tu computadora. La extensión de este archivo es `.json`.

- **Guardar conjunto de datos en tu ordenador**. Cuando hayas construido un conjunto de datos de entrenamiento deberías guardarlo en el disco de tu computadora usando este menú. En cualquier momento puedes restaurarlo mediante el menú anterior **Subir conjunto de datos desde tu ordenador**. El nombre del archivo guardado es el que se haya definido en el cuadro de textos a la derecha del menú "Archivo" y la extensión es `.json`. En el caso de que no se haya escrito nada en el cuadro de textos el nombre será "Untitled.sjon".

- **Guardar modelo en tu ordenador**. Esta funcionalidad es una novedad de LearningML2. Al hacer clic en este menú se guardará en la carpeta de *Descargas* un fichero con el nonbre definido en el cuadro de texto (o "lml_Untitled" si no se ha definido) y la extensión `.mdl` que contiene el modelo que se ha creado en la fase de aprendizaje. Por tanto, esta operación solo puede realizarse después de completar dicha fase. Este archivo de modelo puede ser cargado en cualquier momento desde el editor de programación (Scratch) y utilizado para realizar tareas de reconocimiento del tipo de datos para el que ha sido entrenado el modelo. Lo importante es que esto se puede hacer en cualquier momento **sin necesidad de usar el editor de modelos**. En la sección dedicada al **Editor de programación** de este mismo manual volveremos sobre este punto.

### Cuadro de texto para el nombre de los archivos

Aquí puedes escribir el nombre con el que quieres guardar los datos de entrenamiento y el modelo generado.

![Cuadro de texto para el nombre del modelo](img/16-cuadro-nombre-modelo.png)

### Menú "Aprender LML"

Desde aquí tienes acceso a este manual y a varios recursos para aprender a usar LearningML2.

![Menú aprender LML](img/17-aprender.png)

### Botón de activación/desactivación del modo avanzado

El modo avanzado de LearningML2 se activa o desactiva haciendo clic en este botón de tipo interruptor.

Por defecto el modo avanzado está desactivado. El fondo del icono del interruptor se muestra vacío.

![Modo avanzado desactivado](img/18-modo-avanzado-off.png).

Al hacer clic en dicho botón se conmuta al modo avanzado. El fondo del icono del interruptor se muestra relleno.

![Modo avanzado activado](img/19-modo-avanzado-on.png)

Además, cuando se activa el modo avanzado, el diseño de la pantalla de construcción de modelos cambia. En lugar de aparecer las tres fases del proceso de Machine Learning supervisado en la misma pantalla, cada fase se asocia a una pestaña, y solo una de ellas se muestra.

### Botón "editor de programación"

Al hacer clic en el botón con la imagen del gatito de Scratch se abre, en otra pestaña del navegador, el editor de programación Scratch con los bloques para usar los modelos de Machine Learning.

![Botón Scratch](img/20-boton-scratch.png)

## El modo avanzado de LearningML2

El modo avanzado de LearningML2 se activa haciendo clic en el botón de tipo interruptor "Avanzado" el cual se encuentra en el menú superior.

![Activación del modo avanzado](img/19-modo-avanzado-on.png)

Y se desactiva haciendo clic en el mismo botón. 

Cuando se activa el modo avanzado la pantalla de construcción de modelos cambia. Los elementos de la interfaz gráfica necesarios para realizar cada fase del aprendizaje supervisado se encuentra en una pestaña. Esto provoca una mayor separación de las fases, ya que cada una ocupa toda la pantalla. Pasamos de una a otra fase haciendo clic sobre su pestaña.

![Pestañas del modo avanzado](img/30-pestanas-modo-avanzado.png)

En el modo avanzado las fases de entrenamiento y validación son iguales a las del modo básico. Simplemente sus elementos de interfaz gráfica ocupan más espacio en la pantalla. La diferencia relevante del modo avanzado son los controles que se añaden en la fase de aprendizaje.

![Elementos de la pestaña de aprendizaje](img/31-elementos-pestana-aprendizaje.png)

Se pretende con el modo avanzado que el estudiante pueda explorar con más profundidad la parte más oscura del proceso, a saber; el algoritmo de Machine Learning. Para ello se sugiere al docente que primero realice una explicación de los fundamentos y del funcionamiento de estos algoritmos. A continuación, el estudiante puede hacerse una idea más aproximada realizando ajustes sobre el algoritmo de Machine Learning.

La pestaña "Aprender" presenta dos partes: 

- A la izquierda la selección de algoritmo.
- A la derecha la selección de una muestra para validar el modelo con una matriz de confusión.

### Selección de algoritmo de ML

En esta parte puedes elegir el algoritmo de Machine Learning que se usará para construir el modelo. Son muchos los algoritmos existentes, aunque, por lo pronto, LearningML2 sólo ofrece dos: Red Neuronal Artificial y KNN (K vecinos más próximos). 

> Nota: El funcionamiento y los fundamentos de estos algoritmos caen fuera del alcance de este manual. Sugerimos el sitio web [Machine Learning Playground](https://ml-playground.com/) para iniciarse de manera práctica en el aprendizaje de estos algoritmos.

**Los *hiperparámetros* del algoritmo**

Cada algoritmo de Machine Learning es diferente. Cada uno de ellos se basa en sus propias estrategias para el análisis de los datos de entrenamiento y construcción del modelo. Por lo general, estos algoritmos ofrecen unos parámetros especiales, denominados hiperparámetros, con los que se puede ajustar su funcionamiento para mejorar el análisis y obtener modelos más precisos y eficaces. Cada algoritmo tiene sus propio conjunto de hiperparámetros y su ajuste óptimo depende en gran medida de la distribución de los datos de entrenamiento. Aunque existen herramientas y técnicas que pueden sistematizar parte de este proceso, la experiencia del programador suele ser un factor clave para ajustarlos correctamente. De hecho suele decirse que, tanto la elección del algoritmo como el ajuste de sus hiperparámetros son tareas artesanales.

Así pues, en función del algoritmo que se haya seleccionado en el desplegable anterior los hiperparámetros mostrados serán unos u otros. 

![Selección de algoritmo e hiperparámetros](img/32-seleccion-algorimo.png)

Si has seleccionado el algoritmo "Red Neuronal", al finalizar el aprendizaje se mostrará una gráfica en la que se muestra la evolución del aprendizaje en término de dos cantidades típicas denominadas *accuracy* y *loss*.

> Nota: Para entender qué significan estas cantidades es necesario realizar previamente un estudio de los fundamentos de las redes neuronales artificiales, lo cual cae fuera del alcance de este manual.

![Evolución del aprendizaje](img/33-evolucion-aprendizaje.png)

### Validación del modelo con una matriz de confusión

Ya hemos visto que en la fase de evaluación presentamos nuevos datos al modelo para comprobar si funciona aceptablemente, es decir, si acierta mucho más de lo que falla. Sin embargo, presentar uno a uno los ejemplos para realizar esta comprobación puede ser bastante pesado. 

Hay una manera mucho más cómoda y adecuada hacer esto. Se trata de indicarle al algoritmo de Machine Learning que reserve un porcentaje de datos de entrenamiento para la evaluación del modelo. Esto significa que de todos los datos de entrenamiento que se han aportado, un subconjunto que representa el porcentaje de validación seleccionado y que es elegido aleatoriamente por el algoritmo, NO se usará durante el proceso de aprendizaje.

Cuando el modelo haya sido construido, el propio algoritmo lo validará construyendo y visualizando en pantalla una *matriz de confusión*.

![Matriz de confusión](img/34-matrix-confusion.png)

**¿Cómo se construye y se interpreta esta matriz?**

A pesar de su confuso nombre, la construcción e interpretación de la matrix de confusión es muy sencillo.

Es una tabla que muestra números con las filas y columnas etiquetadas según las clases utilizadas durante el entrenamiento. Cada celda de la tabla indica cuántos ejemplos del conjunto de validación pertenecen a la clase de la fila y fueron clasificados por el modelo como la clase de la columna.

En la imagen anterior, la matriz de confusión indica que:

- 3 cuadros de Monet fueron clasificados como cuadros de Monet (fila 1, columna 1)
- nigún cuadro de Monet fue clasificado como cuadro de Picasso (fila 1, columna 2)
- 1 cuadro de de Monet fue clasificado como un cuadro de Vangoh (fila 1, columna 3)
- ningún cuadro de Picasso fue clasificado como cuadro de Monet (fila 2, columna 1)
- 2 cuadros de Picasso fueron clasificados como cuadros de Picasso (fila 2, columna 2)
- nigún cuadro de Picasso fue clasificado como cuadro de Vangoh (fila 2, columna 3)
- nigún cuadro de Vangoh fue clasificado como cuadro de Monet (fila 3, columna 1)
- nigún cuadro de Vangoh fue clasificado como cuadro de Picasso (fila 3, columna 2)
- 2 cuadros de Vangoh fueron clasificados como cuadros de Vangoh (fila 3, columna 3)

>Nota: el orden de las filas va de abajo a arriba y el de las columnas de izquierda a derecha

Es decir, es deseable que los elementos que no son diagonales sean pequeños, idealmente cero, ya que representan fallos del modelo. Mientras que los elementos de la diagonal, al representar aciertos del modelo, deberían ser altos en comparación con los no diagonales para que el modelo sea suficientemente bueno. Así de fácil.

Finalmente, si se eligue un porcentaje de ejemplos de validación mayor que cero, además de obtener la matriz de confusión, la curva de aprendizaje del algoritmo presenta también como evolucionan las cantidades *accuracy* y *loss* para los datos del conjunto de evaluación.

![Evolución de la aprendizaje con datos de evaluación](img/35-evolucion-aprendizaje-2.png)




