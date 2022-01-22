unit UnitAddTypeMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses UnitMain, UnitTypesMaterial;

procedure TForm8.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm8.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

if  Edit1.Text = '' then  begin
    Application.MessageBox('¬ведите код типа материала!', 'ќшибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[0].Value := Edit1.Text;
if  Edit2.Text = '' then begin
    Application.MessageBox('¬ведите наименование материала!', 'ќшибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := Edit2.Text;
if  Edit3.Text = '' then begin
    Application.MessageBox('¬ведите вес материала!', 'ќшибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := Edit3.Text;

Try
  ADOStoredProc1.ExecProc;
  Close;
except on E: Exception do
     MessageDlg(E.Message, mtError,[mbOK],0);
  end;


  Form7.ADOQueryTypesMaterial.Requery;
  Form7.DBGrid2.SetFocus;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm8.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Form8.Close;
end;

end.

