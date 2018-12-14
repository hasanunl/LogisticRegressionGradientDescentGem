require 'sciruby'

class LogisticRegressionGradientDescent

  @@theta_class

  def fit(x,y,alpha,num_iter)
    theta_start = N.zeros([x.cols,1])
    theta_end = cost_function(x,y,theta_start)
    @@theta_class = theta_end
  end

  private

  def cost_function(x,y,theta)
    m = y.rows
    h = x.dot(theta)
    sig_p = sigmoid(h)
    cost = (-y).transpose.dot(sig_p.log) - (N.ones([y.rows,y.cols])-y).transpose.dot((N.ones([sig_p.rows,sig_p.cols])-sig_p).log)
    cost_sum = cost.sum[0,0]*(1.0/m)
    grad = ((sig_p-y).transpose.dot(x))*(1.0/m)
    theta = grad
    return cost_sum,theta
  end

  def sigmoid(z)
    g = N.zeros([z.cols,1])
    g = N.ones([z.rows,z.cols])/(N.ones([z.rows,z.cols]) + ((-z).exp))
    return g
  end

end
