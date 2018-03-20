class MembersController < ApplicationController
  def new
  end

  def create
    @member = Member.new(member_params)

    @member.save
    redirect_to @member
  end

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

def member_params
    params.require(:members).permit(
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
