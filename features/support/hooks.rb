# Grava retorno e organiza arquivo no diretório retorno

Before do |scenario|
  begin

    puts "\n\n----------------------  O teste está em processamento ...  ----------------------\n\n"

    if !File.exist?(File.join(Dir.pwd, 'features', 'retorno', 'cenario1_retorno_vr.txt')) then
      file_name_data = File.new(File.join(Dir.pwd, 'features', 'retorno', 'cenario1_retorno_vr.txt'))
    end
    $time1 = "#{Time.now.strftime('Dta:%Y-%m-%d_Horario_Execucao:%Hhs-%Mmin-%Ssegs')}: \n\n"
  end
end

After do |scenario|
  
  if File.exist?(File.join(Dir.pwd, 'features', 'retorno', 'cenario1_retorno_vr.txt')) then
    FileUtils.rm_rf(Dir.glob(File.join(Dir.pwd, 'features', 'retorno', 'cenario1_retorno_vr.txt')))
  end
  File.open(File.join(Dir.pwd, 'features', 'retorno', 'cenario1_retorno_vr.txt'), "a") do |n|
    n.puts $time1
    n.close
  end
  File.open(File.join(Dir.pwd, 'features', 'retorno', 'cenario1_retorno_vr.txt'), "a") do |o|
    o.puts $resposta_retono_tipo_estabelecimento
    o.close
  end
  puts "\n\n----------------------O teste está finalizado!----------------------"
end