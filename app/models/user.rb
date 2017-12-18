class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :clubs, :dependent => :destroy
  has_many :reviews, :dependent => :destroy

  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  validates :name,  :presence => {:message => 'Не може бути пустим'},
                    :length => {:minimum => 2, :maximum => 30}

  validates :last_name,  :presence => {:message => 'Не може бути пустим'},
                    :length => {:minimum => 2, :maximum => 30}

   validates :email,
                    :uniqueness => true,
                    :format => { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }


  validates :phone, :birthday, presence: { message: "Не може бути пустим" }

  validates :terms, acceptance: true


end
