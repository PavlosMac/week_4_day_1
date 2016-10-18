require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordformatter')


class TestWordformatter < MiniTest::Test

  def setup
    text1 = 'gh4 399'
    text2 = 'all the pretty ladies'
    @wordformatter = Wordformatter.new(text1)
    @wordformatter2 = Wordformatter.new(text2)
   end

  def test_upcase
   result = @wordformatter.upcase
   assert_equal('GH4 399', result)
  end

  def test_camel_casing_strings
    result = @wordformatter2.camel_case
    expected = 'AllThePrettyLadies'
    assert_equal(expected, result)
  end

end