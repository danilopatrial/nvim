local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),

    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    }),

    completion = {
        keyword_length = 1, -- Minimum chars before showing completion
    },

    window = {
        --completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    formatting = {
        fields = { "abbr", "kind" },
        format = function(entry, vim_item)
            -- Trim the text to make it smaller
            vim_item.abbr = string.sub(vim_item.abbr, 1, 30) -- Max 30 chars
            return vim_item
        end,
    },

    performance = {
        max_view_entries = 10, -- Show max 10 entries in the popup
    },
    

    sorting = {
        priority_weight = 2,
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,

            -- Custom comparator to prioritize certain completion kinds
            function(entry1, entry2)
                local priority = {
                    [cmp.lsp.CompletionItemKind.Snippet]  = -1,
                    [cmp.lsp.CompletionItemKind.Text]     = 0,
                    [cmp.lsp.CompletionItemKind.Variable] = 1,
                    [cmp.lsp.CompletionItemKind.Function] = 2,
                    [cmp.lsp.CompletionItemKind.Method]   = 3,
                    [cmp.lsp.CompletionItemKind.Class]    = 4,
                }

                local kind1 = priority[entry1:get_kind()] or 0
                local kind2 = priority[entry2:get_kind()] or 0
                return kind1 > kind2
            end,

            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
})

