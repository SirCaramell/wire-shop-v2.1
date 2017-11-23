module SessionHelper
  def log_in(customer)
    session[:customer_id] = customer.id
  end

  def current_customer
    @current_customer ||= Customer.find_by(id: session[:customer_id])
  end

  def logged_in?
    !current_customer.nil?
  end

  def log_out
    session.delete(:customer_id)
    @current_customer = nil
  end

  def require_token
    respond_to do |format|
      format.json {
        authenticate_token || render_unauthorized("Acces denied")
      }
      format.html{}
  end
end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      @current_customer ||= Customer.find_by(token: token)
  end
end

  def render_unauthorized(message)
    errors = {errors: [{detail:message}]}
    render json: error, status: :unauthorized
  end
end
