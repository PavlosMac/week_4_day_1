
class Wordformatter

  def initialize(text)
    @text = text
  end

  def upcase
    @text.upcase
  end

  def camel_case
    cameled_text = @text.split(' ')
    cameled_texted = cameled_text.map{|word| word.capitalize}
    return cameled_texted.join('')
  end

end

