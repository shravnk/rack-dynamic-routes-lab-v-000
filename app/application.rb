class Application
  resp = Rack::Response.new
  req = Rack::Request.new

  if req.path.match(/items/)
    m = Item.all.select(|i| i.name == req.split("/items/").last)


end
