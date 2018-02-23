class PagesController < ApplicationController
  def comunidad

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
end
