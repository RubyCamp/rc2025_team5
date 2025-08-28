class OnsensController < ApplicationController
  before_action :set_onsen, only: %i[ show ]
  # GET /onsens or /onsens.json
  def index
    @results = []
    # 温泉カテゴリの場合のパラメータを許可
    @search_params = params.permit(:q, :tags, :open_time, :close_time)
    # params[:category] の値に応じて処理を分岐
    case params[:category]
    when "onsen"
      # Onsenモデルの検索メソッドを呼び出し、新しい順でソート
      @results = Onsen.search(@search_params).order(created_at: :desc)

    when "restaurant"
      # Restaurantモデルの全データを取得
      @results = Restaurant.all

    when "event"
      # Eventモデルの全データを取得
      @results = Event.all

    when "night_spot"
      # NightSpotモデルの全データを取得
      @results = NightSpot.all

    else
      # ジャンルが選択されていない場合、全てのモデルからデータを取得して結合する
      @results = Onsen.asearch(@search_params).order(created_at: :desc) + Restaurant.all + Event.all + NightSpot.all
    end
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
