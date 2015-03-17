class Item < ActiveRecord::Base
	belongs_to :Type

def self.search(title = nil, relation, type_id)
  	where("title LIKE ? #{relation} type_id = #{type_id}", "%#{title}%")
end
end
