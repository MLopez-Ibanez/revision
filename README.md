# revision: A LaTeX package to suggest editions and add comments.

## Options

  * `todonotes`: Use package `todonotes` to create comments instead of footnotes.
  * `inline` : make comments appear inline instead of footnotes or margin notes.
  * `hide=[before|after]`: hide all comments. Furthermore, either keep added text and hide deleted text (`hide=before`) or keep deleted text and hide added text (`hide=after`). Just using `hide` is equivalent to `hide=before`.
  * `soul`: Use package [soul](https://ctan.org/pkg/soul?lang=en) instead of [ulem](https://ctan.org/pkg/ulem?lang=en) for crossing out deleted text. This may be useful if a conflict with another package prevents using the [ulem](https://ctan.org/pkg/ulem?lang=en).
     
## Usage

This package defines 2 commands:

1. `\newrevisor{name}{color-for-insert}[color-for-delete]` where the first
   argument is the name of the revisor, second argument is color for additions
   and third optional argument is color for deletions. If the third argument is
   missing, the second argument is used for both additions and deletions.  See
   colornames in https://en.wikibooks.org/wiki/LaTeX/Colors . This command creates two new commands:
  
  * Lowercase `\name{text-to-delete}{text-to-insert}` for suggesting changes.
  
  * Uppercase `\NAME{text}` for adding comments. The starred version `\NAME*{text}` for the comment to be inline (useful for placing comments in footnotes, captions, tables, etc.)
  
2. `\hiderevisor{name}` Modifies the corresponding commands generated by `\newrevisor{name}` so that comments and suggested deletions are hidden and suggested additions are shown without coloring them.

## Example:

```latex
\newrevisor{manuel}{violet!75} 
% Creates lowercase \manuel{}{} and uppercase \MANUEL{} and \MANUEL*{} (inline version)
\hiderevisor{manuel} % Modifies the generated commands as described above.
```

For a more detailed example see: <https://github.com/MLopez-Ibanez/revision/blob/main/example.pdf>

