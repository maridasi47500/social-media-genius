class LogementsController < ApplicationController
  before_action :set_logement, only: %i[ show edit update destroy ]

  # GET /logements or /logements.json
  def index
    @logements = Logement.all
  end

  # GET /logements/1 or /logements/1.json
  def show
  end

  # GET /logements/new
  def new
    @logement = Logement.new
  end

  # GET /logements/1/edit
  def edit
  end

  # POST /logements or /logements.json
  def create
    @logement = Logement.new(logement_params)

    respond_to do |format|
      if @logement.save
        format.html { redirect_to @logement, notice: "Logement was successfully created." }
        format.json { render :show, status: :created, location: @logement }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @logement.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /logements/1 or /logements/1.json
  def update
    respond_to do |format|
      if @logement.update(logement_params)
        format.html { redirect_to @logement, notice: "Logement was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @logement }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @logement.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /logements/1 or /logements/1.json
  def destroy
    @logement.destroy!

    respond_to do |format|
      format.html { redirect_to logements_path, notice: "Logement was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logement
      @logement = Logement.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def logement_params
      params.expect(logement: [ :title, :pic ])
    end
end
