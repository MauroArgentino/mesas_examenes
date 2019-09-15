unit u_frmalumnos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  Buttons, ComCtrls, DBGrids, DBCtrls, u_frmalumno, sqldb, sqlite3conn;

type

  { TfrmAlumnos }

  TfrmAlumnos = class(TForm)
    BitBtn1: TBitBtn;
    btnNuevo: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    lv_alumnos: TListView;
    procedure btnNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmAlumnos: TfrmAlumnos;

implementation

{$R *.lfm}

{ TfrmAlumnos }

procedure TfrmAlumnos.FormCreate(Sender: TObject);
begin

end;

procedure TfrmAlumnos.btnNuevoClick(Sender: TObject);
begin
   frmAlumno := TfrmAlumno.Create(nil);
   try
      frmAlumno.Caption:= 'Nuevo Alumno';
      frmAlumno.ShowModal;

   finally
   end;

end;




end.

