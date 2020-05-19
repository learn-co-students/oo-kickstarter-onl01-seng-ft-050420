require 'pry'
class Backer

  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project) #takes project instance as arg.
    #add project to backer
    @backed_projects << project
    project.backers << self
    #add backer to @backer project array
    #how to access project @backers array? => project.backers
    #add this backer to project.backers.
    #try self.//// project.backers << self
  end

end
