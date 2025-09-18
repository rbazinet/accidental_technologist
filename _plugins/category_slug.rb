module Jekyll
  module CategorySlugFilter
    def category_slug(input)
      # Handle special cases for category slugs
      case input
      when "C#"
        "csharp"
      when ".NET"
        "net"
      else
        # Default slugification: lowercase, replace spaces with hyphens, remove special chars
        input.to_s.downcase.gsub(/[^a-z0-9\-]+/, '-').gsub(/^-|-$/, '')
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::CategorySlugFilter)