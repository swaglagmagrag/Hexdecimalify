local a = {255, 255, 255}
local b = "ABCDEF"
local c = {{}, {}, {}}
local d = {}
local hex = ""
for k, v in ipairs(a) do
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
print(hex)
