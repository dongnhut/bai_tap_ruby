class MagicString < String
  def +@
    upcase
  end

  def -@
    downcase
  end

  def !
    swapcase
  end

  def ~
    # Do a ROT13 transformation - http://en.wikipedia.org/wiki/ROT13
    tr 'A-Za-z', 'N-ZA-Mn-za-m'
  end
end

str = MagicString.new("This is my string")
p +str
p !str
p (not str)
p ~str
p +~str
p !(~str)