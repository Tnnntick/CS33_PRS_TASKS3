class GanresController < ApplicationController
  before_action :set_ganre, only: %i[ show edit update destroy ]

  # GET /ganres or /ganres.json
  def index
    @ganres = Ganre.all
  end

  # GET /ganres/1 or /ganres/1.json
  def show
  end

  # GET /ganres/new
  def new
    @ganre = Ganre.new
  end

  # GET /ganres/1/edit
  def edit
  end

  # POST /ganres or /ganres.json
  def create
    @ganre = Ganre.new(ganre_params)

    respond_to do |format|
      if @ganre.save
        format.html { redirect_to ganre_url(@ganre), notice: "Ganre was successfully created." }
        format.json { render :show, status: :created, location: @ganre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ganre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ganres/1 or /ganres/1.json
  def update
    respond_to do |format|
      if @ganre.update(ganre_params)
        format.html { redirect_to ganre_url(@ganre), notice: "Ganre was successfully updated." }
        format.json { render :show, status: :ok, location: @ganre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ganre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ganres/1 or /ganres/1.json
  def destroy
    @ganre.destroy

    respond_to do |format|
      format.html { redirect_to ganres_url, notice: "Ganre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ganre
      @ganre = Ganre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ganre_params
      params.fetch(:ganre, {})
    end
end
