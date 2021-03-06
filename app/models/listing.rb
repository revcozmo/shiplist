class Listing < ActiveRecord::Base
  #Has a many to one relationship with cat and subcat
  belongs_to :category
  belongs_to :subcategory
  #Each listing has a user associated with it
  belongs_to :user

  def self.search(search)
    if search
      #ONLY DOES TITLE AND DESCRIPTION FOR NOW
      self.where('title LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%")
    else
      self.all
    end
  end
end
