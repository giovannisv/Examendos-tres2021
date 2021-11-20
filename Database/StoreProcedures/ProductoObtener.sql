CREATE PROCEDURE [dbo].[ProductoObtener]
	 @IdProducto int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     IdProducto,
     NombreProducto,
     PrecioProducto 
        
     

    FROM dbo.Producto   
    

END
