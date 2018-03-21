class AdministratorsController < ApplicationController
  def new
  end

  def create
    @admin = Administrator.new(admin_params)

    @admin.save
    redirect_to @admin
  end

  def index
    redirect_to members_path
  end

  def show
    @admin = Administrator.find(params[:id])
  end

  private

  def admin_params
    params.require(:administrators).permit(
      :first_name,
      :last_name,
      :street_name,
      :suburb,
      :city,
      :country,
      :postal_code,
      :mobile_number,
      :landline_number
    )
  end
end
