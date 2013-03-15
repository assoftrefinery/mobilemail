class HomeController < ApplicationController
  #define la respuesta, si es html normal o dispositivo mobil
  def index
    respond_to do |format|
      format.html
      format.mobile
    end
  end


  def informacion

      valores = Array.new
      valores.push (request.ip)

      @ip = request.ip
      @metodo = request.method
      @reference = request.env["HTTP_REFERER"]
      @agente = request.env["HTTP_USER_AGENT"]
      @http_host = request.env["HTTP_HOST"]
      @nombre_host = request.env["REMOTE_HOST"]
      @ip_remota = request.remote_ip


  end


end
