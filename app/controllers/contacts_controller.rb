class ContactsController < ApplicationController


def new
	@contact = Contact.new

prepare_meta_tags(title: "Contacto | Free Spirits MX",
  description: "Contactar a Free Spirits y conocer mas noticias y eventos", 
    og: {
        site_name: "- Free Spirits Mx",
        title: "Contacto | Free Spirits Mx",
        description: "Contactar a Free Spirits y conocer mas noticias y eventos",
        type: 'website'
      }
)	
end

def create

    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Mensaje envíado. Gracias'
    else
      flash.now[:error] = 'Lo lamentamos, no se puede enviar el mensaje'
      render :new
    end

end

end
