class Web::BoardsController < Web::ApplicationController
  before_action :authenticate_user!
  def show
    raise "TestError"
    render react_component: 'TaskBoard', props: {}
  end
end
