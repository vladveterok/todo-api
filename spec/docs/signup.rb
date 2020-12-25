module Docs
  module Signup
    extend Dox::DSL::Syntax

    document :api do
      resource 'Signup' do
        endpoint '/signup'
        group 'Signup'
      end
    end

    document :create do
      action 'Signup a user'
    end
  end
end
