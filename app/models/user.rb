class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :rememberable, :trackable

  has_many :documents

  has_many :documents_viewed, through: :user_document_associations, source: :document
  has_many :user_document_associations, dependent: :destroy
end
