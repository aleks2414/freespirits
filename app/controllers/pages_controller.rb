class PagesController < ApplicationController
  def comunidad

prepare_meta_tags(title: "Comunidad | Free Spirits",
  description: "Vision y misión de Free Spirits", 
    og: {
        site_name: "Comunidad - Free Spirits Mx",
        title: "| Free Spirits Mx",
        description: "Vision y misión de Free Spirits",
        type: 'website'
      }
)	
  end
end
