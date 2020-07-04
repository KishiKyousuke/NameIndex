require "./name_index.rb"
require "minitest/autorun"

class NameIndexTest < Minitest::Test
  def test_sort
    index = NameIndex.new(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])
    expect = [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ]
    assert_equal expect, index.create

    index2 = NameIndex.new(['ピレラ','ウエモト','ニシカワ', 'スズキ', 'ドウバヤシ', 'アイザワ', 'メヒア', 'タナカ', 'オオセラ'])
    expect = [['ア',['アイザワ', 'ウエモト', 'オオセラ']],['サ', ['スズキ']],['タ', ['タナカ', 'ドウバヤシ']],['ナ',['ニシカワ']],['ハ', ['ピレラ']],['マ', ['メヒア']]]
    assert_equal expect, index2.create
  end
end
