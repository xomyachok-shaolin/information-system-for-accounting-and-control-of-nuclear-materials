unit UnitEmployee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TForm19 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    DBEdit1: TDBEdit;
    DataSourceEmployee: TDataSource;
    ADOQueryEmployee: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    Panel7: TPanel;
    DBEdit2: TDBEdit;
    Button4: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

uses UnitMain, UnitAddEmployee, UnitEditEmployee, UnitAddLocation, UnitEditLocation,
  UnitAddInvoice;


procedure TForm19.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm19.Action2Execute(Sender: TObject);
begin
  Button2Click(Sender);
end;

procedure TForm19.Action3Execute(Sender: TObject);
begin
  Button3Click(Sender);
end;

procedure TForm19.Action4Execute(Sender: TObject);
begin
  Button4Click(Sender);
end;

procedure TForm19.Button1Click(Sender: TObject);
begin
  Form22 := TForm22.Create(Application);
  Form22.ShowModal;
end;

procedure TForm19.Button2Click(Sender: TObject);

var h1, h2:string;
begin

  Form23 := TForm23.Create(Application);

  h1 := '%'+Form19.DBEdit1.Text+'%';
  h2 := QuotedStr(h1);

  with Form23.ADOQueryBoss do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? like'+h2);
    Open;
  end;
  Form23.ShowModal;
  DBGrid2.SetFocus;
end;


procedure TForm19.Button3Click(Sender: TObject);
begin

if DBGrid2.DataSource.DataSet.IsEmpty = false then
    begin
      case MessageBox(Form19.Handle,'??????? ?????? ? ???????????',
        '?????????????',MB_YESNO or MB_ICONQUESTION) of
      IDYES:
        begin
          ADOStoredProc1.Prepared := true;
          ADOStoredProc1.Parameters.Refresh;
          ADOStoredProc1.Parameters.Items[0].Value := DBEdit1.Text;
          Try
            ADOStoredProc1.ExecProc;
          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;

          ADOQueryEmployee.Requery;
          DBGrid2.SetFocus;
        end;
      end

    end
else
    begin
      MessageBox(Form19.Handle,'?????? ?? ???????!',
        '??????',MB_OK or MB_ICONERROR)
    end;
end;

procedure TForm19.Button4Click(Sender: TObject);

var h1, h2:string;

begin
  h1 := DBEdit1.Text;
  h2 := QuotedStr(h1);

  with Form22.ADOQueryBoss do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? = '+h2);
    open;
  end;

  Form22.DBEdit1.DataSource.DataSet.Refresh;

  with Form23.ADOQueryBoss do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? = '+h2);
    open;
  end;

  Form23.Edit1.Text := ADOQueryEmployee.FieldByName('??? ??????????').AsString;

  with Form24.ADOQueryBoss do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? = '+h2);
    open;
  end;

  Form24.DBEdit1.DataSource.DataSet.Refresh;

  with Form25.ADOQueryBoss do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? = '+h2);
    open;
  end;

  Form25.DBEdit1.DataSource.DataSet.Refresh;

  if Form29.StaticVar = 0 then
  begin
  with Form29.ADOQueryBoss do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? = '+h2);
    open;
  end;
    Form29.DBEdit1.DataSource.DataSet.Refresh;
  end;

  if Form29.StaticVar = 1 then
  begin
  with Form29.ADOQueryStartEmp do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? = '+h2);
    open;
  end;
    Form29.DBEdit2.DataSource.DataSet.Refresh;
  end;

  if Form29.StaticVar = 2 then
  begin
  with Form29.ADOQueryFinEmp do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? = '+h2);
    open;
  end;
    Form29.DBEdit3.DataSource.DataSet.Refresh;
  end;

  close;
end;

procedure TForm19.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm19.DBEdit2Change(Sender: TObject);
begin
  if DBEdit2.Text = 'n' then
    begin
      Panel7.Caption := '????????????';
      Panel7.Visible := True;
    end
  else
    begin
      Panel7.Visible := False;
    end;
end;

procedure TForm19.Edit2Change(Sender: TObject);
var help1, help2 :string;
begin

  help1 := '%'+Form19.Edit2.Text+'%';
  help2 := QuotedStr(help1);
  with Form19.ADOQueryEmployee do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where  "????????? ?" like '+help2+
                                  ' or "??? ??????????" like '+help2+
                                  ' or "??? ??????????" like '+help2+
                                  ' or "?????????" like '+help2+
                                  ' or "??? ????????????" like '+help2+
                                  ' or "???? ????????" like '+help2+
                                  ' or "???????" like '+help2+
                                  ' or "???" like '+help2+
                                  ' or "?????" like '+help2);
    Open;
  end;
end;


procedure TForm19.FormCreate(Sender: TObject);
begin
   DBGrid2.Focused;
end;

end.
