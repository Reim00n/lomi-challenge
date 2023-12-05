
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

Puedes encontrar el esquema de la base de datos en el siguiente enlace: [Esquema UML](https://lucid.app/lucidchart/09b8131e-e3f0-471e-aef0-06d6c1125b2d/edit?invitationId=inv_14e6dc7b-76a0-482d-a866-74725871f28c)


