class TitleValidator < ActiveModel::Validator
  def validate(record)
    arr = [ /Won't Believe/,/Secret/,/Top/,/Guess/]
      if arr.none? { |rec| rec.match record.title}
        record.errors[:name] << "not sufficiently clickbait-y"
      end
  end
end