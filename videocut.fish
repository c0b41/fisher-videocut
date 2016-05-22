# SYNOPSIS
#   videocut [options]
#
# USAGE
#   Options
#   {src} Video file
#   {start} Time
#   {end} Time
#   {type} video output type

function videocut
  if type -t ffmpeg > /dev/null
    set rnumb  (eval random )
    ffmpeg -i $argv[1] -vcodec copy -acodec copy -ss $argv[2] -to $argv[3] -strict -2 cut_$rnumb.$argv[4]  > /dev/null 2>&1
  else
    echo "📂  Please install 'apt-get install ffmpeg ' first!"
  end
end
