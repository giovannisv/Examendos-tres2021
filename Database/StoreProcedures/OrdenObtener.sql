CREATE PROCEDURE [dbo].[OrdenObtener]
	 @IdOrden int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     O.IdOrden,
     O.CantidadProducto,
     o.Estado,
     
     
     P.IdProducto
     


    FROM dbo.Orden O
    INNER JOIN Producto P
    ON O.IdOrden = O.IdOrden
    WHERE
    (@IdOrden IS NULL OR IdOrden=@IdOrden)

END
