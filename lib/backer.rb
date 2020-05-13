require 'pry'
class Backer
  attr_accessor :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    backed_projects << project
    project.backers << self 
  end
  
  
end

# #adds self to Project.new and add_backer(backer)

# describe 'Backer - More Advanced #back_project' do
#   it 'also adds the backer to the project\'s backers array' do
#     logan = Backer.new("Logan")
#     hoverboard = Project.new("Awesome Hoverboard")
#     logan.back_project(hoverboard)

#     # If by this point, the project knows about a new backer, where does that mean
#     # some more magic needs to happen? There's really only one place it can happen.
#     expect(hoverboard.backers).to include(logan)
#   end
# end