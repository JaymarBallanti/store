class Item < ActiveRecord::Base
	belongs_to :sale
	validates_presence_of :item_name
	validates_presence_of :barcode
	validates_presence_of :quantity
	validates_presence_of :cost_price
	validates_presence_of :retail_price
	validates_presence_of :date_delivered
	validates_numericality_of :cost_price, :message=>"must be numeric"
	validates_numericality_of :retail_price, :message=>"must be numeric"

	include PgSearch
	multisearchable :against => [:item_name, :barcode]


  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
   Item.where("item_name ilike ? or barcode like ?", "%#{query}%", "%#{query}%")
  end
end
