unit u_frmmesas_examenes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, Forms, Controls, Graphics,
  Dialogs, Menus, IniFiles, u_frmalumnos, u_conexion;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    mnuAlumnos: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    conexionSQLite3: TSQLite3Connection;
    procedure FormCreate(Sender: TObject);
    procedure mnuAlumnosClick(Sender: TObject);
    procedure restauraEstado();
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
   SQLiteLibraryName:= 'sqlite3.dll';
   DataModule1.SQLite3Connection1.Open;
   DataModule1.SQLTransaction1.Active := True;
   restauraEstado;
end;

procedure TfrmPrincipal.mnuAlumnosClick(Sender: TObject);
begin
   frmAlumnos := TfrmAlumnos.Create(nil);
   frmAlumnos.ShowModal;
end;



procedure TfrmPrincipal.restauraEstado();
begin

end;


end.

