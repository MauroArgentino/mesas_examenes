unit u_alumno;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmAlumno }

  TfrmAlumno = class(TForm)
    btnGuardar: TButton;
    lblApellidos1: TLabel;
    lblApellidos2: TLabel;
    txtApellidos: TEdit;
    lblApellidos: TLabel;
    txtNombres: TEdit;
    txtDNI: TEdit;
    procedure registrarAlumno(Sender: TObject);
  private

  public
    bHizoRegistro: boolean;

    function getApellidos: string;
    function getNombres: string;
    function getDNI: string;
  end;

var
  frmAlumno: TfrmAlumno;

implementation

{$R *.lfm}

{ TfrmAlumno }

procedure TfrmAlumno.registrarAlumno(Sender: TObject);
begin
  if (txtApellidos.Text <> '') and (txtApellidos.Text <> '') and
    (txtApellidos.Text <> '') then
  begin
      bHizoRegistro:= True;
      Close;
  end;
end;

function TfrmAlumno.getApellidos: string;
begin
  Result := txtApellidos.Text;
end;

function TfrmAlumno.getNombres: string;
begin
  Result := txtNombres.Text;
end;

function TfrmAlumno.getDNI: string;
begin
  Result := txtDNI.Text;
end;


end.
