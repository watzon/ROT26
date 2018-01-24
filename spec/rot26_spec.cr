require "./spec_helper"

describe ROT26 do
  # TODO: Write tests

  it "Encrypts successfully using ROT26" do
    message = "Hello, world"
    encrypted = ROT26.encrypt(message)
    encrypted.should eq "Hello, world"
  end

  it "Decrypts successfully using ROT26" do
    message = "Hello, world"
    encrypted = ROT26.decrypt(message)
    encrypted.should eq "Hello, world"
  end

  it "Encrypts successfully using ROT13" do
    message = "Hello, world"
    encrypted = ROT26.encrypt_rot13(message)
    encrypted.should eq "Uryyb, jbeyq"
  end

  it "Decrypts successfully using ROT13" do
    message = "Uryyb, jbeyq"
    encrypted = ROT26.decrypt_rot13(message)
    encrypted.should eq "Hello, world"
  end
end
