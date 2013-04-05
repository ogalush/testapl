class EventsController < ApplicationController
  def add
    reset_session
    respond_to do |format|
      format.html
      format.json { render }
    end    
  end

  def edit
    @email = User.find(params[:email])
    @passwd = User.find(params[:passwd])
    #execute auth
    # 今はない。ユーザ名取得予定。
    @user = 'zzz'
    #publish token and session_id.
    @token = 'xxx'
    @sess_id = 'yyy'
    session[:sess_id] = @sess_id
    session[:username] = @username
    respond_to do |format|
      format.html
      format.json { render token: @token }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def del
    reset_session
    redirect_to :action=>'index'
  end

  def get
    reset_session
    redirect_to :action=>'index'
  end

end