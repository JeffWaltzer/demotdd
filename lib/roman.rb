class Roman

  TRANSLATE = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'D' => 500,
      'L' => 50,
      'C' => 100,
      'M' => 1000

  }

  def self.convert(roman_string)
    sum = 0
    last = 9999999
    roman_string.each_char do |char|
      value = TRANSLATE[char]
      sum+= value
      if value > last
        sum -= last * 2
      end
      last = value
    end
    sum
  end
end
