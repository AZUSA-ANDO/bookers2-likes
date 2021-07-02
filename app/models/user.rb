class User < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  attachment :profile_image, destroy: false

  validates :introduction, presence: false, length: { maximum: 50 } # 自己紹介の最高文字数は50文字
  validates :name, length: {maximum: 20, minimum: 2}, uniqueness: true




end
