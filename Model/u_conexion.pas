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
      Constructor Create;
      procedure DataModuleCreate(Sender: TObject);
      private
         {Declaraciones privadas}
      public
         {Declaraciones públicas}
    end;

 implementation

   Constructor TConexionDatos.Create;
    begin
      SQLConexion.DatabaseName:= 'mesasexamenes.sqlite3';

    end;

 var
      ConexionDatos: TConexionDatos;

{ TConexionDatos }

procedure TConexionDatos.DataModuleCreate(Sender: TObject);
begin

end;

end.

