local assert = require('assert')
local fileno = require('io.fileno')

local FILENAME = 'testfile.txt'
os.remove(FILENAME)
local f = assert(io.open(FILENAME, 'w'))

-- test that returns n greater than 2
assert.greater(fileno(f), 2)

-- test that returns -1 after closed
f:close()
assert.equal(fileno(f), -1)

-- test that throws an error
local err = assert.throws(fileno, {})
assert.match(err, "#1 .+ [(]FILE%* expected,", false)

