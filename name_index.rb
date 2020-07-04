class NameIndex

  attr_reader :names, :kana_index
  def initialize(names)
    @names = names
    @kana_index =
      {'ア'=> [],'カ'=> [],'サ'=> [],'タ'=> [],'ナ'=> [],'ハ'=> [],'マ'=>[],'ヤ'=>[],'ラ'=>[],'ワ'=>[] }
  end

  def create
    names.sort.each do |name|
      case name.chars.first
      when /[ア-オ]/
        kana_index['ア'] << name
      when /[カ-コ,ガ-ゴ]/
        kana_index['カ'] << name
      when /[サ-ソ,ザ-ゾ]/
        kana_index['サ'] << name
      when /[タ-ト,ダ-ド]/
        kana_index['タ'] << name
      when /[ナ-ノ]/
        kana_index['ナ'] << name
      when /[ハ-ホ,バ-ボ,パ-ポ]/
        kana_index['ハ'] << name
      when /[マ-モ]/
        kana_index['マ'] << name
      when /[ヤ-ヨ]/
        kana_index['ヤ'] << name
      when /[ラ-ロ]/
        kana_index['ラ'] << name
      when /[ワ-ン]/
        kana_index['ワ'] << name
      end
    end
    kana_index.delete_if { |key,value| value.empty? }
    kana_index.map do |key, value|
      [key, value]
    end
  end
end

