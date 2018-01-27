require "./rot26/*"

# TODO: Write documentation for `Rot26`
module ROT26

  ROTATE = 'z' - 'a' + 1

  ## Encrypt using any amount.
  ## Warning: Please carefully choose the right amount.
  ## New users are recommended to use rot26 for the best security.
  def self.encrypt_any(input : String, amount : Int32)
    input.chars.map do |c|
      if 'a' <= c <= 'z'
        (((c.ord - 'a'.ord + amount) % ROTATE) + 'a'.ord).chr
      elsif 'A' <= c <= 'Z'
        (((c.ord - 'A'.ord + amount) % ROTATE) + 'A'.ord).chr
      else
        c
      end
    end.join
  end

  ## Decrypt using any amount.
  ## Warning: Please carefully choose the right amount.
  ## New users are recommended to use rot26 for the best security.
  def self.decrypt_any(input : String, amount : Int32)
    input.chars.map do |c|
      if 'a' <= c <= 'z'
        (((c.ord - 'a'.ord + ROTATE - amount) % ROTATE) + 'a'.ord).chr
      elsif 'A' <= c <= 'Z'
        (((c.ord - 'A'.ord + ROTATE - amount) % ROTATE) + 'A'.ord).chr
      else
        c
      end
    end.join
  end

  ## Encrypts the input using ROT26
  def self.encrypt(input : String)
    self.encrypt_any(input, 26)
  end

  ## Decrypts the input using ROT26
  def self.decrypt(input : String)
    self.decrypt_any(input, 26)
  end

  ## Encrypts the input using rot13.
  ## Warning: Security researchers have managed to crack rot13.
  ## New users are recommended to use rot26 for the best security.
  def self.encrypt_rot13(input : String)
    self.encrypt_any(input, 13)
  end

  ## Decrypts the input using rot13.
  ## Warning: Security researchers have managed to crack rot13.
  ## New users are recommended to use rot26 for the best security.
  def self.decrypt_rot13(input : String)
    self.decrypt_any(input, 13)
  end

end
