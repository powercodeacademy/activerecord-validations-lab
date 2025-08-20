class Post < ApplicationRecord
  include ActiveModel::Validations
  validates :title, presence: true
  validates :content, presence: true, length: {minimum: 250}
  validates :summary, presence: true, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates_with TitleValidator
end
