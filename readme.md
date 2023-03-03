# Bulma completion source for nvim-cmp

Bulma class-name completion source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).

Entries updated per Bulma v0.9.4.

## Installation

Using [Packer](https://github.com/wbthomason/packer.nvim):

```lua
use({
  'garyhurtz/cmp-bulma.nvim',
  config = {
    require('cmp_bulma').setup()
  }
})
```

## Setup

Add this source to your `nvim-cmp` configuration:

```lua
cmp.setup({
  sources = cmp.config.sources({
        -- other sources...
        { name = "bulma" }
    )
})
```

## Configuration

By default, this source is available for the following file types:

- html, jinja.html

- css, sass, scss, less

- javascript, typescript

Additional file types can be added using _option.filetypes_:

```lua
cmp.setup({
  sources = cmp.config.sources({
    -- other sources...
    {
        name = "bulma"
        option = {
            filetypes = {
                "jinja.html",
                "markdown",
                ...
            },
        }
    },
  })
})
```
