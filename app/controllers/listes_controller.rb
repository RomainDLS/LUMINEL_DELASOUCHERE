class ListesController < ApplicationController
  before_action :set_liste, only: [:show, :edit, :update, :destroy]

  # GET /listes
  # GET /listes.json
  def index
    @listes = Liste.all
  end

  # GET /listes/1
  # GET /listes/1.json
  def show
  end

  # GET /listes/new
  def new
    @liste = Liste.new
  end

  # GET /listes/1/edit
  def edit
  end

  # POST /listes
  # POST /listes.json
  def create
    @liste = Liste.new(liste_params)

    respond_to do |format|
      if @liste.save
        format.html { redirect_to @liste, notice: 'Liste was successfully created.' }
        format.json { render :show, status: :created, location: @liste }
      else
        format.html { render :new }
        format.json { render json: @liste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listes/1
  # PATCH/PUT /listes/1.json
  def update
    respond_to do |format|
      if @liste.update(liste_params)
        format.html { redirect_to @liste, notice: 'Liste was successfully updated.' }
        format.json { render :show, status: :ok, location: @liste }
      else
        format.html { render :edit }
        format.json { render json: @liste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listes/1
  # DELETE /listes/1.json
  def destroy
    @liste.destroy
    respond_to do |format|
      format.html { redirect_to listes_url, notice: 'Liste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liste
      @liste = Liste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liste_params
      params.require(:liste).permit(:nom, :id_liste)
    end
end
