unit u_mesas_examenes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, Forms, Controls, Graphics,
  Dialogs, Menus, IniFiles, u_frmalumnos;

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
    restauraEstado;
end;

procedure TfrmPrincipal.mnuAlumnosClick(Sender: TObject);
begin
    TfrmAlumno.SH;
end;

procedure TfrmPrincipal.restauraEstado();
begin

end;


end.

