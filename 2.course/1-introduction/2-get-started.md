# Instalación
- Inicio
[https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)

## Requisitos de Hardware

- Desarrollar en Android requiere un minimo de memoria RAM recomendada queseria de 8 GB esto se debe a los emuladores.
- Para compilar una aplicacion en iOS necesitas si o si una Mac.

## Instalación en Linux

1. Descargar el sdk para Linux
- [flutter_linux_v1.2.1-stable.tar.xz](https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.2.1-stable.tar.xz)

2. Extraer el archivo 
```
$ tar xf flutter_linux_v1.2.1-stable.tar.xz
```
3. Añadir flutter a tu PATH.
```
$ export PATH="$PATH:/home/gnujavasergio/flutter/bin"
```
4. Para hacerlo permanentemente se tiene que añadirlo en .bashrc o /etc/enviroment(ubuntu)
- [Leer esto como complemento](http://blockdeubuntu.blogspot.com/2009/01/cmo-modificar-la-variable-path.html)
```
export PATH="$PATH:/home/gnujavasergio/flutter/bin"
```
5. Probar si se instalo correctamente flutter
```
$ flutter --version
```

## Herramientas
- Para comprobar si nuestras herramientas esta correctamente instaladas ejecutar
```
$ flutter doctor
$ flutter doctor -v
```
- **Nota:** -v para que nos muestra una salida mas detallada

### Soporte para Editores 
- Visual Studio Code
    - [https://code.visualstudio.com/](https://code.visualstudio.com/)
- Android Studio
    - [https://developer.android.com/](https://developer.android.com/)
- IntelliJ IDEA
- cualquier otro editor de texto
    - flutter-cli
- **Nota:** Para tener una productividad mucho mejor hacerlo en Visual Studio Code o Android Studio porque te ayuda en la compilación.

## Flutter CLI
- flutter create [project_name]
    - Crea una nueva aplicación de Flutter con la CLI
- flutter doctor [-v]
    - Comprueba su entorno y muestra un informe en la terminal
- flutter run
    - Ejecuta la aplicación
    
## Dependencias

Para bajar las dependencias de dart
```
pub get
```
