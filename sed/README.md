# sed

## Brief

`sed` is a stream editor, that is used for filtering and transforming text.  

## Flags

`i` - case insensitive  
`g` - global  
`w` - write edited lines

## Commands

---
### Substitute

Substitute all "God" occurrences to "Devil":
``` sh
#! bin/bash

sed 's/God/Devil/' text_file.txt
```

By default, sed changes only the first occurrence of the substring in the line.  
To override this behavior, use 'g' flag.s.
``` sh
#! bin/bash

sed 's/God/Devil/g' text_file.txt
```

It is possible to change only the seconds occurrence in a line.  
Lines with only one occurrence of "God" will be not changed.  
Any other number can be used instead of 2. 
``` sh
#! bin/bash

sed 's/God/Devil/2' text_file.txt
```

edited_lines.txt will contain only the lines effected by sed.  
``` sh
#! bin/bash

sed 's/God/Devil/gw edited_lines.txt' text_file.txt
```

---

### Delete

Delete all the lines that are containing the "God" in them:
``` sh
#! bin/bash

sed '/God/d' text_file.txt
```

Delete all the line that are starting with "God":
``` sh
#! bin/bash

sed '/^God/d' text_file.txt
```

Delete all the lines that are ending with "World":
``` sh
#! bin/bash

sed '/World$/d' text_file.txt
```

Delete all the empty lines (Start equals End):  
``` sh
#! bin/bash

sed '/^$/d' text_file.txt
```