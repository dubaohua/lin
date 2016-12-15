class Topic1sController < ApplicationController
  before_action :set_topic1, only: [:show, :edit, :update, :destroy]

  # GET /topic1s
  # GET /topic1s.json
  def index
    @topic1s = Topic1.all
  end

  # GET /topic1s/1
  # GET /topic1s/1.json
  def show
  end

  # GET /topic1s/new
  def new
    @topic1 = Topic1.new
  end

  # GET /topic1s/1/edit
  def edit
  end

  # POST /topic1s
  # POST /topic1s.json
  def create
    @topic1 = Topic1.new(topic1_params)

    respond_to do |format|
      if @topic1.save
        format.html { redirect_to @topic1, notice: 'Topic1 was successfully created.' }
        format.json { render :show, status: :created, location: @topic1 }
      else
        format.html { render :new }
        format.json { render json: @topic1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic1s/1
  # PATCH/PUT /topic1s/1.json
  def update
    respond_to do |format|
      if @topic1.update(topic1_params)
        format.html { redirect_to @topic1, notice: 'Topic1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic1 }
      else
        format.html { render :edit }
        format.json { render json: @topic1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic1s/1
  # DELETE /topic1s/1.json
  def destroy
    @topic1.destroy
    respond_to do |format|
      format.html { redirect_to topic1s_url, notice: 'Topic1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic1
      @topic1 = Topic1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic1_params
      params.require(:topic1).permit(:title, :description)
    end
end
