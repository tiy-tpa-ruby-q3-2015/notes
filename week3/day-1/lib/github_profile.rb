class GithubProfile
  attr_accessor :account,
                :authentication_token,
                :signup_date,
                :plan

  def cost
    if plan == "Free"
      0.00
    else
      5.00
    end
  end
end
