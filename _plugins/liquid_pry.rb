class LiquidPryTag < Liquid::Tag
  def initialize(tag_name, markup, tokens)
    super
  end

  def render(context)
    context.pry
  end
end

Liquid::Template.register_tag("pry", LiquidPryTag)
