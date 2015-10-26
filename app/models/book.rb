class Book < ActiveRecord::Base

  validates :title, presence: true,
             length: { :minimum=> 5, :maximum => 140, :message => "O título deve ter entre 5 e 140 caracteres."}

  def self.search(search)
     where("title LIKE ?", "%#{search.to_s.downcase}%")
  end

end
