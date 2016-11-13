class Author < ActiveRecord::Base

  def name
    if first_name != nil && last_name != nil
      first_name + ' ' + last_name
    end
  end

  validates :first_name, presence: true
  validates :last_name, presence: true

end
