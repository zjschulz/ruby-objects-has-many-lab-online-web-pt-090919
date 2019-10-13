class Author 

  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|x| x.author == self}
  end

  def add_post(x)
    x.author = self
  end

  def add_post_by_title(y)
    x = Post.new(y)
    add_post(x)
  end
  
  def self.post_count
    Post.all.count
  end
  
end