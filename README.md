Minimal setup for testing astro lsp.

**Currently when using [anything].astro routes I am having formatting issues.**


# Steps to reproduce

## 1. Clone this minimal nvim config into your.config dir.

```
git clone https://github.com/aaronjconway/astro_config
```
Later we will run astro files using the test config

```
NVIM_APPNAME=ASTRO_CONFIG NEOVIM

```

## 2. Init basic Astro with typescript


```
npm create astro@latest

Empty: yes
Typescript: yes - strict

```
## 3. Add prettier and prettier-plugin-astro

```
npm i -D prettier prettier-plugin-astro

```

## 4. Add the recommend .prettierrc.mjs found here:
https://github.com/withastro/prettier-plugin-astro

```

// .prettierrc.mjs
/** @type {import("prettier").Config} */
export default {
  plugins: ['prettier-plugin-astro'],
  overrides: [
    {
      files: '*.astro',
      options: {
        parser: 'astro',
      },
    },
  ],
}

```

## 5 make a [page].astro file
test lsp in new astro file and no lsp
