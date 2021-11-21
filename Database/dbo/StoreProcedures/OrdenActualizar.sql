CREATE PROCEDURE [dbo].[OrdenActualizar]
	 @IdOrden INT,
	@CantidadProducto INT,
    @Estado BIT
AS BEGIN
SET NOCOUNT ON

	BEGIN TRANSACTION TRASA

	BEGIN TRY
	-- AQUI VA EL CODIGO
		
	UPDATE dbo.Orden SET
		CantidadProducto=@CantidadProducto,
		Estado=@Estado

	WHERE IdOrden=@IdOrden

		COMMIT TRANSACTION TRASA
		
		SELECT 0 AS CodeError, '' AS MsgError



	END TRY

	BEGIN CATCH
		SELECT 
				ERROR_NUMBER() AS CodeError
			,	ERROR_MESSAGE() AS MsgError

			ROLLBACK TRANSACTION TRASA
	END CATCH


END
