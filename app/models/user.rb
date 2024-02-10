class User < ApplicationRecord
       has_many :prototypes
       has_many :comments, dependent: :destroy
       # Include default devise modules. Others available are:
       # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
       devise :database_authenticatable, :registerable,
              :recoverable, :rememberable, :validatable
     
       # プロフィール、職業、役職の空白チェック
       validates :profile, :occupation, :position, presence: true
     end
     