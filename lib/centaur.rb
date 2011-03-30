class String
  CENTAUR = <<-EOS
   x
  xxx
  xxx
  xxx
  xxx
  xxx
  xxx
xxxxxxx      xxxxx
  xxx       xxxxxxx       xxx
  xxx       xxxxxxx       xxx
  xxx       xxxxxxx       xxx
  xxx         xxx         xxx
  xxxx       xxxxx       xxxx
    xxxxxxxxxxxxxxxxxxxxxxxx
         xxxxxxxxxxxxx
           xxxxxxxxxx
           xxxxxxxxxx
           xxxxxxxxxx
           xxxxxxxxxx
          xxxxxxxxxxxxxx              xxxxxxxxxx
         xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
         xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
         xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxx
          xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx   xxxx
           xxxxxxxx                 xxxxxxxxxxxxx     xxxx
            xxxxxx                    xxxxxxxx       xxxx
             xxxx                      xxxxxx        xxx
            xxxx                       xxxxx         xx
           xxxx                       xxxxx          xx
            xxxx                       xxxxx         x
            xxxx                       xxxxx
             xxxx                      xxxx
             xxxx                      xxxx
            xxxxxx                    xxxxxx
            xxxxxx                    xxxxxx
  EOS

  def shift
    slice!(0)
  end

  def centaur!
    gsub!(/\s/, '')
    centaur_length = CENTAUR.scan(/x/).length
    if length < centaur_length
      self << self while length < centaur_length
      slice!(centaur_length, length)
    end
    output = ''
    CENTAUR.each_char do |char|
      output << if char =~ /\s/ then char else shift end
    end
    replace(output)
  end

  def centaur
    dup.centaur!
  end
end


module Kernel
  def centaur(string = 'x')
    puts string.centaur
  end
end
