require 'pry'
class Post
  
  attr_accessor :author
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
   self.author.name unless self.author.nil?
   #if self.author.nil?
     #return nil
   #else
     #self.author.name
   #end
  end
  
end