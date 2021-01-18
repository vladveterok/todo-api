module Docs
  module Signin
    extend Dox::DSL::Syntax

    document :api do
      resource 'Signin' do
        endpoint '/signin'
        group 'Signin'
      end
    end

    document :create do
      action 'Signin a user'
    end

    document :destroy do
      action 'Signout a user'
    end
  end
end
