class LongPagesController < ApplicationController
  before_action :set_long_page, only: [:show, :edit, :update, :destroy]

  # GET /long_pages
  # GET /long_pages.json
  def index
    #@long_pages = LongPage.all
    @long_pages = LongPage.all.page params[:page]
  end

  # GET /long_pages/1
  # GET /long_pages/1.json
  def show
  end

  # GET /long_pages/new
  def new
    @long_page = LongPage.new
  end

  # GET /long_pages/1/edit
  def edit
  end

  # POST /long_pages
  # POST /long_pages.json
  def create
    @long_page = LongPage.new(long_page_params)

    respond_to do |format|
      if @long_page.save
        format.html { redirect_to @long_page, notice: 'Long page was successfully created.' }
        format.json { render :show, status: :created, location: @long_page }
      else
        format.html { render :new }
        format.json { render json: @long_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /long_pages/1
  # PATCH/PUT /long_pages/1.json
  def update
    respond_to do |format|
      if @long_page.update(long_page_params)
        format.html { redirect_to @long_page, notice: 'Long page was successfully updated.' }
        format.json { render :show, status: :ok, location: @long_page }
      else
        format.html { render :edit }
        format.json { render json: @long_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /long_pages/1
  # DELETE /long_pages/1.json
  def destroy
    @long_page.destroy
    respond_to do |format|
      format.html { redirect_to long_pages_url, notice: 'Long page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_long_page
      @long_page = LongPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def long_page_params
      params.fetch(:long_page, {})
    end
end
