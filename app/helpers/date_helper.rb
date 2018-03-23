module DateHelper
  def format_date(date_params)
    begin
      Date.new(
        date_params[:year].to_i,
        date_params[:month].to_i,
        date_params[:day].to_i
      )
    rescue ArgumentError
      raise IncorrectDateFormatError, "Date is not of correct type or format."
    end
  end
end