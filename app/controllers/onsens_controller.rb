class OnsensController < ApplicationController
  before_action :set_onsen, only: %i[ show ]
  # GET /onsens or /onsens.json
  def index
    # Strong Parametersで安全なパラメータのみ許可
    @search_params = params.permit(:q, :tags, :open_time, :close_time)

    # モデルの検索メソッドを呼び出し、新しい順でソート
    @onsens = Onsen.search(@search_params).order(created_at: :desc)
  end

  # GET /onsens/1 or /onsens/1.json
  def show
    @reviews = @onsen.reviews.order(created_at: :desc)
  end

  private
    def set_onsen
      @onsen = Onsen.find(params[:id])
    end
end
