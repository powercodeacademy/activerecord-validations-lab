class TitleValidator < ActiveModel::Validator
  def validate(title)
    unless title.email.match?(/flatironschool.com/)
      record.errors[:email] << "We're only allowed to have people who work for the company in the database!"
    end
  end
end
