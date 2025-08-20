class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless record.title && includes_clickbait?(record.title)
      record.errors.add(:title, "Not Click-baity Enough")
    end
  end

  private

  def includes_clickbait?(title)
    phrases = ["Won't Believe", "Secret", "Top", "Guess"]
    phrases.any? { |phrase| title.include?(phrase) }
  end
end
