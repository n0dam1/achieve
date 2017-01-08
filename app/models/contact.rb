class Contact < ActiveRecord::Base
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX }
  validates :content, presence: true
end
