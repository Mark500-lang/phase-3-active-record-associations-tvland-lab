class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.each do |c|
        self.shows.map do |s| 
            if s.id == c.show_id
                return ["#{c.name} - #{s.name}"]
            end  
        end
    end
    
  end
end