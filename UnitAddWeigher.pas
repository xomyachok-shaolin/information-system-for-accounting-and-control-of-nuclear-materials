unit UnitAddWeigher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
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
  Form14: TForm14;

implementation

{$R *.dfm}

uses UnitMain, UnitWeighers;

procedure TForm14.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm14.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

if  Edit1.Text = '' then  begin
    Application.MessageBox('??????? ??????????? ? ?????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := Edit1.Text;
if  Edit2.Text = '' then begin
    Application.MessageBox('??????? ?????? ????? (????. ?????????? ???)!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := Edit2.Text;
if  Edit3.Text = '' then begin
    Application.MessageBox('??????? ??????????? ?????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[4].Value := Edit3.Text;
if  Edit4.Text = '' then begin
    Application.MessageBox('??????? ???????? ? ?????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[0].Value := Edit4.Text;
if  Edit5.Text = '' then begin
    Application.MessageBox('??????? ????? ?????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[5].Value := Edit5.Text;
if  DateTimePicker1.Time = Null then begin
    Application.MessageBox('??????? ???? ?????????? ?????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := DateTimePicker1.DateTime;

Try
  ADOStoredProc1.ExecProc;
  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;


  Form13.ADOQueryWeighers.Requery;
  Form13.DBGrid2.SetFocus;
end;

procedure TForm14.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
