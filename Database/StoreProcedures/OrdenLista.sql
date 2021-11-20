CREATE PROCEDURE [dbo].[OrdenLista]
	AS
	BEGIN
	SET NOCOUNT ON


	SELECT
	 IdOrden,
	 CantidadProducto,
	 Estado

	FROM Orden
	


	END
