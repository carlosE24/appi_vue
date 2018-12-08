class ProductosController < ApplicationController
 
  
    def index
      productos = Producto.all
      render json: {status: 'SUCCESS', message:'Loaded products', data:productos},status: :ok
    end

    def show
      productos = Producto.find(params[:id])
      render json: {status: 'SUCCESS', message:'Loaded products', data:productos},status: :ok
    end

    def create
      productos = Producto.new(productos_params)

      if productos.save
        render json: {status: 'SUCCESS', message:'Saved products', data:productos},status: :ok
      else
        render json: {status: 'ERROR', message:'Product not saved', data:productos.errors},status: :unprocessable_entity
      end
    end

    def destroy
      productos = Producto.find(params[:id])
      productos.destroy
      render json: {status: 'SUCCESS', message:'Deleted Product', data:productos},status: :ok
    end

    def update
      productos = Producto.find(params[:id])
      if productos.update_attributes(productos_params)
        render json: {status: 'SUCCESS', message:'Updated products', data:productos},status: :ok
      else
        render json: {status: 'ERROR', message:'Product not updated', data:productos.errors},status: :unprocessable_entity
      end
    end
    
    private

      def productos_params
      params.permit(:nombre_producto, :precio)
      end 
    end
