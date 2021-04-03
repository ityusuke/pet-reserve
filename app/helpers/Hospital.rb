# Singletonは、Mix-inしたクラスのinstanceは同一のインスタンスを返すようになる
require 'singleton'

# シングルトン
class Hospital
  # instanceメソッドが定義され、newメソッドがprivateに設定される
  include Singleton
  attr_accessor :hospitals

  def initialize
    @hospitals = nil
  end
end