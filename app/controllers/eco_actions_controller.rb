class EcoActionsController < ApplicationController
  before_action :set_eco_action, only: [:show, :edit, :update]

def index
    @eco_actions = Eco_action.all
  end

  # GET /eco_actions/1
  # GET /eco_actions/1.json
  def show
  end

  # GET /eco_actions/1/edit
  def edit
  end

  def new
  end


  # POST /eco_actions
  # POST /eco_actions.json
  def create
    @eco_action = Eco_action.create(user: current_user)
    redirect_to eco_action_path(@eco_action)
  end

  # PATCH/PUT /eco_actions/1
  # PATCH/PUT /eco_actions/1.json
  def update
    @eco_action.update(eco_actions_params)
    redirect_to eco_action_path(@eco_action)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eco_action
      @eco_action = Eco_action.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eco_action_params
      params.require(:eco_action).permit()
    end
end


