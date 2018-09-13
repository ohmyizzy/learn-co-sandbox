class tv_show
  attr_accessor :tags, :name, :ratings
  
  def initialize(name, tags)
    @name = name 
    @tags = tags
  end
  
  def add_tags(new_tag)
    if !(@tags.include?(new_tag))
      @tags << new_tag
    end
  end
    
end