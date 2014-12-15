class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :rememberable, :trackable

  has_many :documents
  belongs_to :filiere
  belongs_to :parcours
  belongs_to :option
  belongs_to :lv2

  validates :admin, presence: true
end
