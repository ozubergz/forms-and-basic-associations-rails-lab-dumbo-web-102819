class Song < ActiveRecord::Base

  # add associations here
  belongs_to :artist
  belongs_to :genre
  
  has_many :notes
  accepts_nested_attributes_for :notes

  #setter
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
  
  #getter method
  def artist_name
    self.artist ? self.artist.name : nil
  end
end
