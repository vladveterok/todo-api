module Docs
  module Refresh
    extend Dox::DSL::Syntax

    document :api do
      resource 'Refresh' do
        endpoint '/refresh'
        group 'Refresh'
      end
    end

    document :create do
      action 'Refresh users access'
    end
  end
end
