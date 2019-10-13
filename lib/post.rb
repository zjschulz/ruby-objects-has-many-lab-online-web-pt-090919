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
    if @author.nil?
      @author.name 
    elsif self.author == nil
    return nil
    end
  end
  
  
  
end