unit UnitEditTypeContainer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
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
  Form12: TForm12;

implementation

{$R *.dfm}

uses UnitMain, UnitTypeContainer;

procedure TForm12.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm12.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

ADOStoredProc1.Parameters.Items[0].Value := Form10.DBEdit1.Text;
if  DBEdit1.Text = '' then  begin
    Application.MessageBox('??????? ??? ??????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := DBEdit1.Text;
if  DBEdit2.Text = '' then begin
    Application.MessageBox('??????? ????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := DBEdit2.Text;
if  DBEdit3.Text = '' then begin
    Application.MessageBox('??????? ?????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[3].Value := DBEdit3.Text;
if  DBEdit4.Text = '' then begin
    Application.MessageBox('??????? ????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[4].Value := DBEdit4.Text;
if  DBEdit5.Text = '' then begin
    Application.MessageBox('??????? ?????? ??????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[5].Value := DBEdit5.Text;


Try
  ADOStoredProc1.ExecProc;
  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;


  Form10.ADOQueryTypesContainer.Requery;
  Form10.DBGrid2.SetFocus;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm12.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Form12.Close;
end;

end.
