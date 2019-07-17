class MemeCaptionsController < ApplicationController
  before_action :set_meme_caption, only: [:show, :update, :destroy]

  # GET /meme_captions
  def index
    @meme_captions = MemeCaption.all

    render json: @meme_captions
  end

  # GET /meme_captions/1
  def show
    render json: @meme_caption
  end

  # POST /meme_captions
  def create
    @meme_caption = MemeCaption.new(meme_caption_params)

    if @meme_caption.save
      render json: @meme_caption, status: :created, location: @meme_caption
    else
      render json: @meme_caption.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meme_captions/1
  def update
    if @meme_caption.update(meme_caption_params)
      render json: @meme_caption
    else
      render json: @meme_caption.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meme_captions/1
  def destroy
    @meme_caption.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meme_caption
      @meme_caption = MemeCaption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meme_caption_params
      params.require(:meme_caption).permit(:meme_id, :caption_id)
    end
end
