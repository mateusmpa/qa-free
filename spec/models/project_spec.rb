require 'rails_helper'

RSpec.describe Project, type: :model do
  
  let(:project_params) { {name:"teste",description: "validate"} }
  
  describe "Presence Validate" do
    
    it "save valid project" do
      project = Project.create (project_params)
      expect(project.persisted?).to be true
    end  
    
    it "do not save invalid project" do
      project = Project.create
      expect(project.persisted?).to be false
    end

    it "do not save whitout a name" do
      project = Project.new
      project.description = 'description'
      project.save
      expect(project.persisted?).to be false 
    end

    it "save whitout a description" do
      project = Project.new
      project.name = 'name'
      project.save
      expect(project.persisted?).to be true 
    end
  end
end

