# Pluvia
**Agrro-Fit**

*Ejecuta `npm run dev` para correr el servidor.*

[*Prototipo de la aplicación (Figma)*](https://www.figma.com/design/0Z2nf0IBI3BKyHK4va4Vf6/PluvIA-0.2)


## Introducción

**PluvIA** es un emprendimiento que actualmente colabora con **ITHAKA** y busca ofrecer una solución integral a los productores de arroz respecto al estado de su cultivo. Su misión es automatizar el control del riego en los campos arroceros, con el objetivo de evitar ineficiencias y pérdidas de rendimiento, proporcionar una herramienta confiable y eficiente, y convertirse en un actor clave en la toma de decisiones sobre el riego. La herramienta está diseñada para ser sencilla para el productor y fácil de usar para los trabajadores de las plantaciones.

## Producto Resultante Esperado

Se espera desarrollar una aplicación para **web** y **móvil** con la cual los diferentes actores podrán ingresar y observar los datos relevantes de cada plantación. A través de la aplicación móvil, el productor podrá visualizar un mapa con los puntos a corregir.

### Características de la Aplicación

- **Inicio de sesión**: Los productores y un administrador podrán iniciar sesión para gestionar los mapas con puntos georreferenciados, asignándolos a un productor.
- **Registro de productores**: Los productores son registrados manualmente por el administrador, sin necesidad de registro por parte de los mismos.
- **Información adicional**: Los productores tienen información adicional vinculada a su perfil, visible únicamente para el administrador. Esta información incluye:
  - Ubicación de la zona de cultivo
  - Teléfono
  - Email
- **Modificación de contraseña**: Los productores podrán modificar su contraseña.

### Gestión de Mapas

- Los mapas deben ser subidos en formato `.kml` y marcados sobre un mapa.
- Se debe permitir la superposición de un mapa ortomosaico para observar los distintos índices generados.
- El productor podrá dar **feedback** sobre puntos georreferenciados específicos.
- **Estados de los puntos**: Los puntos georreferenciados tendrán dos estados: **Pendiente** y **Revisado**, los cuales deben ser fácilmente discernibles al observar el mapa. Los productores podrán modificar estos estados.
  
### Datos Adicionales en los Mapas

Los mapas deberán contener información adicional que podrá ser modificada por el productor, y aunque no es obligatoria, será añadida después de la subida del mapa. Los datos son los siguientes:

- **Fecha de siembra**
- **Densidad de siembra** (kg/ha) [FLOAT]
- **Fecha de primera fertilización**
- **Producto utilizado para fertilización**
- **Cantidad utilizada en fertilización** (kg/ha o ml/ha) [FLOAT]
- **Fecha de aplicación de herbicidas/fungicidas**
- **Producto utilizado en herbicidas/fungicidas**
- **Cantidad utilizada en herbicidas/fungicidas** (kg/ha o ml/ha) [FLOAT]
- **Fecha de emergencia del cultivo**
- **Fecha de comienzo de riego**
- **Fecha de fin del riego**
- **Fecha de cosecha**
- **Rendimiento promedio de la chacra** (kg/ha) [FLOAT]

### Base de Datos

La aplicación contará con una base de datos para almacenar la información de los usuarios y los mapas. Además, deberá permitir el almacenamiento de los mapas ortomosaicos (archivos pesados).

## Objetivo

La aplicación está diseñada para ser confiable para los productores, asegurando que puedan ver todos los datos relevantes. Además, busca ser **user-friendly** e **intuitiva** para facilitar su uso por parte de los usuarios.

## Tutoriales Node

- [*Tutorial 1 (por partes)*](https://www.youtube.com/watch?v=zb3Qk8SG5Ms&list=PL4cUxeGkcC9jsz4LDYc6kv3ymONOKxwBU&index=1)  
- [*Tutorial 2*](https://www.youtube.com/watch?v=i3OdKwuBjeM)  
- [*Tutorial 3 (a partir del min 5:32:40)*](https://www.youtube.com/watch?v=Oe421EPjeBE)  

