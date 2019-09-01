class AuthorsController < ApplicationController
  def show
    @author = Author.find_by(id: params[:id])
    redirect_to root_path unless @author
  end

  def destroy
    Author.find(params[:id]).destroy
    redirect_to root_path
  end
end
