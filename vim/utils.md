# VIM

## Generally helpful stuff

- Open a file for editing   `:e path/to/file.txt`
- Return to Normal mode     `ESC   or <CTRL>+C`

## Navigating around text

- Jump to the first line    `gg`
- Jump to the last line     `G`

## Entering Text

- Insert text before cursor     `i`
- Insert text after cursor      `a`

## Working with multiple files

- Open a file in a horizontal split   `:sp path/to/file.txt`
- Open a file in a vertical split     `:vsp`
- Move to next window pane            `<CTRL>w w`

## Searching

- Search for a word                           `/<word>`
- Go to next match                            `n`
- Find and replace on line                    `:s/<find>/<replace>`
- Find and replace globally                   `:%s/<find>/<replace>//gc`
- Go to first quote, replace text in quotes:  `ci"`

## Manipulating text

- cut the current line                `dd`
- copy the current line               `yy`
- paste below current line            `p`
- paste above current line            `P`
- Remove the character under cursor   `x`
- Remove the character before cursor  `X`
- Delete the word under cursor        `de`
- Delete to the end of the line       `d$`

### Line manipulation

- Remove five lines starting here     `5dd`
- Copy five lines starting here       `5yy`

### Indent

- indent this line                    `>>`
- indent five lines starting here     `5>>`

### Replace

- Replace mode (overtype)             `r`

## Visual Advanced selection

- Visual mode                         `v`
- Visual Line mode                    `V`
- Visual Block mode                   `<CTRL>v`

## Commands

- Open a shell                            `:sh`
