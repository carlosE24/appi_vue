class OrdenesController < ApplicationController

    def index
        ordenes = Ordene.all
        render json: {status: 'SUCCESS', message:'Loaded ordenes', data:ordenes},status: :ok
      end
  
      def show
        ordene = Ordene.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded ordenes', data:ordene},status: :ok
      end
  
      def create
        ordene = Ordene.new(ordenes_params)
  
        if ordene.save
          render json: {status: 'SUCCESS', message:'Saved ordenes', data:ordene},status: :ok
        else
          render json: {status: 'ERROR', message:'Ordenes not saved', data:ordene.errors},status: :unprocessable_entity
        end
      end
  
      def destroy
        ordene = Ordene.find(params[:id])
        ordene.destroy
        render json: {status: 'SUCCESS', message:'Deleted Ordenes', data:ordene},status: :ok
      end
  
      def update
        ordene = Ordene.find(params[:id])
        if ordene.update_attributes(ordenes_params)
          render json: {status: 'SUCCESS', message:'Updated ordenes', data:ordene},status: :ok
        else
          render json: {status: 'ERROR', message:'Ordenes not updated', data:ordene.errors},status: :unprocessable_entity
        end
      end
      
      private
  
        def ordenes_params
        params.permit(:cliente_id, :num_orden, :fecha)
        end 
      end
  