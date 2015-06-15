class DanhsachnamController < ApplicationController
  def index
  	@users= User.where(GioiTinh: 'nam')
  end
  def Hienthi
  	 @list= User.find_by_id(params[:id])
  	# @list= User.find(params[:id])
  	
  end
end
