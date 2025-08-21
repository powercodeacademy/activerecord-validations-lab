class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"] }
  validate :clickbait_title

     def clickbait_title 
      clickbaits = ["Won't Believe", "Secret", "Top [number]", "Guess"]
      unless clickbaits.any?{ |clickbait| title.to_s.include?(clickbait) }
      errors.add(:title, "Not A Title!")
    end
  end
end
