unit u_conexion;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb;

type

    { TConexionDatos }

    TConexionDatos = class (TDataModule)
      SQLConexion: TSQLite3Connection;
      SQLTransaccion: TSQLTransaction;
      procedure DataModuleCreate(Sender: TObject);
      private
         {Declaraciones privadas}
      public
         {Declaraciones públicas}
    end;

 implementation

 var
      ConexionDatos: TConexionDatos;

{ TConexionDatos }

procedure TConexionDatos.DataModuleCreate(Sender: TObject);
begin

end;

end.

