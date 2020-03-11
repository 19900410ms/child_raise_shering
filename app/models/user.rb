class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :nickname, :prefecture_id, :age, :gender, :city, presence: true
  has_many  :accepts,  dependent: :destroy
  has_many  :requests, dependent: :destroy
  has_many  :messages, dependent: :destroy
  has_many  :rooms,    dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
