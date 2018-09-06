class EcoActionsController < ApplicationController
  before_action :set_eco_action, only: [:show, :edit, :update, :destroy]

  def index
    @survey = current_user.surveys.last
    @eco_actions = EcoAction.all
    @eco_actions = policy_scope(@eco_actions).order(created_at: :desc)
    authorize @eco_actions
  end

  # GET /eco_actions/1
  # GET /eco_actions/1.json
  def show
    @survey = current_user.surveys.last
    authorize @eco_action
  end

  # GET /eco_actions/1/edit
  def edit

    authorize @eco_action
  end

  def new
    @eco_action = EcoAction.new
    authorize @eco_action
  end

  def destroy
    @eco_action.destroy
    redirect_to eco_actions_path
    authorize @eco_action
  end

  # POST /eco_actions
  # POST /eco_actions.json
  def create

    @eco_action = EcoAction.new(eco_action_params)
    @eco_action.user = current_user

    if @eco_action.eco_impact?
    @eco_action.eco_scoring_total = @eco_action.eco_impact * @eco_action.eco_scoring_unit.to_i
    else
    @eco_action.eco_scoring_total = 0
    end

    if @eco_action.save
      redirect_to eco_action_path(@eco_action)
    else
      flash.now[:error] = "Something is wrong! try again"
      render :new
    end
    authorize @eco_action
  end

  # PATCH/PUT /eco_actions/1
  # PATCH/PUT /eco_actions/1.json
  def update
    @eco_action.update(eco_action_params)

    if @eco_action.eco_impact?
    @eco_action.eco_scoring_total = @eco_action.eco_impact * @eco_action.eco_scoring_unit.to_i
    else
    @eco_action.eco_scoring_total = 0
    end
    @eco_action.save

    if request.referer.include?('results_2')
      redirect_to results_2_user_path(current_user)
    else
      redirect_to eco_actions_path
    end
    authorize @eco_action
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eco_action
      @eco_action = EcoAction.find(params[:id])
    end

    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eco_action_params
      params.require(:eco_action).permit(:title, :description, :user, :photo, :eco_category, :eco_impact, :added_to_survey, :eco_scoring_total, :eco_scoring_unit)
    end
end

