module Vue
  class MixinGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)


    def generate_mixin
      template 'Mixin.template', Rails.root.join("app", "javascript", "components", *path, "#{mixin_name}.js")
    end

    private
    def mixin_name
      file = name.split("/").last
      if file.downcase.ends_with?(".js") || file.downcase.ends_with?(".vue")
        file = file.split(".")[0]
      end
      file
    end

    def path
      parts = name.split("/")
      parts.pop

      parts
    end
  end
end
