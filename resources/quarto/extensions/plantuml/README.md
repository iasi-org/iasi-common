# PlantUML

## Configuración

```yaml
engines:
  plantuml:
    enabled: true
    server: http://javier:1025
    format: png
    cache: true
    styles:
      - resources/plantuml/iasi.puml
```

También admite un único estilo:

```yaml
styles: resources/plantuml/iasi.puml
```

Los estilos se incorporan antes de calcular el SHA1. Cualquier cambio en
`iasi.puml` invalida automáticamente la caché.

## Transporte

La fuente preparada se envía al servidor mediante `POST /png/`. El código
PlantUML viaja en el cuerpo de la petición y no se codifica dentro de la URL.

La respuesta se procesa directamente en memoria. La extensión no crea ni
mantiene directorios temporales.

## Errores PlantUML

Cuando PlantUML devuelve un error de sintaxis como una imagen PNG:

- la imagen de diagnóstico se incluye en el documento;
- el renderizado continúa;
- la imagen no se guarda en caché.

Los errores de transporte o las respuestas no gráficas detienen el renderizado.
