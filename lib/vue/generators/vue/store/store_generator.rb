module Vue
  class StoreGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def generate_store
      [
        'Store', 'actions', 'getters', 'mutations', 'state'
      ].each do |template|
        template "#{template}.template", Rails.root.join("app", "javascript", *path, "#{template}.js")
      end
    end

    private
    def store_name
      # name is from Rails::Generators::NamedBase which expects a single argument to the generator
      store = name.split("/").last
      store.camelize(:lower) # makesTheFirstLetterLowerCase
    end

    def path
      name.split("/").map {|part| part.underscore.tr('_', '-') } + ['store']
    end
  end
end
