local Compiler = {}

function Compiler.normalize_config(config)
  return config
end

function Compiler.mime_type(config)
  error("Implemente Compiler.mime_type(config)")
end

function Compiler.compile(source, config)
  error(
    "Implemente Compiler.compile(source, config)"
  )
end

return Compiler
