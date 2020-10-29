class MyTabelsController < ApplicationController
  before_action :set_my_tabel, only: [:show, :edit, :update, :destroy]

  # GET /my_tabels
  # GET /my_tabels.json
  def index
    @my_tabels = MyTabel.all
  end

  # GET /my_tabels/1
  # GET /my_tabels/1.json
  def show
  end

  # GET /my_tabels/new
  def new
    @my_tabel = MyTabel.new
  end

  # GET /my_tabels/1/edit
  def edit
  end

  # POST /my_tabels
  # POST /my_tabels.json
  def create
    @my_tabel = MyTabel.new(my_tabel_params)

    respond_to do |format|
      if @my_tabel.save
        format.html { redirect_to @my_tabel, notice: 'My tabel was successfully created.' }
        format.json { render :show, status: :created, location: @my_tabel }
      else
        format.html { render :new }
        format.json { render json: @my_tabel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_tabels/1
  # PATCH/PUT /my_tabels/1.json
  def update
    respond_to do |format|
      if @my_tabel.update(my_tabel_params)
        format.html { redirect_to @my_tabel, notice: 'My tabel was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_tabel }
      else
        format.html { render :edit }
        format.json { render json: @my_tabel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_tabels/1
  # DELETE /my_tabels/1.json
  def destroy
    @my_tabel.destroy
    respond_to do |format|
      format.html { redirect_to my_tabels_url, notice: 'My tabel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_tabel
      @my_tabel = MyTabel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_tabel_params
      params.require(:my_tabel).permit(:nume, :altceva, :cv)
    end
end
