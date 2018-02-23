class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  require 'will_paginate/array'

before_action :prepare_meta_tags, if: "request.get?"

  def prepare_meta_tags(options={})
    site_name   = "Free Spirits MX"
    title       = "Free Spirits MX"
    description = "Espacio dedicado a toda la gente ordinaria que logra cosas extraordinarias, que le gusta la aventura y los buenos amigos"
    image       = options[:image] || "https://afternoon-castle-43942.herokuapp.com/assets/logo-120eb8bb2b448f0829217f2c3b81a6c81ed9471863b4263121015812b26452d8.svg"
    current_url = request.url
    keywords    = %w[eventos extremos, deportes extremos, escalada, maraton, aire libre, montañismo, escalada, excursionismo, ciclismo, acampada,]

    # Let's prepare a nice set of defaults
    defaults = {
      title:       title,      
      image:       image,
      revisit_after: "30 days",
      robots: "index,follow",
      distribution: "global",
      description: description,
      keywords:    keywords,
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end

end
