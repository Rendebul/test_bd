class TestController < ApplicationController
    require 'date'
    def test
        @h = ['id' => 'test']
        render json: @h
    end

    def sql
        @query = "SELECT * FROM backend.usuario" 
        @resultados = ActiveRecord::Base.connection.execute(@query)
        render json: @resultados 
    end

    def para
        @parametros = params[:id]
        render json: @parametros
    end

    def test_validation
        @test = params[:correo]
        @nombre = params[:nombre]
        @val = /^[A-z]+$/.match(@nombre)
        @validator = false
        @errors = []
        if (@nombre)
            @validator = true
        end
        @date = Date.today
        render json: @date
    end

    def error_msg attributo
        "Falta atributo: " << attributo
    end

end