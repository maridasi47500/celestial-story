class AutomationpagesController < ApplicationController
  before_action :set_automationpage, only: %i[ show edit update destroy ]

  # GET /automationpages or /automationpages.json
  def index
    @automationpages = Automationpage.all
  end

  # GET /automationpages/1 or /automationpages/1.json
  def show
  end

  # GET /automationpages/new
  def new
    @automationpage = Automationpage.new
  end

  # GET /automationpages/1/edit
  def edit
  end

  # POST /automationpages or /automationpages.json
  def create
    @automationpage = Automationpage.new(automationpage_params)

    respond_to do |format|
      if @automationpage.save
        format.html { redirect_to @automationpage, notice: "Automationpage was successfully created." }
        format.json { render :show, status: :created, location: @automationpage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @automationpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automationpages/1 or /automationpages/1.json
  def update
    respond_to do |format|
      if @automationpage.update(automationpage_params)
        format.html { redirect_to @automationpage, notice: "Automationpage was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @automationpage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @automationpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automationpages/1 or /automationpages/1.json
  def destroy
    @automationpage.destroy!

    respond_to do |format|
      format.html { redirect_to automationpages_path, notice: "Automationpage was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automationpage
      @automationpage = Automationpage.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def automationpage_params
      params.expect(automationpage: [ :name, :link ])
    end
end
