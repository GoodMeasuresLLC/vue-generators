module Vue
  class PackGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def generate_pack
      template 'Pack.template', Rails.root.join("app", "javascript", "packs", "#{pack_name}.js")
    end

    private
    def pack_name
      file = name.split("/").last
      if file.downcase.ends_with?(".js") || file.downcase.ends_with?(".vue")
        file = file.split(".")[0]
      end
      file
    end

  end
end
