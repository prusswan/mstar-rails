dir = 'F:\Program Files (x86)\GarenaMStarTW\Apps\MStarTW\NurienGame\Content\Music'
outdir = 'F:\Mstar\v1'

Dir.foreach(dir) do |filename|

  # next unless filename =~ /^m.+\.upk$/
  next unless filename == 'm_a3k_0197.upk' or filename == 'm_a1f_0001.upk'

  f = File.new("#{dir}\\#{filename}")
  out = File.new("#{outdir}\\#{filename.gsub('upk','ogg')}", 'wb')

  count = 0
  f.each_byte do |b|
    count += 1
    
    if count < 560
    
    elsif count < 598
      if count%4 < 2
        # puts "%02X: #{count}" % (b ^ 240)
        out.write (b^240).chr
      else
        # puts "%02X: #{count}" % b
        out.write b.chr
      end
    else
      out.write b.chr
    end
  end

  f.close
  out.close
  
  puts "#{filename} processed"

end
