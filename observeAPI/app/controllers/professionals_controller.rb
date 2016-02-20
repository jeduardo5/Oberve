class ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show, :update, :destroy]

  # GET /professionals
  # GET /professionals.json
  def index
    @professionals = Professional.all

    render json: @professionals
  end

  # GET /professionals/1
  # GET /professionals/1.json
  def show
    render json: @professional
  end

  # POST /professionals
  # POST /professionals.json
  def create
    @professional = Professional.new(professional_params)

    if @professional.save
      render json: @professional, status: :created, location: @professional
    else
      render json: @professional.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /professionals/1
  # PATCH/PUT /professionals/1.json
  def update
    @professional = Professional.find(params[:id])

    if @professional.update(professional_params)
      head :no_content
    else
      render json: @professional.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professionals/1
  # DELETE /professionals/1.json
  def destroy
    @professional.destroy

    head :no_content
  end

  private

    def set_professional
      @professional = Professional.find(params[:id])
    end

    def professional_params
      params.require(:professional).permit(:userid, :professionid)
    end
end
