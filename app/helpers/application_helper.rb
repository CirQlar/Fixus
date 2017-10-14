module ApplicationHelper
  def repair_status_date(repair)
    case repair.status
    when "awaiting_pick_up"
      date = "";
    when "picked_up"
      date = repair.pick_up_time.to_date.to_s
    when "fixed"
      date = repair.fix_time.to_date.to_s
    when "delivered"
      date = repair.deliver_time.to_date.to_s
    when "cancelled"
      date = repair.cancel_time.to_date.to_s
    end

    date.prepend("on ") unless (date == "")

    return date
  end
end
