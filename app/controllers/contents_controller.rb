class ContentsController < ApplicationController
  before_action :force_to_log
  before_action :set_user
  before_action :set_content_with_place, only: [:edit, :update]

  def main
  end
  def sub
    @main_num = params[:id].to_i / 10 + 1
    @main_num = "main" + @main_num.to_s
    #binding.pry
  end
  def edit
    #binding.pry　paramsちゃんと通ってる
  end

  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to main_path, notice: '編集しました' }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_without_place
      @content = set_contnet(@current_user.id, params[:id])
    end
    def set_content_with_place
      @content = set_content(@current_user.id, params[:id])
    end
    #こっちユーザー
    def set_user
      @user = current_user
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:title, :text, :start, :limit, :user_id)
    end
end
