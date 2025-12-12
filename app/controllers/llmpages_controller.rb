class LlmpagesController < ApplicationController
  before_action :set_llmpage, only: %i[ show edit update destroy ]

  # GET /llmpages or /llmpages.json
  def index
    @llmpages = Llmpage.all
  end

  # GET /llmpages/1 or /llmpages/1.json
  def show
  end

  # GET /llmpages/new
  def new
    @llmpage = Llmpage.new
  end

  # GET /llmpages/1/edit
  def edit
  end

  # POST /llmpages or /llmpages.json
  def create
    @llmpage = Llmpage.new(llmpage_params)

    respond_to do |format|
      if @llmpage.save
        format.html { redirect_to @llmpage, notice: "Llmpage was successfully created." }
        format.json { render :show, status: :created, location: @llmpage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @llmpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /llmpages/1 or /llmpages/1.json
  def update
    respond_to do |format|
      if @llmpage.update(llmpage_params)
        format.html { redirect_to @llmpage, notice: "Llmpage was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @llmpage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @llmpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /llmpages/1 or /llmpages/1.json
  def destroy
    @llmpage.destroy!

    respond_to do |format|
      format.html { redirect_to llmpages_path, notice: "Llmpage was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_llmpage
      @llmpage = Llmpage.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def llmpage_params
      params.expect(llmpage: [ :name, :link ])
    end
end
