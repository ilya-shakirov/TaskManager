class Api::V1::ApplicationController < Api::ApplicationController
  respond_to :json
  RANSACK_DEFAULT_SORT = 'id ASC'

  def self.responder
    JsonResponder
  end

  def build_meta(collection)
    {
      count: collection.count,
      total_count: collection.total_count,
      current_page: collection.current_page,
      total_pages: collection.total_pages,
      per_page: collection.limit_value
    }
  end

  def ransack_params
    params.to_unsafe_h.fetch(:q, { s: RANSACK_DEFAULT_SORT })
  end

  def page
    params.fetch(:page, 1)
  end

  def per_page
    per = params.fetch(:per, 10).to_i
    per > 100 ? 100 : per
  end
  # include AuthHelper
  # before_action :authenticate_user!, :authorize
  # helper_method :current_user

  # def authorize
  #   render(:file => File.join(Rails.root, 'public/403.html'), :status => 403, :layout => false) if (forbidden?)
  # end

  # def forbidden?
  #   !current_user.is_a?(Admin)
  # end
end
