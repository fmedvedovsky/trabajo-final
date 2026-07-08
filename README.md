# Trabajo Final de Licenciatura en Sistemas
Este repositorio contiene todos los archivos relacionados a mi trabajo final de la Licenciatura en Sistemas, carrera cursada en la Universidad Nacional de Entre Ríos.


# Estructura de directorios
El repositorio contiene las siguientes carpetas:
* **_document_:** que contiene los documentos de Typst del trabajo final.

# ¿Cómo obtener el documento PDF?
Para poder obtener el documento PDF es necesario tener instaladas las siguiente herramientas:
* **_Git_**: para clonar el repositorio.
* **_Typst_**: para compilar el documento.

Typst es una herramienta similar a LaTeX implementada en Rust y la misma se puede obtener siguiendo las instrucciones disponibles en https://github.com/typst/typst bajo la sección "Installation" del archivo README.

## Pasos para compilar el documento

1. Clonar este repositorio.

```sh
git clone git@github.com:fmedvedovsky/trabajo-final.git
```

2. Entrar al directorio que contiene el documento.

```sh
cd ./trabajo-final/document
```

3. Compilar el archivo trabajo-final.typ.
```sh
typst compile trabajo-final.typ
```

Al finalizar estos pasos debería existir un archivo `trabajo-final.pdf` dentro de la carpeta **_document_**.