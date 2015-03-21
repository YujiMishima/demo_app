class YujiMishimasController < ApplicationController
  before_action :set_yuji_mishima, only: [:show, :edit, :update, :destroy]

  # GET /yuji_mishimas
  # GET /yuji_mishimas.json
  def index
    @yuji_mishimas = YujiMishima.all
  end

  # GET /yuji_mishimas/1
  # GET /yuji_mishimas/1.json
  def show
  end

  # GET /yuji_mishimas/new
  def new
    @yuji_mishima = YujiMishima.new
  end

  # GET /yuji_mishimas/1/edit
  def edit
  end

  # POST /yuji_mishimas
  # POST /yuji_mishimas.json
  def create
    @yuji_mishima = YujiMishima.new(yuji_mishima_params)

    respond_to do |format|
      if @yuji_mishima.save
        format.html { redirect_to @yuji_mishima, notice: 'Yuji mishima was successfully created.' }
        format.json { render :show, status: :created, location: @yuji_mishima }
      else
        format.html { render :new }
        format.json { render json: @yuji_mishima.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yuji_mishimas/1
  # PATCH/PUT /yuji_mishimas/1.json
  def update
    respond_to do |format|
      if @yuji_mishima.update(yuji_mishima_params)
        format.html { redirect_to @yuji_mishima, notice: 'Yuji mishima was successfully updated.' }
        format.json { render :show, status: :ok, location: @yuji_mishima }
      else
        format.html { render :edit }
        format.json { render json: @yuji_mishima.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yuji_mishimas/1
  # DELETE /yuji_mishimas/1.json
  def destroy
    @yuji_mishima.destroy
    respond_to do |format|
      format.html { redirect_to yuji_mishimas_url, notice: 'Yuji mishima was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yuji_mishima
      @yuji_mishima = YujiMishima.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yuji_mishima_params
      params.require(:yuji_mishima).permit(:yuji1510@gmail.com)
    end
end
