require 'minitest/autorun'
require 'minitest/pride'

require "./lib/binary_translator.rb"

class BinaryTranslatorTest < Minitest::Test

  def test_does_it_exist
    bt = BinaryTranslator.new
    assert_instance_of BinaryTranslator, bt
  end

  def test_if_it_translates_single_words
    bt = BinaryTranslator.new
    assert_equal "000001", bt.translate("a")
    assert_equal "001000000101001100001100001111", bt.translate("hello")
  end

  def test_if_translates_capitalized_to_same
    bt = BinaryTranslator.new
    assert_equal "000001", bt.translate("A")
    assert_equal "001000000101001100001100001111", bt.translate("HeLlO")

  end

  def test_if_translates_spaces_to_six_zeros
    bt = BinaryTranslator.new
    assert_equal "000000", bt.translate(" ")
    assert_equal "001000000101001100001100001111000000000001", bt.translate("Hello A")
  end

  def test_if_translates_non_character_to_nothing
    bt = BinaryTranslator.new
    assert_equal "", bt.translate("!@{$#%^&*()}")
    assert_equal "001000000101001100001100001111000000010111001111010010001100000100", bt.translate("Hello World!")
  end

  def test_if_translates_non_character_to_nothing
    bt = BinaryTranslator.new
    assert_equal "a", bt.translate_to_text("000001")
    assert_equal "hello world", bt.translate_to_text("001000000101001100001100001111000000010111001111010010001100000100")
  end


end
