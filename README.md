# dotfiles

## Install

**Non-Interactive**

To provision a new machine in a non-interactive way, you must provide values for all the templated variables in
`.chezmoi.toml.tmpl` via the `--promptString` or equivalent flags:

```shell
chezmoi init --apply "https://github.com/alloveras/dotfiles" --promptString "Email address=<email-address>"
```

**Note**: The left hand side of the `=` separator needs to match the prompt string as opposed to the data
key itself.

**Interactive**

To provision a new machine using the interactive prompt, simply run the `install.sh` script. It will install
`chezmoi` and ask for any required configuration variables.

```shell
./install.sh
```
