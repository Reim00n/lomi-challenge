
# Instrucciones para Iniciar el Proyecto

## Requisitos Previos

Asegúrate de tener instalado Ruby y Ruby on Rails en tu sistema. Si no los tienes instalados, puedes seguir las instrucciones en la documentación oficial de Ruby on Rails para instalarlos: [Instalación de Ruby on Rails](https://guides.rubyonrails.org/getting_started.html#installing-rails)

## Pasos para Levantar el Proyecto

1. Clona el repositorio de Git en tu máquina local:

   ```bash
   git clone https://github.com/Reim00n/lomi-challenge
   cd micolet
   ```
2. Ejecuta el siguiente comando para instalar todas las gemas y dependencias del proyecto:

```markdown
bundle install
```

3.Renombra el archivo `.env_example` a `.env` y completa las credenciales necesarias en el archivo `.env`. Este archivo generalmente contiene información sensible como claves de acceso a bases de datos, claves de API, etc. Asegúrate de no compartirlo públicamente.

* Crea la base de datos utilizando el siguiente comando:
  ```
  rails db:create
  ```

Ejecuta las migraciones de la base de datos para crear las tablas necesarias:

```
rails db:migrate

```

Si el proyecto incluye datos de ejemplo, puedes cargarlos utilizando el comando `rails db:seed`:

```
rails db:seed
```

Inicia el servidor de desarrollo de Rails:

```
rails s
```

2. El servidor se ejecutará en `http://localhost:3000`.

## Esquema de la Base de Datos

Puedes encontrar el esquema de la base de datos en el siguiente enlace: 

## Rutas Activas

* Ruta para el inicio de sesión de administrador: `http://localhost:3000/admin/login`
* Ruta para la suscripción de usuarios: `http://localhost:3000/subscribe_me/index`
* Ruta para ver los correos electrónicos recibidos por el usuario: `http://localhost:3000/inbox`
* Ruta para previsualizar el correo de suscripción: `http://localhost:3000/rails/mailers`

## Agregar Traducciones

Si deseas agregar más traducciones a i18n, simplemente debes modificar los archivos de idioma correspondientes. Los archivos de traducción suelen tener extensiones como `.yml` y están ubicados en el directorio `config/locales`.

* Para agregar traducciones en inglés, edita el archivo `en.yml`.
* Para agregar traducciones en español, edita el archivo `es.yml`.

Por ejemplo, si deseas agregar una traducción para un mensaje en inglés, puedes hacerlo de la siguiente manera en `config/locales/en.yml`:

```
//config/locales/en.yml
en:
  controllers:
    subscribe_me:
      email_subscribe_success: "Subscription successful! You are now subscribed."

```

¡Listo! Ahora deberías poder ejecutar y utilizar tu proyecto de Rails siguiendo estos pasos. Asegúrate de seguir las mejores prácticas de seguridad al manejar las credenciales y datos sensibles.
