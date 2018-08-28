class MembersController < ApplicationController


def show
  @member = current_user
end

end
