# Criterio de jerarquía estructural del libro

Este documento fija la terminología que utilizaremos para referirnos a los distintos niveles de organización del libro.

## Jerarquía

La jerarquía estructural será:

1. **Libro**
2. **Parte**
3. **Capítulo**
4. **Sección**
5. **Apartado**
6. **Subapartado**

## Significado de cada nivel

### Parte

Una **Parte** agrupa varios capítulos que forman una unidad conceptual amplia dentro del libro.

Ejemplo:

> Parte I. De la programación a los Sistemas Inteligentes

Las Partes se numeran con números romanos: I, II, III, IV...

### Capítulo

Un **Capítulo** es una unidad principal de desarrollo dentro de una Parte.

La numeración incorpora la Parte a la que pertenece:

> I.1 Introducción  
> I.2 Programación imperativa  
> I.3 Programación funcional

Al comenzar una nueva Parte, la numeración de capítulos vuelve a empezar:

> II.1 ...  
> II.2 ...

### Sección

Una **Sección** divide internamente un capítulo en bloques temáticos principales.

Ejemplo:

> II.3.1 Contexto  
> II.3.2 Herramientas  
> II.3.3 Memoria

### Apartado

Un **Apartado** es una subdivisión de una Sección.

Ejemplo:

> II.3.1.1 Ventana de contexto  
> II.3.1.2 Contexto persistente

### Subapartado

Un **Subapartado** es una subdivisión adicional de un Apartado y debería utilizarse solo cuando resulte realmente necesario.

Ejemplo:

> II.3.1.1.1 Límites prácticos

## Correspondencia aproximada con Markdown / Quarto

```markdown
# Capítulo
## Sección
### Apartado
#### Subapartado
```

Las **Partes** no se definen mediante encabezados Markdown normales, sino mediante la estructura del libro en Quarto.

## Regla práctica

Cuando haya dudas, utilizar esta secuencia:

> **Libro → Parte → Capítulo → Sección → Apartado → Subapartado**

Y, al hablar de la estructura en el texto, utilizar el nombre correspondiente al nivel real.

Por ejemplo:

- «En la **parte anterior**...»
- «En el **capítulo anterior**...»
- «En la **sección siguiente**...»
- «En este **apartado**...»

Evitar utilizar «sección» o «apartado» como términos genéricos para cualquier nivel, porque termina haciendo ambigua la estructura.
