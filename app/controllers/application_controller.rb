class ApplicationController < ActionController::API
    
    before_action :cors_preflight_check, :set_headers, :authorized  
    after_action :cors_set_access_control_headers
  
    def encode_token(payload)
      # should store secret in env variable
      JWT.encode(payload, 'my_s3cr3t')
    end
  
    def auth_header
      # { Authorization: 'Bearer <token>' }
      request.headers['Authorization']
    end
  
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
          JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def current_user
      if decoded_token
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
      end
    end
  
    def logged_in?
      !!current_user
    end
  
    def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end

    # For all responses in this controller, return the CORS access control headers.

    def cors_set_access_control_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, PUT, PATCH, DELETE'
      headers['Access-Control-Allow-Headers'] = %w{Origin Accept Content-Type X-Requested-With auth_token X-CSRF-Token}.join(',')
      headers['Access-Control-Max-Age'] = "1728000"
    end

    def cors_preflight_check
      if request.method == "OPTIONS"
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, PUT, PATCH, DELETE'
        headers['Access-Control-Allow-Headers'] = %w{Origin Accept Content-Type X-Requested-With auth_token X-CSRF-Token}.join(',')
        headers['Access-Control-Max-Age'] = '1728000'
        render json: {},status: :accepted
      end
    end

    def set_headers
      if request.headers["HTTP_ORIGIN"]
      # better way check origin
      # if request.headers["HTTP_ORIGIN"] && /^https?:\/\/(.*)\.some\.site\.com$/i.match(request.headers["HTTP_ORIGIN"])
        headers['Access-Control-Allow-Origin'] = request.headers["HTTP_ORIGIN"]
        headers['Access-Control-Expose-Headers'] = 'ETag'
        headers['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
        headers['Access-Control-Allow-Headers'] = '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match,Auth-User-Token'
        headers['Access-Control-Max-Age'] = '86400'
        headers['Access-Control-Allow-Credentials'] = 'true'
      end
    end

   
  end