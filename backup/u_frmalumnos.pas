unit u_frmalumnos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  Buttons, ComCtrls, PReport;

type

  { TForm2 }

  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    lv_alumnos: TListView;
    procedure FormCreate(Sender: TObject);
    procedure PRPage1PrintPage(Sender: TObject; ACanvas: TPRCanvas);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.PRPage1PrintPage(Sender: TObject; ACanvas: TPRCanvas);
begin

end;

end.

