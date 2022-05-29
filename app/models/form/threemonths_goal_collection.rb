class Form::ThreemonthsGoalCollection < Form::Base
  FORM_COUNT = 1

  def initialize(attributes = {})
    super attributes
    self.threemonths_goals = FORM_COUNT.times.map { ThreemonthsGoal.new() } unless self.threemonths_goals.present?
  end
  
  # 上でsuper attributesとしているので必要
  def threemonths_goals_attributes=(attributes)
    self.threemonths_goals = attributes.map { |_, v| ThreemonthsGoal.new(v) }
  end

  def valid?
    valid_threemonths_goals = target_threemonths_goals.map(&:valid?).all?
    super && valid_threemonths_goals
  end
  
  attr_accessor :threemonths_goals

  # コレクションをDBに保存するメソッド
  def save
    is_success = true
    ActiveRecord::Base.transaction do
      threemonths_goals.each do |result|
        # バリデーションを全てかけたいからsave!ではなくsaveを使用
        is_success = false unless result.save
      end
      # バリデーションエラーがあった時は例外を発生させてロールバックさせる
      raise ActiveRecord::RecordInvalid unless is_success
    end
    rescue
      p 'エラー'
    ensure
      return is_success
  end
end

