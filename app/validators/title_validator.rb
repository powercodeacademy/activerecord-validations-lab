class TitleValidator < ActiveModel::Validator
  def validate(record)
    if record.title.present?
      unless record.title.match?(/Won't Believe|Secret|Top [0-9]+|Guess/)
        record.errors.add(:title, "not clickbait")
      end
    end
  end
end
