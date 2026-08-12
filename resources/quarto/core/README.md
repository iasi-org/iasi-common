# Quarto Engine Core

Componentes comunes para engines Quarto.

## Configuración

```yaml
engines:
  plantuml:
    enabled: true
    server: http://javier:1025
    format: png
    cache: true
```

`cache` admite:

- `true`: reutiliza y actualiza la caché.
- `false`: siempre recompila.
- `clean`: limpia una vez y después funciona como `true`.

La caché se guarda en:

```text
.quarto/<engine>/
  <sha1>.<format>
  <sha1>.sha1
```

El compilador recibe la fuente y su configuración:

```lua
Compiler.compile(source, config)
```

Puede devolver metadatos de compilación como tercer valor. Por ejemplo,
`cacheable = false` evita almacenar una respuesta de diagnóstico.
