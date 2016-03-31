Prueba - Desarrollador Backend DevOps
-------------------------------------
Escribe un código en un lenguaje de tu elección que ejecute en paralelo las resoluciones DNS que se le indiquen en un fichero (adjuntamos un ejemplo), y un cookbook de Chef para instalarlo y ejecutarlo. Utiliza git para control de versiones y cuando termines súbelo como repositorio público a GitHub y envíanos por correo un enlace al mismo.

Solución
--------
La solución que he dado es muy sencilla, un script en bash que lee el fichero de consulta línea a línea invocando a otro que se ejecuta en segundo plano, generando un fichero de salida por cada dirección resuelta.
