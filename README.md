# ejGoweb
Ejemplo practico de Goweb con Beego y generator angular

# Requerimientos

- Instalación de Generator angular

Instalar el `yo`, `grunt-cli`, `bower`, `generator-angular` y `generator-karma`

`npm install -g grunt-cli bower yo generator-karma generator-angular`

iniciar proyecto con `grunt serve`

__También puede utilizar el servidor de apache__

- Instalación Beego

Después de instalar `Golang`

`go get github.com/astaxie/beego`

La carpeta `base` contiene el main.go que ejecuta el api rest de la base de datos, en este caso `postgresql`

__Build__ `bee run`

- Volcar base de datos

`psql -U (usuario) -h (host) (base_datos) < postgresql.sql`

# Importante

1. La base de datos debe de estar funcional
2. La ruta de conexión del main.go con postgresql debe ser correcta
3. La ruta de conexión en el script crud.js con el api rest de `Beego` debe ser correcta
