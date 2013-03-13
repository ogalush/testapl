# coding: utf-8
#-- ↑画面へ日本語表示するために、ソース言語をutf-8と宣言する。

class HelloWorldController < ApplicationController
  def index
    #-- バリデートクラス呼び出し(app/models/validate)
    vali = new Validate()
    
  end
  def index2
   #-- インスタンス変数で、画面へ変数を渡すことができる。(@付き)
   @msg = 'おがっぷ'  #-- 画面表示
   print 'おがっぷ'   #-- コンソールへの表示（デバッグ用）
  end
end
