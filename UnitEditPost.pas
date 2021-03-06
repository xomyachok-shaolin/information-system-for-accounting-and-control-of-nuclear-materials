unit UnitEditPost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.CheckLst, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList;

type
  TForm21 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    DBEdit1: TDBEdit;
    CheckListBox1: TCheckListBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

uses UnitMain, UnitPosts;

procedure TForm21.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm21.Button1Click(Sender: TObject);
begin
ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;


ADOStoredProc1.Parameters.Items[0].Value := Form18.DBEdit1.Text;
if  DBEdit1.Text = '' then  begin
    Application.MessageBox('??????? ???????????? ?????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := DBEdit1.Text;

if CheckListBox1.Checked[0] = True then
  ADOStoredProc1.Parameters.Items[2].Value := 'y'
else
  ADOStoredProc1.Parameters.Items[2].Value := 'n';

if CheckListBox1.Checked[1] = True then
  ADOStoredProc1.Parameters.Items[3].Value := 'y'
else
  ADOStoredProc1.Parameters.Items[3].Value := 'n';

Try
  ADOStoredProc1.ExecProc;
  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;

  Form18.ADOQueryPosts.Requery;
  Form18.DBGrid2.SetFocus;
end;

procedure TForm21.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm21.FormShow(Sender: TObject);
begin

if DBEdit2.Text = 'y' then
  CheckListBox1.Checked[0] := true
else
  CheckListBox1.Checked[0] := false;
if DBEdit3.Text = 'y' then
  CheckListBox1.Checked[1] := true
else
  CheckListBox1.Checked[1] := false;
end;

end.
