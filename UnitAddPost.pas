unit UnitAddPost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls,
  Vcl.CheckLst, Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TForm20 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    Edit1: TEdit;
    CheckListBox1: TCheckListBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
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
  Form20: TForm20;

implementation

{$R *.dfm}

uses UnitMain, UnitPosts;

procedure TForm20.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm20.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

if  Edit1.Text = '' then  begin
    Application.MessageBox('??????? ???????????? ?????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[0].Value := Edit1.Text;

if CheckListBox1.Checked[0] = True then
  ADOStoredProc1.Parameters.Items[1].Value := 'y'
else
  ADOStoredProc1.Parameters.Items[1].Value := 'n';

if CheckListBox1.Checked[1] = True then
  ADOStoredProc1.Parameters.Items[2].Value := 'y'
else
  ADOStoredProc1.Parameters.Items[2].Value := 'n';

Try
  ADOStoredProc1.ExecProc;
  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;


  Form18.ADOQueryPosts.Requery;
  Form18.DBGrid2.SetFocus;
end;

procedure TForm20.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
