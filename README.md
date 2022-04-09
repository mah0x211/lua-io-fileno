# lua-io-fileno

[![test](https://github.com/mah0x211/lua-io-fileno/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-io-fileno/actions/workflows/test.yml)
[![codecov](https://codecov.io/gh/mah0x211/lua-io-fileno/branch/master/graph/badge.svg)](https://codecov.io/gh/mah0x211/lua-io-fileno)

get the file descriptor from the lua file handle.


## Installation

```
luarocks install io-fileno
```

---


## fd = fileno( f )

get the file descriptor from the lua file handle.

**Parameters**

- `f:file`: lua file handle.

**Returns**

- `fd:integer`: the file descriptor.

**e.g.**

```lua
local fileno = require('io.fileno')
local f = assert(io.open('./test.txt', 'w'))

-- returns a file descriptor that greater than 0
print(fileno(f)) 

f:close()
-- returns -1
print(fileno(f))
```

