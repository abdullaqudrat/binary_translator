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


  end

  def test_if_translates_spaces_to_six_zeros


  end

  def test_if_translates_non_character_to_nothing


  end



end
