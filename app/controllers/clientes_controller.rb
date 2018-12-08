class ClientesController < ApplicationController
 
  
  def index
    clientes = Cliente.all
    render json: {status: 'SUCCESS', message:'Loaded clientes', data:clientes},status: :ok
  end

    def show
      cliente = Cliente.find(params[:id])
      render json: {status: 'SUCCESS', message:'Loaded clientes', data:cliente},status: :ok
    end

    def create
      cliente = Cliente.new(clientes_params)

      if cliente.save
        render json: {status: 'SUCCESS', message:'Saved clientes', data:cliente},status: :ok
      else
        render json: {status: 'ERROR', message:'Cliente not saved', data:cliente.errors},status: :unprocessable_entity
      end
    end

    def destroy
      cliente = Cliente.find(params[:id])
      cliente.destroy
      render json: {status: 'SUCCESS', message:'Deleted Cliente', data:cliente},status: :ok
    end

    def update
      cliente = Cliente.find(params[:id])
      if cliente.update_attributes(clientes_params)
        render json: {status: 'SUCCESS', message:'Updated clientes', data:cliente},status: :ok
      else
        render json: {status: 'ERROR', message:'Cliente not updated', data:cliente.errors},status: :unprocessable_entity
      end
    end
    
    private

      def clientes_params
      params.permit(:rfc, :nombre_cliente)
      end 

    end

 