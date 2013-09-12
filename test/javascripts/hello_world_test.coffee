test "this should pass", ->
  equal "Hello", "Hello", "Hello is Hello"

test "this should fail", ->
  equal "Hello", "World", "Hello is not World"
