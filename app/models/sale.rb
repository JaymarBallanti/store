class Sale < ActiveRecord::Base

	include PgSearch
	multisearchable :against => [:item_name, :barcode]

	def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
   Item.where("item_name ilike ? or barcode like ?", "%#{query}%", "%#{query}%")
  end

end
