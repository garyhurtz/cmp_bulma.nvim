# Bulma completion source for nvim-cmp

Bulma class-name completion source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).

Entries updated per Bulma v0.9.4.

## Installation and Setup

Using [Packer](https://github.com/wbthomason/packer.nvim):

```lua
use({
  'garyhurtz/cmp_bulma.nvim',
  config = function()
    require('cmp_bulma'):setup()
  end
})
```

then

```lua
require("cmp").setup({
  sources = {
        -- other sources...
        {
            name = "bulma",
            option= {
                -- insert configuration here
            }
        }
    )
})
```

With [lazy.nvim](https://github.com/folke/lazy.nvim) setup is something like:

```lua
require("lazy").setup({
    {
        "hrsh7th/nvim-cmp",
        opts = {
            sources = {
                ...
                {
                    name = "bulma",
                    option = {
                        -- insert configuration here
                    },
                },
            },
        },
    },
    {
        'garyhurtz/cmp_bulma.nvim',
        init = {
            require('cmp_bulma'):setup()
        }
    }
})
```


## Configuration

By default, this source is available for the following file types:

- html, jinja.html

- css, sass, scss, less

- javascript, typescript

Additional file types can be added using _option.filetypes_:

```lua
option = {
    filetypes = {
        "jinja.html",
        "markdown",
        ...
    },
}
```
