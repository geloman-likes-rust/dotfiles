; extends

(assignment
  left: (identifier) @variable (#any-of? @variable "query" "sql")
  right: (string (string_content) @injection.content) (#set! injection.language "sql"))

(call
  function: (attribute
    object: (identifier) @variable (#eq? @variable "cursor")
    attribute: (identifier) @function.method (#eq? @function.method "execute"))
  arguments: (argument_list
    (string (string_content) @injection.content) (#set! injection.language "sql")))
