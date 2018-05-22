class Post < ApplicationRecord
  belongs_to :user
  has_many :replies

  def already_replied
    x = false
    self.replies.each do |rep|
      if rep.user_id === current_user.id
        x = true
      end
    end
    x
  end


end
