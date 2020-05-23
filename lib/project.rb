class Project
  attr_accessor :backers,:title
  def initialize(title,backers=[])
    @backers =backers
    @title =title
  end
  
  def add_backer(backer)
    @backers << backer 
    backer.backed_projects << self
  end
end