#
# Created by ice1000 on 2018-03-12
#

import assert

function success()
end

assert.assert_equals(1, 1)
assert.assert_similar(1.0, 1.1, 0.2)
assert.assert_true(true)

assert.assert_fails([]() -> assert.assert_equals(1, 2))
assert.assert_fails([]() -> assert.assert_fails(success))
assert.assert_fails([]() -> assert.assert_true(false))
assert.assert_fails([]() -> assert.assert_similar(0.9, 1.2, 0.2))

assert.assert_null(success())
assert.assert_not_null(success)
