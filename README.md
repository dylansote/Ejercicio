# Creación de Contenedores

Es importante destacar que es recomendable crear los siguientes archivos en una sola ubicación, como una carpeta, para evitar confusiones.

## 1. Código

El primer paso es tener nuestro código ejecutable. En este caso, utilizaremos un código sencillo en Python para mostrar en pantalla el nombre y la edad de una persona en específico:

```python
# hola.py

nombre = "Dylan"
edad = 20

mensaje = f"Hola, soy {nombre} y tengo {edad} años."
print(mensaje)

```
el anterior código fue guardado de la siguiente forma: hola.py

## 2. DockFile

EL DockerFile son nuestras instrucciones, en este caso al utilizar pyrhon necesitamos utilizar la imagen de python, a continuación se  muestra el contenido:


```
# dockerfile

FROM python:3
WORKDIR /Act
COPY ./Act /Act
CMD ["python3", "hola.py"]

#"Act" hace referencia a la carpeta donde se encuentra nuestro código, en este caso "hola.py"

```
## 3. Crear y Ejecutar

Para ejecutar solo tenemos que abrir la liena de comandos (CMD)  y  estar en la ubicación donde se ecuentra nuestro Dockerfile.

Una vez hecho esto procedemos a ingresar el sigueinte comando el cual sirve para crear nuestra imagen y contenedor :

```
docker build -t my-python-app .
```
Esperando un poco, una vez terminado la creación,  ingresamos el siguiente comando para ejecutar el código:

```
docker run my-python-app
```
Una vez ingresado se podra ver la ejecución del código.
