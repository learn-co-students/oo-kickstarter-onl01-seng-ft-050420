class Project
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
  end
end

# def back_project(project)
#     @backed_projects << project
#     project = Project.new(project)
#     project.add_backer(self)
#   end


#Notes for Self (Kelsey):
# be mindful of what we are passing in as argument
# in this case backer is a full NEW backer object that was already created.  Then we are calling on the backer a built in method that it already has called backed_projects, and pushing the project into that method 