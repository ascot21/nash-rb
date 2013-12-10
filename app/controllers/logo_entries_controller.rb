class LogoEntriesController < InheritedResources::Base
  before_filter :authenticate_user!, :except => ['index','show']
  before_filter :lookup_entry

  def index
    @logo_entries = LogoEntry.all
  end

  def create
    @logo_entry.user_id = current_user.id
    if @logo_entry.save
      flash[:notice] = "Your logo design has been submitted."
      redirect_to "/logo-contest/entries"
    else
      flash[:error] = "Your logo design submission couldn't be saved. #{@logo_entry.errors.full_messages.join}"
      render :new
    end
  end

  private
  def lookup_entry
    if params[:id]
      @logo_entry = LogoEntry.find(params[:id])
    else
      @logo_entry = LogoEntry.new(params[:logo_entry])
    end
  end
end
