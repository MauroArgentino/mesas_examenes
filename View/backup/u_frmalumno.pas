unit u_frmalumno;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, u_conexion;

type

  { TfrmAlumno }

  TfrmAlumno = class(TForm)
    btnGuardar: TButton;
    lblApellidos: TLabel;
    lblNombres: TLabel;
    txtApellidos: TEdit;
    lblDNI: TLabel;
    txtNombres: TEdit;
    txtDNI: TEdit;
    procedure FormCreate(Sender: TObject);
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

procedure TfrmAlumno.FormCreate(Sender: TObject);
begin

end;

procedure TfrmAlumno.registrarAlumno(Sender: TObject);
begin
  if (txtApellidos.Text <> '') and (txtApellidos.Text <> '') and
    (txtApellidos.Text <> '') then
  begin
      bHizoRegistro:= True;
      DataModule1.SQLQuery1.SQL.Clear;
      DataModule1.SQLQuery1.SQL.Add('INSERT INTO alumnos (apellidos, nombres, dni) ');
      DataModule1.SQLQuery1.SQL.Add('VALUES (:apellidos, :nombres, :dni) ');
      DataModule1.SQLQuery1.Params.ParamByName('apellidos').AsString := txtApellidos.Text;
      DataModule1.SQLQuery1.Params.ParamByName('nombres').AsString := txtNombres.Text;
      DataModule1.SQLQuery1.Params.ParamByName('dni').AsString := txtDNI.Text;
      DataModule1.SQLQuery1.ExecSQL;
      txtApellidos.Text := '';
      txtNombres.Text := '';
      txtDNI.Text := '';
      Close;
  end
  else
   begin
     MessageDlg('Información', 'Por favor rellene todos los campos.', mtWarning, [mbYes], 0);
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
