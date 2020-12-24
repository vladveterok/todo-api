module Docs
  module V1
    module Projects
      extend Dox::DSL::Syntax

      document :api do
        resource 'Projects' do
          endpoint '/projects'
          group 'Projects'
        end
      end

      document :index do
        action 'Get projects'
      end

      document :create do
        action 'Create a project'
      end

      document :update do
        action 'Update a project'
      end

      document :destroy do
        action 'Delete a project'
      end
    end
  end
end
