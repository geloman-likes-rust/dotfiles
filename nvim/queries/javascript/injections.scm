; extends

  (lexical_declaration
    (variable_declarator
      name: (identifier) @variable (#any-of? @variable "query" "sql")
      value: (string (string_fragment) @injection.content) (#set! injection.language "sql")))

  (lexical_declaration
    (variable_declarator
      name: (identifier) @variable (#any-of? @variable "query" "sql")
      value: (template_string (string_fragment) @injection.content) (#set! injection.language "sql")))
