class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def actors_list
    self.actors.map do |e| 
        return "#{e.first_name} #{e.last_name}"
    end
  end
end#{self.actors.last_name}