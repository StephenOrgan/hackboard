class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :posts
  has_many :comments

  validates :email, presence: true, uniqueness: true, :format => { :with => /^([A-Za-z0-9_\+\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/,
    :message => "Only valid email allowed" }
  validates :name, presence: true


end
