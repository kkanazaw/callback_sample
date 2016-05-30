class Photo < ActiveRecord::Base
  belongs_to :user
  after_save :update_event
  after_destroy :update_event
  
  protected
  def update_event
    self.user.event.touch if !self.user.event.nil? && self.user.event.deleted_at.nil?
  end
end
