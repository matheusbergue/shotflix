module Jekyll
    class Mostrar < Liquid::Tag
        
  
      def initialize(tag_name, markup, tokens)
        super
        @id = markup
      end
  
      def render(context)
        
          return context[@id]
        
      end
    end
  end

  
  Liquid::Template.register_tag('mostrar', Jekyll::Mostrar)