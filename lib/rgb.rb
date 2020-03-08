def to_hex(r,g,b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(h)
  r = h[1..2]
  g = h[3..4]
  b = h[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end
