class Player < ActiveRecord::Base
  self.table_name = 'Master'
  self.primary_key = 'playerID'

  def self.search(search_nameFirst, search_nameLast)
    return scoped unless search_nameFirst.present? || search_nameLast.present?
    where(['nameFirst LIKE ? AND nameLast LIKE ?', "%#{search_nameFirst}%", "%#{search_nameLast}%"])
  end 
   
end
