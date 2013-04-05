class KindTeacher < ActiveRecord::Base
  attr_accessible :comment, :email, :name

  #-- バリデート
  validates :email, :presence => true
  validates :comment, :presence => true,
                      :length => { :minimum => 5 }
end
