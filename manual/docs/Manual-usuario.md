# LML-Scratch
## Modo autónomo

El acceso al modo autónomo se hace a través de la URL:
- `https://learningml.org/scratch/?autonomous=1`

Con el modo autónomo se pueden construir modelos de Machine Learning desde el propio entorno de programación, sin necesidad de usar LML-editor. Este modo añade a los bloques del modo `advanced` los siguientes:


| Bloque                               | Tipo    | Descripción                                                                                                                              |
| ------------------------------------ | ------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| `Definir el tipo de modelo a <tipo>` | Command | Con este bloque se especifica el tipo de modelo que se desea construir (texto, imagen, números)                                          |
| `Definir dimensión a <dimensión>`    | Command | Con este bloque se especifica la dimensión de los conjuntos de números cuando se desea construir un modelo de reconocimiento de números. |
| `Usar <algoritmo> para aprender`     | Command | Con este bloque se especifica el algoritmo de Machine Learning que se usará para construir el modelo.                                    |
| `Set <parámetro> a <valor>`          | Command | En realidad son dos bloques, uno para definir hiperparámetros del algoritmo `Sequential` y otro para los del algoritmo `KNN`.            |
### Ejemplo de construcción de un modelo de reconocimiento de imágenes.

En este ejemplo se construirá un modelo de reconocimiento de imágenes que representan cuadros de Monet, Picasso y Van Gogh.

1. Se añaden las imágenes que constituyen el conjunto de entrenamiento como disfraces de un objeto. Añadimos, por ejemplo, 12 imágenes por cada clase, es decir, por cada artista.
 ![[Pasted image 20240608171345.png]]
2. Se da inicio al programa con el bloque `Al hacer clic en bandera` y se define el tipo de modelo a construir con el bloque `Definir tipo de modelo a <imagen>`. A continuación, usando bloques de repetición junto a los bloques `Añadir <item> a label <label>` y `Siguiente disfraz` se construye el conjunto de datos a partir del cual se va a generar el modelo.

![Kaka](img-doc/Paso-de-mensajes-entre-componentes.excalidraw.png)

3. Con esto ya se ha completado la primera fase del proceso, esto es, el entrenamiento. Ahora se está en disposición de construir el modelo. Primero seleccionamos el algoritmo con el bloque `Usar <algoritmo> para aprender` y  seguidamente se lanza con el bloque `Aprender y esperar`. La ejecución de este último bloque puede demorar bastante pues es el responsable de ejecutar el algoritmo seleccionado sobre los datos de entrenamiento.
4. Ahora es el momento de probarlo. 