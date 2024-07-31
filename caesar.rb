class Caesar_cipher
  @@UPPERCASE_LETTERS = ("A".."Z").to_a
  @@LOWERCASE_LETTERS = ("a".."z").to_a

  attr_accessor :key

  def initialize(key)
    @key = key
  end

  def encrypt(text)
    encrypted = ""
    text.split("").to_a.each do |x|
      if @@UPPERCASE_LETTERS.include? x
        encrypted += @@UPPERCASE_LETTERS[ (@@UPPERCASE_LETTERS.index(x) + key) % 26]
      elsif @@LOWERCASE_LETTERS.include? x
        encrypted += @@LOWERCASE_LETTERS[ (@@LOWERCASE_LETTERS.index(x) + key) % 26]
      else
        encrypted += x
      end
    end
    return encrypted
  end
end

puts 'enter phrase: '
user_input = gets.chomp
puts 'enter key: '
user_key = gets.chomp.to_i

cipher = Caesar_cipher.new(user_key)
puts cipher.encrypt("#{user_input}")


