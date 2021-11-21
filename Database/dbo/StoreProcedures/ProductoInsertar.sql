﻿CREATE PROCEDURE [dbo].[ProductoInsertar]
	@NombreProducto Varchar (50),
	@PrecioProducto int
	
	
AS BEGIN
SET NOCOUNT ON

	BEGIN TRANSACTION TRASA

	BEGIN TRY
		
		INSERT INTO dbo.Producto 
		(	       
	      NombreProducto,
		  PrecioProducto
		)
		VALUES
		(
		
	      @NombreProducto,
		  @PrecioProducto
		)

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
