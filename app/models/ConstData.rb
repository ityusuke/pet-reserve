# Singletonは、Mix-inしたクラスのinstanceは同一のインスタンスを返すようになる
require 'singleton'

# シングルトン
class ConstData
  # instanceメソッドが定義され、newメソッドがprivateに設定される
  include Singleton
  attr_accessor :pet_types
  attr_accessor :hospitals
  attr_accessor :diseases

  def initialize
    @pet_types = nil
    @hospitals = nil
    @diseases = nil
  end
end