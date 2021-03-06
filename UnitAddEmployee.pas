unit UnitAddEmployee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList;

type
  TForm22 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DataSourcePosts: TDataSource;
    ADOQueryPosts: TADOQuery;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Memo1: TMemo;
    Panel3: TPanel;
    Label12: TLabel;
    Edit7: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    Label13: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSourceBoss: TDataSource;
    ADOQueryBoss: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    DBEdit1: TDBEdit;
    Button4: TButton;
    CheckBox2: TCheckBox;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form22 : TForm22;

implementation

{$R *.dfm}

uses UnitMain, UnitEmployee;

procedure TForm22.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm22.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

if  Edit7.Text = '' then  begin
    Application.MessageBox('??????? ????????? ? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[0].Value := Edit7.Text;

if CheckBox2.Checked then
  ADOStoredProc1.Parameters.Items[1].Value := ADOQueryBoss.Fields[0].Text
else
  ADOStoredProc1.Parameters.Items[1].Value := null;

if  DBLookupComboBox1.Text = '' then  begin
    Application.MessageBox('???????? ????????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := DBLookupComboBox1.KeyValue;


if  Edit1.Text = '' then  begin
    Application.MessageBox('??????? ??????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := Edit1.Text;

if  Edit2.Text = '' then  begin
    Application.MessageBox('??????? ??? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[4].Value := Edit2.Text;

if  Edit3.Text = '' then  begin
    Application.MessageBox('??????? ???????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[5].Value := Edit3.Text;

ADOStoredProc1.Parameters.Items[6].Value := DateTimePicker1.Date;
ADOStoredProc1.Parameters.Items[7].Value := ComboBox1.Text;
ADOStoredProc1.Parameters.Items[8].Value := Memo1.Text;

if  StringReplace(Trim(MaskEdit1.Text), ' ', '',
  [rfReplaceAll, rfIgnoreCase])  = '' then  begin
    Application.MessageBox('??????? ?????????? ?????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[9].Value := StringReplace(Trim(MaskEdit1.Text), ' ', '',
  [rfReplaceAll, rfIgnoreCase]);

if  Trim(MaskEdit3.Text) = '' then  begin
    Application.MessageBox('??????? ??? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;

ADOStoredProc1.Parameters.Items[10].Value := MaskEdit3.Text;

if StringReplace(StringReplace(Trim(MaskEdit2.Text), ' ', '',
  [rfReplaceAll, rfIgnoreCase]), '-', '',
  [rfReplaceAll, rfIgnoreCase]) = '' then  begin
    Application.MessageBox('??????? ????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[11].Value := MaskEdit2.Text;

if CheckBox1.Checked = true then
  ADOStoredProc1.Parameters.Items[12].Value := 'y'
else
  ADOStoredProc1.Parameters.Items[12].Value := 'n';

Try
  ADOStoredProc1.ExecProc;
  Form19.ADOQueryEmployee.Requery;
  Form19.DBGrid2.SetFocus;
  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;

end;

procedure TForm22.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm22.Button4Click(Sender: TObject);
var  Form19: TForm19;
begin
  Form19 := TForm19.Create(Application);

  Form19.Button4.Visible := true;
  Form19.Button1.Visible := false;
  Form19.Button2.Visible := false;
  Form19.Button3.Visible := false;

  Form19.ShowModal;
end;



procedure TForm22.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    begin
        DBEdit1.Visible := true;
        Button4.Visible := true;
    end
  else
    begin
        DBEdit1.Visible := false;
        Button4.Visible := false;
    end;
end;

end.
