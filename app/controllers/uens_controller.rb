class UensController < ApplicationController
  before_action :set_uen, only: [:show, :edit, :update, :destroy]

  # GET /uens
  # GET /uens.json
  def index
    @uens = Uen.all
  end

  # GET /uens/1
  # GET /uens/1.json
  def show
  end

  # GET /uens/new
  def new
    @uen = Uen.new
  end

  # GET /uens/1/edit
  def edit
  end

  # POST /uens
  # POST /uens.json
  def create
    @uen = Uen.new(uen_params)

    respond_to do |format|
      if @uen.save
        format.html { redirect_to @uen, notice: 'Uen was successfully created.' }
        format.json { render :show, status: :created, location: @uen }
      else
        format.html { render :new }
        format.json { render json: @uen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uens/1
  # PATCH/PUT /uens/1.json
  def update
    respond_to do |format|
      if @uen.update(uen_params)
        format.html { redirect_to @uen, notice: 'Uen was successfully updated.' }
        format.json { render :show, status: :ok, location: @uen }
      else
        format.html { render :edit }
        format.json { render json: @uen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uens/1
  # DELETE /uens/1.json
  def destroy
    @uen.destroy
    respond_to do |format|
      format.html { redirect_to uens_url, notice: 'Uen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uen
      @uen = Uen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uen_params
      params.require(:uen).permit(:region, :country)
    end
end
