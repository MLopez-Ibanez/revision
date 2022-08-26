# revision: A LaTeX package to suggest editions and add comments.

## Options

  * `todonotes`: Use package `todonotes` to create comments instead of footnotes.
  * `inline` : make comments appear inline instead of footnotes.
  * `hide=[before|after]`: hide comments and keep additions (`hide=before`) or
    deletions (`hide=after`). Just using `hide` is equivalent to `hide=before`.
     
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

Example:

```latex
\newrevisor{manuel}{violet!75} 
% Creates lowercase \manuel{}{} and uppercase \MANUEL{} and \MANUEL*{} (inline version)
\hiderevisor{manuel} % Modifies the generated commands as described above.
```

Pull requests are welcome.
