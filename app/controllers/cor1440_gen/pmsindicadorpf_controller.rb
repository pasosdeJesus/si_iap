require 'cor1440_gen/concerns/controllers/pmsindicadorpf_controller'

module Cor1440Gen
  class PmsindicadorpfController < ApplicationController
  include Cor1440Gen::Concerns::Controllers::PmsindicadorpfController

    # Autorización en función
  
    # GET /pmsindicadorpf/new
    def new
      authorize! :new, Cor1440Gen::Mindicadorpf
      if params[:mindicadorpf_id] && Cor1440Gen::Mindicadorpf.where(id: params[:mindicadorpf_id].to_i).count == 1
        mind = Cor1440Gen::Mindicadorpf.find(params[:mindicadorpf_id].to_i)
        fini = Date.today
        ffin = fini + 1.month
        restiempo = 'Mes'
        meta = 1
        observaciones = ''
        @pmindicadorpf = Cor1440Gen::Pmindicadorpf.create(
          mindicadorpf_id: mind.id,
          finicio: fini,
          ffin: ffin,
          restiempo: restiempo,
          meta: meta,
          observaciones: observaciones)
        if @pmindicadorpf.save
          respond_to do |format|
            format.js { render text: @pmindicadorpf.id.to_s }
            format.json { render json: @pmindicadorpf.id.to_s, status: :created }
            format.html { render inline: 'No implementado', 
                          status: :unprocessable_entity }
          end
        else
          render inline: 'No implementado', status: :unprocessable_entity 
        end
      else
        render inline: 'Faltó identificación de mindicadorpf', 
          status: :unprocessable_entity 
      end
    end
  end
end
