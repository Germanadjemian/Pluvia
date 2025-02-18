# Pluvia
Agrro-Fit

*npm run dev para correr servidor*

Introducción:
PluvIA es un emprendimiento que se encuentra trabajando actualmente con ITHAKA y busca
dar una solución integral a los productores de arroz acerca de estado de su cultivo.
Su misión es automatizar el control del riego en los campos arroceros para evitar ineficiencias
y pérdidas de rendimiento, presentar una herramienta confiable y eficiente, y ser un actor en
la toma de decisiones acerca del riego. Esta herramienta busca ser sencilla para el productor
y simple para los trabajadores de las plantaciones.
Producto resultante esperado:
Se espera brindar una aplicación para web y móvil con la cual los distintos actores puede
ingresar y observar los datos relevantes de cada plantación. A través de la aplicación móvil,
el productor podrá visualizar un mapa con los puntos a arreglar.
La aplicación tendrá:
• Inicio de sesión para los productores y un administrador que permita subir mapas con puntos
georreferenciados y asignarlos a un productor.
• Los productores son registrados de forma manual por el administrador, no se requiere un
registro.
• Los productores tienen vinculados a ellos información adicional solo visible por el
administrador. Esta información incluye: Ubicación de su zona de cultivo, teléfono y email.
• Los productores deben poder modificar su contraseña
Los mapas deben ser subidos como un .kml y marcados sobre un mapa. Luego se debe poder
cargar un mapa ortomosaico sobre este, permitiendo superponerlo para observar los distintos
índices que se generan.
• Permitir al productor dar feedback en base a un punto georreferenciado específico.
• Los puntos georreferenciados tendrán 2 estados: Pendiente y Revisado, estos se deberán
poder discernir a simple vista mirando el mapa. El productor debe poder modificar este
estado.
• Los mapas deben tener datos adicionales, los cuales deben poder ser modificados por el
productor, estos datos no son obligatorios y serán agregados por el productor posterior a la
subida del mapa:
- Fecha de siembra
- Densidad de siembra (kg/ha) [FLOAT]
- Fecha de primera fertilización
- Con que se fertilizó (Nombre del producto)
- Cantidades utilizadas (kg/ha o ml/ha) [FLOAT]
- Fecha de aplicación de herbicidas/fungicidas
- Con que producto se aplicó
- Cantidades utilizadas (kg/ha o ml/ha) [FLOAT]
- Fecha de emergencia del cultivo
- Fecha de comienzo de riego
- Fecha de fin del riego
- Fecha de cosecha
- Rendimiento promedio de la chacra (kg/ha) [FLOAT]
• Deberá contar con una base de datos donde se guarde la información de los usuarios y de
los mapas. También se deben poder almacenar los mapas ortomosaicos (archivos pesados)
La aplicación se buscará que sea confiable para el productor y vea todos los datos que se
aporten a la aplicación. A su vez que ser user friendly e intuitivo para el usuario. 

