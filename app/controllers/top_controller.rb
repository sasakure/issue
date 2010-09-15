class TopController < ApplicationController
  before_filter :login_from_cookie


  def index
    @issue = Issue.all
    @issue_cnt = Issue.count
  end

  def new
  end

  def create
    @issue_new=Issue.new(params[:inp])
    @issue_new.save
    redirect_to :controller =>"top", :action => "index"
  end

  def edit
    @issue_edit= Issue.find(params[:id])
    @result = Result.new
    @result.issue_id = @issue_edit.id
  end

  def create2
    @result=Result.new(params[:result])
    @result.save
    redirect_to :controller =>"top", :action => "index"
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    redirect_to :controller =>"top", :action => "index"
  end

end