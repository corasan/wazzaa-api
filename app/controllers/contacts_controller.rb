class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]
  # before_action :set_user_contacts, only: [:index]

  # GET /contacts
  def index
    @contacts = Contact.find(params[:user_id])

    # @contacts = @user.contacts.all

    render json: @contacts
  end

  # GET /contacts/1
  def show
    render json: @contact
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render json: @contact, status: :created, location: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # def set_user_contacts
    #     @user = User.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def contact_params
      params.permit(:contact_id, :user_id)
    end
end
