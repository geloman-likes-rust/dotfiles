return function(luasnip, format, extras)
    local rep = extras.rep
    local fmt = format.fmt
    local t = luasnip.text_node
    local i = luasnip.insert_node
    local c = luasnip.choice_node
    local snippet = luasnip.snippet
    return {
        snippet('information_schema', t('information_schema')),
        snippet('DESCRIBE_TABLE', c(1, {
            fmt(
                [[
                    -- DESCRIBE TABLE '{}'
                    SELECT column_name, data_type, is_nullable
                    FROM information_schema.columns
                    WHERE table_name = '{table}';
                ]], { table = i(1, 'table'), rep(1) }
            ),
            fmt(
                [[
                    -- DESCRIBE TABLE '{}'
                    DESCRIBE {table};
                ]], { table = i(1, 'table'), rep(1) }
            ),
        })),
        snippet('SHOW_TABLES', fmt(
            [[
                -- SHOW TABLES
                SELECT table_name
                FROM information_schema.tables
                WHERE table_schema = 'public'
                AND table_type = 'BASE TABLE';
            ]], {}
        )),
        snippet('INSERT', fmt(
            [[
                INSERT INTO {table}
                    ({columns})
                VALUES
                    ({values});
            ]], { table = i(1, 'table'), columns = i(2, 'columns'), values = i(3, 'values') }
        )),
        snippet('SELECT', fmt(
            [[
                SELECT
                    {columns}
                FROM {table};
            ]], { columns = i(1, '*'), table = i(2, 'table') }
        )),
        snippet('CREATE_TABLE', fmt(
            [[
                CREATE TABLE {table}(
                    {fields}
                );
            ]], { table = i(1, 'table_name'), fields = i(2, 'field_name') }
        )),
        snippet('UPDATE', fmt(
            [[
                UPDATE {table}
                SET {attrib}
                WHERE {condition};
            ]], { table = i(1, 'table_name'), attrib = i(2, 'attributes'), condition = i(3, 'condition') }
        )),
        snippet('DELETE', fmt(
            [[
                DELETE FROM {table}
                WHERE {condition};
            ]], { table = i(1, 'table_name'), condition = i(2, 'condition') }
        )),
        snippet('CREATE_VIEW', fmt(
            [[
                CREATE VIEW {view} AS
                SELECT {attrib}
                FROM {table};
            ]], { view = i(1, 'view_name'), attrib = i(2, '*'), table = i(3, 'existing_table') }
        )),
        snippet('CREATE_FUNCTION', fmt(
            [[
                CREATE FUNCTION {func}({params})
                LANGUAGE SQL
                RETURNS {returns} AS
                $body$
                {query}
                $body$
            ]],
            { func = i(1, 'fn_name'), params = i(2, 'params'), returns = i(3, 'returns'), query = i(4, 'instruction') }
        )),
        snippet('CREATE_PROCEDURE', c(1, {
            fmt(
                [[
                    CREATE PROCEDURE {procedure}({params})
                    LANGUAGE SQL
                    AS
                    $procedure$
                    {body}
                    $procedure$
                ]], { procedure = i(1, 'procedure_name'), params = i(2, 'params'), body = i(3, 'instruction') }
            ),
            fmt(
                [[
                    DELIMITER $$
                    CREATE PROCEDURE {procedure}({params})
                    BEGIN
                    {body}
                    END $$
                    DELIMITER ;
                ]], { procedure = i(1, 'procedure_name'), params = i(2, 'params'), body = i(3, 'instruction') }
            ),
        })),
        snippet('JOIN', fmt(
            [[
                SELECT
                    {attrib}
                FROM {table_a}
                {join_type} JOIN {table_b}
                ON {condition};
            ]],
            {
                attrib = i(2, '*'),
                table_a = i(3, 'table_a'),
                join_type = c(1, { t('INNER'), t('LEFT'), t('RIGHT') }),
                table_b = i(4, 'table_b'),
                condition = i(5, 'condition'),
            }
        )),
        snippet('REFERENCES', fmt(
            [[
                INTEGER REFERENCES {table}(id) ON DELETE {on_delete},
            ]], {
                table = i(1, 'table'),
                on_delete = c(2, { i(1, 'SET NULL'), i(1, 'CASCADE') })
            }
        )),
        snippet('SERIAL_PRIMARY_KEY', t('id SERIAL PRIMARY KEY,')),
        snippet('ALTER_TABLE_DROP_COLUMN', fmt(
            [[
                ALTER TABLE {table}
                DROP COLUMN {column};
            ]], { table = i(1, 'table'), column = i(2, 'column') }
        )),
        snippet('ALTER_TABLE_ADD_COLUMN', fmt(
            [[
                ALTER TABLE {table}
                ADD COLUMN {column};
            ]], { table = i(1, 'table'), column = i(2, 'column') }
        )),
        snippet('ALTER_TABLE_RENAME_COLUMN', fmt(
            [[
                ALTER TABLE {table}
                RENAME COLUMN {old} TO {new};
            ]], { table = i(1, 'table'), old = i(2, 'old_column_name'), new = i(3, 'new_column_name') }
        )),
        snippet('ALTER_TABLE_ALTER_COLUMN', fmt(
            [[
                ALTER TABLE {table}
                ALTER COLUMN {column} {instruction};
            ]], { table = i(1, 'table'), column = i(2, 'column'), instruction = i(3, 'instruction') }
        )),
        snippet('TRUNCATE', fmt(
            [[
                TRUNCATE TABLE {table}
            ]], { table = i(1, 'table') }
        )),
        snippet('DESCRIBE_PROCEDURE', fmt(
            [[
                SELECT pg_get_functiondef(p.oid) as procedure_definition
                FROM pg_proc p
                JOIN pg_namespace n ON p.pronamespace = n.oid
                JOIN pg_language l ON p.prolang = l.oid
                WHERE p.proname = '{procedure}' AND n.nspname = 'public';
            ]], { procedure = i(1, 'procedure_name') }
        )),
        snippet('SHOW_PROCEDURES', fmt(
            [[
                SELECT proname as stored_procedures
                FROM pg_proc
                WHERE pronamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'public');
            ]], {}
        )),
    }
end
