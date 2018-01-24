# ROT26

This is a Crystal implementation of the ROT26 encryption algorithm based on @jD91mZM2's rust project at [https://github.com/jD91mZM2/rot26](jD91mZM2/rot26).

> ROT13 ("rotate by 13 places", sometimes hyphenated ROT-13) is a letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet.
> Instead of only rotating 13 places, ROT26 rotates twice as many characters in the alphabet and is therefore twice as secure.

Pure Crystal rewrite of the rot26 algorithm.  
Even maintains support for rot13 and *any* rot, with friendly helpful comments advising you to just stick to rot26.

> ROT26 encryption & decryption is very complex and requires a powerful, purpose-built super-computer to perform all the calculations... which we have created.
> So, to encourage more developers to use ROT26 in their mobile, web and PC software applications we are offering a very easy to use and totally free ROT26 encryption and decryption REST web service.

This is no longer true.  
That and all the following are features now possible thanks to Crystal:

 - Complete unicode support. Disregards any non-alphabetical symbols! (was probably possible before actually)
 - Unit tests.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  rot26:
    github: watzon/rot26
```

# Usage

Simply call `ROT26.encrypt` on any string. For example:

```Crystal
ROT26.encrypt("hello") # => "hello"
```

to decrypt, use `ROT26.decrypt`

```Crystal
ROT26.decrypt("hello") # => "hello"
```

## Contributing

1. Fork it ( https://github.com/watzon/rot26/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [watzon](https://github.com/watzon) Chris Watson - creator, maintainer
