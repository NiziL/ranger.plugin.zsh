# ranger.plugin.zsh

Ranger is a tiny plugin for [ranger](https://github.com/ranger/ranger) integration into oh-my-zsh.

It provides: 
- a `rr` function to automatically change the current directory when quitting ranger.
- a `ranger_prompt` function to customize your `PROMPT`, so you could quickly have an idea of the current `RANGER_LEVEL`.

## Installation

You simply have to copy the `ranger.plugin.zsh` file into a `custom/plugins/ranger` directory of your [oh-my-zsh](https://ohmyz.sh/) installation.

For most installation, you could simply do
```bash
git clone https://github.com/NiziL/ranger.plugin.zsh ~/.oh-my-zsh/custom/plugins/ranger
```

## configuration

The plugin relies on few configuration variables:

| Name | Description | Default |
| ---- | ----------- | ------- |
| ZSH_THEME_RANGER_ONE_PROMPT_PREFIX | Ranger prompt prefix if `RANGER_LEVEL` == 1 | [ |
| ZSH_THEME_RANGER_ONE_PROMPT_SUFFIX | Ranger prompt suffix if `RANGER_LEVEL` == 1 | ] |
| ZSH_THEME_RANGER_ONE_BODY | Ranger prompt body if `RANGER_LEVEL` == 1 | ranger |
| ZSH_THEME_RANGER_MANY_PROMPT_PREFIX | Ranger prompt prefix if `RANGER_LEVEL` > 1 | [! |
| ZSH_THEME_RANGER_MANY_PROMPT_SUFFIX | Ranger prompt suffix if `RANGER_LEVEL` > 1 | !] |
| ZSH_THEME_RANGER_MANY_BODY | Ranger prompt body if `RANGER_LEVEL` > 1 | ranger |
