class PokedexListsController < ApplicationController
  before_action :set_pokedex_list, only: [:show, :edit, :update, :destroy]

  # GET /pokedex_lists
  # GET /pokedex_lists.json
  def index
    @pokedex_lists = PokedexList.all
  end

  # GET /pokedex_lists/1
  # GET /pokedex_lists/1.json
  def show
  end

  # GET /pokedex_lists/new
  def new
    @pokedex_list = PokedexList.new
  end

  # GET /pokedex_lists/sort
  def sort
    @pokedex_lists = PokedexList.order(name: :desc)
  end

  # GET /pokedex_lists/1/edit
  def edit
  end

  # POST /pokedex_lists
  # POST /pokedex_lists.json
  def create
    @pokedex_list = PokedexList.new(pokedex_list_params)

    respond_to do |format|
      if @pokedex_list.save
        format.html { redirect_to @pokedex_list, notice: 'Pokedex list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pokedex_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @pokedex_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokedex_lists/1
  # PATCH/PUT /pokedex_lists/1.json
  def update
    respond_to do |format|
      if @pokedex_list.update(pokedex_list_params)
        format.html { redirect_to @pokedex_list, notice: 'Pokedex list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pokedex_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokedex_lists/1
  # DELETE /pokedex_lists/1.json
  def destroy
    @pokedex_list.destroy
    respond_to do |format|
      format.html { redirect_to pokedex_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokedex_list
      @pokedex_list = PokedexList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokedex_list_params
      params.require(:pokedex_list).permit(:name, :index, :weight, :height)
    end
end
