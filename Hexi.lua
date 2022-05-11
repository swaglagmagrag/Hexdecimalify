function get_hex(num)
  local b = "ABCDEF"
  local c = {{}, {}, {}}
  local d = {}
  local hex = ""
  for k, v in ipairs(num) do
    local d = v / 16
    local e = (d - math.floor(d))
    local f = e * 16
    local g = math.floor(d)
    local h = g / 16
    local i = h * 16
    table.insert(c[k], i)
    table.insert(c[k], f)
  end

  for k, v in ipairs(c) do
    for i = 1, #v do
      if v[i] > 9 then
        local j = v[i] - 9
        local k = b:sub(j,j)
        hex = hex .. k
      else
        hex = hex .. tostring(math.floor(v[i]))
      end
    end
  end
  return hex
end

local b = {math.random(1, 255), math.random(1, 255), math.random(1, 255)}
print(get_hex(b))
