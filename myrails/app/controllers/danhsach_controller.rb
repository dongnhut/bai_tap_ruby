class DanhsachController < ApplicationController
  
  def index
  	# @users= Account.where(GioiTinh: 'nam')
  	# binding.pry
  	@users= Account.list_nam
  end
  def Hienthi
  	 # @list= User.find_by_id(params[:id])
  	 @account=Account.chitiet(params[:id])
  	# @list= User.find(params[:id])
  	
  end
  def list_all
  	@list= Account.list_all
  	
  end
  def Edit
  	@account_edit=Account.Edit(params[:id])
  	
  end
  def update

  	Account.update(params[:id],params[:name],params[:GioiTinh],params[:DiaChi])
  	redirect_to action: :list_all
  	
  end
  def new
  end
  def create
  	# binding.pry
  	Account.create(params[:name],params[:GioiTinh],params[:DiaChi])
  	redirect_to action: :list_all
  	
  end

end
