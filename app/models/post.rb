class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: ["Fiction", "Non-Fiction"]

  validate :clickbait

  private 

  def clickbait
    return if 
      title.blank?

      keywords = ["Won't Believe", "Secret", "Top", "Guess"]
    
    unless
      keywords.any? { |keyword| title.include?(keyword) }
      errors.add(:title, "is not clickbaity enough")

    end
  end


end
