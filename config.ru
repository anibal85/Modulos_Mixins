#config.ru
require 'rack'
class MiPrimeraWebApp
    def call(env)
        [200, {'Content-Type' => 'text/html'}, ["<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione magni facere ut placeat harum numquam sequi officiis! Perferendis totam incidunt similique odio aut natus dicta, sequi eius voluptates vitae consequatur?</p>"]]
    end
end
run MiPrimeraWebApp.new
