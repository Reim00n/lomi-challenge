class Api::V1::FiboController < ApiController
  def show
    n = params[:n].to_i
    result = calculate_fibonacci(n)
    render json: { index: n, value: result }
  end
  private

  def calculate_fibonacci(n)
    if n <= 1
      n
    else
      calculate_fibonacci(n - 1) + calculate_fibonacci(n - 2)
    end
  end
 
end
