local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "goimports",
    method = FORMATTING,
    filetypes = { "go" },
    generator_opts = {
        command = "goimports",
        args = { "-srcdir", "$DIRNAME" },
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
