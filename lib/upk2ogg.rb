dir = 'F:\Program Files (x86)\GarenaMStarTW\Apps\MStarTW\NurienGame\Content\Music'
# dir = 'C:\Program Files (x86)\GarenaMStarTW\Apps\MStarTW\NurienGame\Content\Music'
# dir = 'C:\Users\prusswan\Desktop\Mstar'
# outdir = 'C:\Users\prusswan\Desktop\Ogg'
outdir = 'E:\Mstar\ogg'

Dir.foreach(dir) do |filename|

  next unless filename =~ /^m_a.+\.upk$/
  # next unless filename == 'm_a3k_0197.upk' or filename == 'm_a1f_0001.upk'

  out_file = "#{outdir}\\#{filename.gsub('upk','ogg')}"
  next if File.exist?(out_file)

  f = File.open("#{dir}\\#{filename}", 'rb')
  out = File.new(out_file, 'wb')

  offset1 = 560 # 540
  offset2 = offset1 + 38 # 598
  mask = 240

  count = 0
  f.each_byte do |b|
    count += 1
    char = b

    next if count < offset1

    if count < offset2
      if (count - offset1)%4 < 2
        char = (b ^ mask)
      end
      # puts "%02X: #{count}" % char
    end

    out.write char.chr
  end

  f.close
  out.close

  puts "#{filename} processed (#{count} bytes)"

end
