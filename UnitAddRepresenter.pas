unit UnitAddRepresenter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses UnitPartners;

procedure TForm3.Action1Execute(Sender: TObject);
begin
     Button1Click(Sender);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

ADOStoredProc1.Parameters.Items[0].Value := Form2.DBEdit1.Text;
if  Edit1.Text = '' then  begin
    Application.MessageBox('Введите фамилию представителя!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := Edit1.Text;
if  Edit2.Text = '' then begin
    Application.MessageBox('Введите имя представителя!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := Edit2.Text;
if  Edit3.Text = '' then begin
    Application.MessageBox('Введите отчество представителя!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := Edit3.Text;
if  Edit5.Text = '' then begin
    Application.MessageBox('Введите паспортные данные представителя!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[4].Value := Edit5.Text;
if  Edit4.Text = '' then begin
    Application.MessageBox('Введите табельный номер представителя!', 'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[5].Value := Edit4.Text;

Try
  ADOStoredProc1.ExecProc;
  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;


  Form2.ADOQueryRepresent.Requery;
  Form2.DBGrid2.SetFocus;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
