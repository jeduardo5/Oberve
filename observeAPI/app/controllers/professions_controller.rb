class ProfessionsController < ApplicationController 
  before_action :set_profession, only: [:show, :update, :destroy]

  # GET /professions
  # GET /professions.json
  def index
    @professions = Profession.all

    render json: @professions
  end

  # GET /professions/1
  # GET /professions/1.json
  def show
    render json: @profession
  end

  # POST /professions
  # POST /professions.json
  def create
    @profession = Profession.new(profession_params)

    if @profession.save
      render json: @profession, status: :created, location: @profession
    else
      render json: @profession.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /professions/1
  # PATCH/PUT /professions/1.json
  def update
    @profession = Profession.find(params[:id])

    if @profession.update(profession_params)
      head :no_content
    else
      render json: @profession.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professions/1
  # DELETE /professions/1.json
  def destroy
    @profession.destroy

    head :no_content
  end

  private

    def set_profession
      @profession = Profession.find(params[:id])
    end

    def profession_params
      params.require(:profession).permit(:prof_id, :name)
    end
end
