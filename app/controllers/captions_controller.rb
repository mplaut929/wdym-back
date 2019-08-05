class CaptionsController < ApplicationController
  before_action :set_caption, only: [:show, :update, :destroy]

  # GET /captions
  def index
    @captions = Caption.all

    render json: @captions
  end

  # GET /captions/1
  def show
    render json: @caption
  end

  # POST /captions
  def create
    @caption = Caption.new(caption_params)

    if @caption.save
      render json: @caption, status: :created, location: @caption
    else
      render json: @caption.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /captions/1
  def update
    if @caption.update(caption_params)
      render json: @caption
    else
      render json: @caption.errors, status: :unprocessable_entity
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caption
      @caption = Caption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def caption_params
      params.require(:caption).permit(:title)
    end
end
