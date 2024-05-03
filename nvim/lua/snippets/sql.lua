return function(luasnip, format, extras)
    local rep = extras.rep
    local fmt = format.fmt
    local t = luasnip.text_node
    local i = luasnip.insert_node
    local snippet = luasnip.snippet
    return {
        snippet('information_schema', t('information_schema')),
        snippet('DESCRIBE_TABLE', fmt(
            [[
                -- DESCRIBE TABLE '{}'
                SELECT column_name, data_type, is_nullable
                FROM information_schema.columns
                WHERE table_name = '{table}';
            ]], { table = i(1, 'table'), rep(1) }
        )),
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
        snippet('CREATE', fmt(
            [[
                CREATE TABLE IF NOT EXISTS
                    {table}(
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
    }
end
