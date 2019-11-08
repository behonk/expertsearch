class MemberController < ApplicationController
  before_action :load_member, except: [:index, :new, :create]
  before_action :non_friends, only: [:show, :search_topic]

  def index
    @members = Member.all
  end

  def new
  end

  def create
    @member = Member.new(params.require(:member).permit(:name, :website))

    flash[:notice] = 'Member created' if @member.save

    redirect_to @member
  end

  def show
  end

  def add_friend
  end

  def search_topic
    render plain: params.inspect
  end

  def load_member
    @member = Member.find(params.require(:id))
  end

  def non_friends
    @non_friends = Member.where.not(id: @member.friends).where.not(id: @member.id)
  end
end
