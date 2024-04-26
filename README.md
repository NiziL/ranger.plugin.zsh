# ranger.plugin.zsh

Ranger is a tiny plugin to provide prompt element for [ranger](https://github.com/ranger/ranger).  
Especially, it is used to quickly have an idea of the current `RANGER_LEVEL`, displaying nothing when the environment variable is unset, something when it is equals to 1, and something else when it is greater than 1.

## Installation

You simply have to copy the `ranger.plugin.zsh` file into a `custom/plugins/ranger` directory of your [oh-my-zsh](https://ohmyz.sh/) installation.

For most installation, you could simply do
```bash
git clone https://github.com/NiziL/ranger.plugin.zsh ~/.oh-my-zsh/custom/plugins/ranger
```

## Usage

The plugin provides a `ranger_prompt` function you can use to customize `PROMPT`.

It also defines few configuration variables:

| Name | Description | Default |
| ---- | ----------- | ------- |
| ZSH_THEME_RANGER_ONE_PROMPT_PREFIX | Ranger prompt prefix if `RANGER_LEVEL` == 1 | [ |
| ZSH_THEME_RANGER_ONE_PROMPT_SUFFIX | Ranger prompt suffix if `RANGER_LEVEL` == 1 | ] |
| ZSH_THEME_RANGER_ONE_BODY | Ranger prompt body if `RANGER_LEVEL` == 1 | ranger |
| ZSH_THEME_RANGER_MANY_PROMPT_PREFIX | Ranger prompt prefix if `RANGER_LEVEL` > 1 | [! |
| ZSH_THEME_RANGER_MANY_PROMPT_SUFFIX | Ranger prompt suffix if `RANGER_LEVEL` > 1 | !] |
| ZSH_THEME_RANGER_MANY_BODY | Ranger prompt body if `RANGER_LEVEL` > 1 | ranger |
