class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /events
  # GET /events.json
  def index
    @q= Event.ransack(params[:q])
    @events = @q.result.uniq
    @events = @events.paginate(:page => params[:page], :per_page => 20)

prepare_meta_tags(title: "",
  description: "", 
  keywords: %w[Hacemos-innovación hacemos-la-definición-de-la-estrategia],
    og: {
        site_name: "- Free Spirits Mx",
        title: "| Free Spirits Mx",
        description: "",
        type: 'website'
      }
) 
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @events = Event.where("fecha_real > ?", @event.fecha_real).order('id ASC').limit(2)

prepare_meta_tags(title: "",
  description: "", 
  keywords: %w[Hacemos-innovación hacemos-la-definición-de-la-estrategia],
    og: {
        site_name: "- Free Spirits Mx",
        title: "| Free Spirits Mx",
        description: "",
        type: 'website'
      }
) 
  end

  # GET /events/new
  def new
    @event = Event.new
    1.times {@event.blocks.build}
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:nombre, :fecha, :lugar, :fecha_real, :descripcion, :link_boleto, :hora, :categoria, :foto, :user_id, blocks_attributes: [:id, :name, :date, :time, :description, :category])
    end
end
