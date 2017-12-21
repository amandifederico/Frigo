#!/bin/bash


#rails g controller Welcome index
echo "Scaffold de tablas..."


#
#
#
#modificar
#
#
#
rails g scaffold Position name:string description:string
#---------------
rails g scaffold Type name:string description:string
#---------------
rails g scaffold Place description:string
#---------------
rails g scaffold City name:string province:string cp:integer
#---------------
rails g scaffold Agent last_name:string name:string dni:integer position:references up_date:date down_date:date
#---------------
rails g scaffold Transport coupled:integer capacity:integer plate:string model:string driver:string
rails g scaffold Driver name:string last_name:string dni:integer observation:string transport:references
#---------------

rails g scaffold Turn date:date description:string
rails g scaffold TurnDetail turn:references agent:references place:references position:references observation:string
#---------------
rails g scaffold Producer name:string up_date:date down_date:date city:references observation:string
#---------------
rails g scaffold Lot dte:integer turn:references producer:references 
rails g scaffold LotDetail lot:references animal:references quantity:integer observation:string
#---------------
rails g scaffold Guide lot:references city:references arrival_date:date transport:references #ACA EN LA GUIA NECESITAMOS ORIGEN Y DESTINO
#---------------

#rails g scaffold Animal description:string
#rails g scaffold Race description:string
rails g scaffold AnimalType description:string #ejemplo: bovino, ovino, porcino, etc
rails g scaffold Animal description:string animal_type:references average_value:integer # ejemplo: Vaca Australiana, Bovino, 100kg
#---------------
rails g scaffold RangeTroopNumber min:integer max:integer
#---------------
rails g scaffold Product lot:references description:string #ejemplo: faena del lote X
rails g scaffold ProductDetail product:references weight:integer weight_control:integer observation:string #ejemplo 100kg, 98kg, algo paso
#---------------
rails g scaffold SubProductType description:string
rails g scaffold SubProduct lot:references observartion:string #ejemplo menudencia del lote X
rails g scaffold SubProductDetail sub_product:references sub_product_type:references weight:integer weight_control:integer observation:string #seso, 5kg, 5kg, todo ok
#---------------
