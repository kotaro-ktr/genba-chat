class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

  with_options presence: true do
    validates :name, :email
    validates :password, format: {with:  /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: '半角英数字で、アルファベットと数字を混ぜて下さい'}
  end  
end
