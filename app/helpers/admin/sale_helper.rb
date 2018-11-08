module Admin::SaleHelper
  def status sale
    if !sale.has_started 
      'UPCOMING'
    elsif sale.has_finished
      'FINISHED'
    else
      'ACTIVE'
    end
  end
end
