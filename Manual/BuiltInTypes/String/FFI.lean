import Verso.Genre.Manual

import Manual.Meta
open Manual.FFIDocType

open Verso.Genre Manual

set_option pp.rawOnError true


#doc (Manual) "FFI" =>

{docstring String.csize}

:::ffi "lean_string_object" kind := type
```
typedef struct {
    lean_object m_header;
    /* byte length including '\0' terminator */
    size_t      m_size;
    size_t      m_capacity;
    /* UTF8 length */
    size_t      m_length;
    char        m_data[0];
} lean_string_object;
```
TODO xref to runtime representation above
:::

:::ffi "lean_is_string"
````
bool lean_is_string(lean_object * o)
````

Returns `true` if `o` is a string, or `false` otherwise.
:::

:::ffi "lean_to_string"
````
lean_string_object * lean_to_string(lean_object * o)
````
Performs a runtime check that `o` is indeed a string. If `o` is not a string, an assertion fails.
:::
