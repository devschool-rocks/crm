MODEL_NAMES = Dir["#{Rails.root}/app/models/*.rb"].map {|path| path.split("/")[-1].split(".")[0] }
