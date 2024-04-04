return {
    'L3MON4D3/LuaSnip',
    keys = function()
        local luasnip = require 'luasnip'
        local expand = function() luasnip.expand() end
        local jump = function(n)
            return function() luasnip.jump(n) end
        end
        local change_choice = function()
            if luasnip.choice_active() then
                luasnip.change_choice(1)
            end
        end

        return {
            { '<C-space>', mode = 'i',          expand },
            { '<C-n>',     mode = { 'i', 's' }, jump(1) },
            { '<C-p>',     mode = { 'i', 's' }, jump(-1) },
            { '<C-e>',     mode = { 'i', 's' }, change_choice },
        }
    end,
    config = function()
        local luasnip = require 'luasnip'
        luasnip.config.setup { update_events = 'TextChanged,TextChangedI' }

        local rep = require('luasnip.extras').rep
        local fmt = require('luasnip.extras.fmt').fmt
        local fmta = require('luasnip.extras.fmt').fmta

        local t = luasnip.text_node
        local i = luasnip.insert_node
        local c = luasnip.choice_node
        local snippet = luasnip.snippet

        luasnip.add_snippets('cpp', {
            snippet('cpt', fmta(
                [[
                    <include>
                    using namespace std;

                    int main() {
                        ios_base::sync_with_stdio(false), cin.tie(nullptr);
                        <start>
                        return 0;
                    }
                ]], { start = i(1, ':'), include = t('#include <bits/stdc++.h>') }
            )),

            snippet('tc', fmt(
                [[
                    int T; cin >> T;
                    while(T--) {{
                        {}
                    }}
                ]], i(0, ':')
            )),

            snippet('fa', { t('for(auto &a: A) cin >> a;') }),

            snippet('fr', fmt(
                [[
                    for(int i = 0; i < {n}; ++i) {{
                        {scope}
                    }}
                ]], { n = i(1, '_'), scope = i(0, ':') }
            )),

            snippet('fn', c(1, {
                fmta(
                    [[
                        void <fn>(<param>) {
                            <body>
                        }
                    ]], { fn = i(1, '_'), param = i(2, '_'), body = i(3, ':') }
                ),
                fmta(
                    [[
                        <T> <fn>(<param>) {
                            <body>
                        }
                    ]], { T = i(1, 'T'), fn = i(2, '_'), param = i(3, '_'), body = i(4, ':') }
                )
            })),

            snippet('?', fmta(
                [[
                    <cond> ? <yes> : <no>
                ]], { cond = i(1, '_'), yes = i(2, '_'), no = i(3, '_') }
            )),

            snippet('if', c(1, {
                fmt('if({cond}) {};', { cond = i(1), i(2) }),
                fmta(
                    [[
                        if(<cond>) {
                            <>
                        }
                    ]], { cond = i(1), i(2, ':') }
                )
            })),

            snippet('ife', fmta(
                [[
                    if(<cond>) {
                        <ifbody>
                    } else {
                        <elsebody>
                    }
                ]], { cond = i(1), ifbody = i(2, '// statement'), elsebody = i(3, '// statement') }
            )),

            snippet('out', fmt(
                [[
                    cout << {} << "\n";
                ]], i(0)
            )),

            snippet('in', c(1, {
                fmt('{type} {}, {}; cin >> {} >> {};', {
                    type = i(1, 'T'),
                    i(2, 'A'),
                    i(3, 'B'),
                    rep(2),
                    rep(3),
                }),
                fmt('{type} {}, {}, {}; cin >> {} >> {} >> {};', {
                    type = i(1, 'T'),
                    i(2, 'A'),
                    i(3, 'B'),
                    i(4, 'C'),
                    rep(2),
                    rep(3),
                    rep(4),
                }),
                fmt('{type} {}, {}, {}, {}; cin >> {} >> {} >> {} >> {};', {
                    type = i(1, 'T'),
                    i(2, 'A'),
                    i(3, 'B'),
                    i(4, 'C'),
                    i(5, 'D'),
                    rep(2),
                    rep(3),
                    rep(4),
                    rep(5),
                }),
            })),

            snippet('bp', c(1, {
                fmt('__builtin_popcount({})', i(1)),
                fmt('__builtin_popcountl({})', i(1)),
                fmt('__builtin_popcountll({})', i(1))
            }))
        })
    end
}
