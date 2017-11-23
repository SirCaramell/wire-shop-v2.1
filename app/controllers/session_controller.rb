class SessionController < ApplicationController
  skip_before_action :verify_authenticity_token
end
  def new
  end

  def create
    respond_to do |format|
    customer = Customer.find_by(customer_id: params[:session][:customer_id])
    if customer && customer.authenticate(params[:session][:password])
         format.html {
           log_in customer
           redirect_to customer
         }
         format.json {
           customer.password = params[:session][:password]
           customer.regenerate_token
           render json: {token: student.token}
         }
    else
      format.html {
       render 'new'
     }
     format.json {
       render json: {message: 'Niepoprawne dane'}
     }
    end
  end
  end

  def destroy
    respond_to do |format|
      format.html do
        log_out
        redirect_to root_url
      end
      format.json do
        require_token
        if current_customer
          current_customer.invalidate_token
          head :ok
      end
      end
  end
end
