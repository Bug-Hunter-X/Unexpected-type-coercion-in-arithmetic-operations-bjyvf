local function foo(x)
  if x == nil then return nil end
  if type(x) == "boolean" then
    if x then return true else return false end
  elseif type(x) == "number" then
    return x + 1
  else
    error("Invalid input type")
  end
end

print(foo(nil))    -- Output: nil
print(foo(5))     -- Output: 6
print(foo(true))  -- Output: true
print(foo(false)) -- Output: false