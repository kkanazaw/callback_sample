class User < ActiveRecord::Base
  has_many :photos
  has_one :event
  after_save :update_event
  after_destroy :update_event
  
  protected
  def update_event
    self.event.touch if !self.event.nil? && self.event.deleted_at.nil?
  end
end
