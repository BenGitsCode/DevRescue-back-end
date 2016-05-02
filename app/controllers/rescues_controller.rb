class RescuesController < ProtectedController
  before_action :set_rescue, only: [:show, :update, :destroy]

  # GET /rescues
  # GET /rescues.json
  def index
    @rescues = current_user.rescues.all

    render json: @rescues
  end

  # GET /rescues/1
  # GET /rescues/1.json
  def show
    render json: @rescue
  end

  # POST /rescues
  # POST /rescues.json
  def create
    @rescue = current_user.rescues.build(rescue_params)

    if @rescue.save
      render json: @rescue, status: :created, location: @rescue
    else
      render json: @rescue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rescues/1
  # PATCH/PUT /rescues/1.json
  def update
    # @rescue = Rescue.find(params[:id]) not necessary?

    if @rescue.update(rescue_params)
      render json: @rescue, status: :ok
    else
      render json: @rescue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rescues/1
  # DELETE /rescues/1.json
  def destroy
    @rescue.destroy

    head :no_content
  end

  private

    def set_rescue
      @rescue = current_user.rescues.find(params[:id])
    end

    def rescue_params
      params.require(:rescue).permit(:title, :url, :tag, :user_id)
    end
end
