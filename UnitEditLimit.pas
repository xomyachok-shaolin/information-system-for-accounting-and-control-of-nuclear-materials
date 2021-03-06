unit UnitEditLimit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.DBCGrids, System.Actions,
  Vcl.ActnList;

type
  TForm27 = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    ADOQueryTypesMaterial: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    Panel4: TPanel;
    DBEdit1: TDBEdit;
    Button4: TButton;
    DataSourceTypesMaterial: TDataSource;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    ActionList1: TActionList;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form27 : TForm27;

implementation

{$R *.dfm}

uses UnitMain, UnitLocations, UnitTypesMaterial;

procedure TForm27.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm27.Button1Click(Sender: TObject);
begin

ADOStoredProc1.Prepared := true;
ADOStoredProc1.Parameters.Refresh;

ADOStoredProc1.Parameters.Items[0].Value := Form17.DBEdit1.Text;

if  DBEdit1.Text = '' then  begin
    Application.MessageBox('??????? ??? ?????????!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[1].Value := ADOQueryTypesMaterial.FieldByName('??_????_?????????').AsString;

if  Edit1.Text = '' then  begin
    Application.MessageBox('??????? ?????????? ?.?.!', '??????', MB_OK or MB_ICONERROR);
    Exit;
end;
ADOStoredProc1.Parameters.Items[2].Value := Edit1.Text;

Try
  ADOStoredProc1.ExecProc;

  Form17.ADOQueryLimit.Requery;
  Form17.DBGrid2.SetFocus;

  Close;
except on E: Exception do
  MessageDlg(E.Message, mtError,[mbOK],0);
  end;
end;

procedure TForm27.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm27.Button4Click(Sender: TObject);
var  Form7_1: TForm7;
begin
  Form7_1 := TForm7.Create(Application);

  Form7_1.Button4.Visible := true;
  Form7_1.Button1.Visible := false;
  Form7_1.Button2.Visible := false;
  Form7_1.Button3.Visible := false;

  Form7_1.ShowModal;
end;

end.
