class InvoicesController < ApplicationController
  before_action :require_login
  def new_invoice
  end

  def list

    @invoices = Invoice.joins("as inv inner join totals as t on inv.id = t.invoice_id inner join users as u on inv.user_id = u.id").where("u.id",session[:user_id]).select("t.total_amount as totalamount,t.total_invoices as tinv,inv.*")

  end

  def create
    #raise params.inspect
    #raise session[:user_id].inspect
    @user = session[:user_id]
  invoice = Invoice.new
  tax_plus_amount = ((params[:invoice][:amount].to_i*params[:invoice][:tax].to_i)/100)
  tot_amount = (params[:invoice][:amount].to_i + tax_plus_amount)
  invoice.name = params[:invoice][:name]
  invoice.amount = tot_amount
  invoice.tax = params[:invoice][:tax]
  invoice.user_id = @user
  #raise @user.inspect
  if invoice.save!

    total_count = Invoice.count
    total_amount = Invoice.sum(:amount)
    total = Total.new
    total.total_invoices = total_count
    total.total_amount = total_amount
    if total.save!
      @invoice_id = Invoice.last.id
      @total_invoice_id = Total.last
      @total_invoice_id.update_attributes(:invoice_id => @invoice_id)
      flash[:notice] = "Invoice Created Successfully!!"
      redirect_to :action => 'list'
    end
  end
end
end
