class AuthorsController < ApplicationController
  def show
    @author = Author.kept.find_by(id: params[:id])
    redirect_to root_path unless @author
  end

  def destroy
    Author.kept.find(params[:id]).discard
  end
end
