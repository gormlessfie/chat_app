class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  validates :username, presence: true,
                       length: { in: 3..12 },
                       format: { with: /\A[a-zA-Z0-9]*\Z/, message: 'only allow letters and numbers'}
  
  validates :role, presence: true, inclusion: { in: %w(chatter admin) }

  has_many :messages
end
