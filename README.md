<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

>><p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## **Instrucciones de despliegue**
- En la raíz del proyecto a través de consola ejecutar:

  `composer install`

-   Realizar una copia del archivo .env.example y renombrarlo como .env, una vez realizado configurar los parámetros de base de datos

- Usando la consola ejecutar el comando

  `php artisan key:generate`


-   Ejecutar los siguientes comandos

1. `php artisan migrate`   *genera la estructura de la base de datos.*

2. `php artisan voyager:install`   *establece la configuración base del administrador de contenidos.*

3. `php artisan serve`   *ejecuta el servidor por defecto en el puerto 8000*.



> *Nota: el administrador sera accedido desde la url de despliegue agregando en la raiz del sitio /admin*
> *Ej: localhost:8000/admin*
> 
> *Base de Datos: La base de datos se encuentra en la carpeta `DB PROJECT/`*


> *Los datos del usuario Administrador son:*
> - *username: admin@localhost.com*
> - *pass: 123456*

> *Los datos del rol admin recolector son:*
> - *username: adminrecolector@localhost.com*
> - *pass: 123456*

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
