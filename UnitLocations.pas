unit UnitLocations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TForm17 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ADOStoredProc1: TADOStoredProc;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    GroupBox2:TGroupBox;
    ADOQueryLocation: TADOQuery;
    DataSourceLocation: TDataSource;
    ADOQueryLimit: TADOQuery;
    DataSourceLimit: TDataSource;
    Panel7: TPanel;
    Panel8: TPanel;
    ADOStoredProc2: TADOStoredProc;
    DBEdit3: TDBEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;


    procedure Edit3Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses UnitMain, UnitAddLocation, UnitEditLocation, UnitAddLimit, UnitEditLimit,
  UnitAddInvMat, UnitAddNewLocate;

procedure TForm17.Action1Execute(Sender: TObject);
begin
  Button6Click(Sender);
end;

procedure TForm17.Action2Execute(Sender: TObject);
begin
  Button5Click(Sender);
end;

procedure TForm17.Action3Execute(Sender: TObject);
begin
  Button4Click(Sender);
end;

procedure TForm17.Action4Execute(Sender: TObject);
begin
  Button8Click(Sender);
end;

procedure TForm17.Action5Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm17.Action6Execute(Sender: TObject);
begin
  Button2Click(Sender);
end;

procedure TForm17.Action7Execute(Sender: TObject);
begin
  Button3Click(Sender);
end;

procedure TForm17.Button1Click(Sender: TObject);
begin
  Form26 := TForm26.Create(Application);

  Form26.DBEdit1.Text := '';

  Form26.ShowModal;
end;

procedure TForm17.Button2Click(Sender: TObject);

var h1, h2, h3, h4:string;
begin

  Form27 := TForm27.Create(Application);

  h1 := DBEdit3.Text;
  h2 := QuotedStr(h1);

  with Form27.ADOQueryTypesMaterial do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???_????????? where ??_????_????????? ='+h2);
    Open;
  end;

  h3 := DBEdit2.Text;
  h4 := QuotedStr(h3);

  with Form27.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????_???? where ??_????_???????? ='+h4);
    Open;
  end;

  Form27.Edit1.Text := Form27.ADOQuery1.FieldByName('???????? ????. ???????, ?').AsString;

  Form27.ShowModal;
  DBGrid2.SetFocus;
end;


procedure TForm17.Button3Click(Sender: TObject);
begin

if DBGrid1.DataSource.DataSet.IsEmpty = false then
    begin
      case MessageBox(Form17.Handle,'??????? ?????? ? ????????',
        '?????????????',MB_YESNO or MB_ICONQUESTION) of
      IDYES:
        begin
          ADOStoredProc1.Prepared := true;
          ADOStoredProc1.Parameters.Refresh;
          ADOStoredProc1.Parameters.Items[0].Value := DBEdit2.Text;
          Try
            ADOStoredProc1.ExecProc;
            ADOQueryLimit.Requery;
            DBGrid2.SetFocus;
          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;
        end
      end
    end
else
    begin
      MessageBox(Form17.Handle,'?????? ?? ???????!',
        '??????',MB_OK or MB_ICONERROR)
    end;
end;


procedure TForm17.Button4Click(Sender: TObject);
begin

if DBGrid1.DataSource.DataSet.IsEmpty = false then
    begin
      case MessageBox(Form17.Handle,'??????? ?????? ? ???????????????',
        '?????????????',MB_YESNO or MB_ICONQUESTION) of
      IDYES:
        begin
          ADOStoredProc2.Prepared := true;
          ADOStoredProc2.Parameters.Refresh;
          ADOStoredProc2.Parameters.Items[0].Value := DBEdit1.Text;
          Try
            ADOStoredProc2.ExecProc;
            ADOQueryLocation.Requery;
            DBGrid1.SetFocus;
          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;
        end;
      end

    end
else
    begin
      MessageBox(Form17.Handle,'?????? ?? ???????!',
        '??????',MB_OK or MB_ICONERROR)
    end;
end;

procedure TForm17.Button5Click(Sender: TObject);

var h1, h2, h3, h4:string;
begin

  Form25 := TForm25.Create(Application);

  h1 := '%'+Form17.DBEdit1.Text+'%';
  h2 := QuotedStr(h1);

  with Form25.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ?????????? where ??_??????????? like'+h2);
    Open;
  end;

  Form25.ComboBox1.Text := Form25.ADOQuery1.Fields[1].AsString;
  Form25.ComboBox1Change(Sender);
  Form25.ComboBox2.Text := Form25.ADOQuery1.Fields[2].AsString;
  Form25.ComboBox2Change(Sender);
  Form25.ComboBox3.Text := Form25.ADOQuery1.Fields[3].AsString;

  h3 := Form25.ADOQuery1.Fields[5].AsString;
  h4 := QuotedStr(h3);

  with Form25.ADOQueryBoss do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????? where ??_?????????? = '+h4);
    open;
  end;

  Form25.ShowModal;
  DBGrid1.SetFocus;
end;

procedure TForm17.Button6Click(Sender: TObject);
begin
  Form24 := TForm24.Create(Application);
  Form24.ShowModal;
end;

procedure TForm17.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm17.Button8Click(Sender: TObject);

var h1, h2:string;

begin

  h1 := DBEdit1.Text;
  h2 := QuotedStr(h1);

  with Form31.ADOQuery2 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ?????????? where ??_??????????? ='+h2);
    Open;
  end;

  with Form32.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ?????????? where ??_??????????? ='+h2);
    Open;
  end;

  close;

end;

procedure TForm17.DBEdit1Change(Sender: TObject);

var h1, h2:string;
begin
  h1 := '%'+DBEdit1.Text+'%';
  h2 := QuotedStr(h1);
  with ADOQueryLimit do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????_???? where ??_????????? like'+h2);
    Open;
  end;

end;
procedure TForm17.Edit1Change(Sender: TObject);
var help1, help2 :string;
begin
  help1 := '%'+Form17.Edit1.Text+'%';
  help2 := QuotedStr(help1);
  with Form17.ADOQueryLocation do
  begin
    Close;
    SQL.Clear;

    SQL.Add('select * from ?????????? where "??????" like'+help2);
    Open;
  end;
end;

procedure TForm17.Edit2Change(Sender: TObject);
var help1, help2, h3, h4 :string;
begin
  help1 := '%'+Form17.Edit2.Text+'%';
  help2 := QuotedStr(help1);

  h3 := '%'+Form17.DBEdit1.Text+'%';
  h4 := QuotedStr(h3);

  with Form17.ADOQueryLimit do
  begin
    Close;
    SQL.Clear;

    SQL.Add('select * from ????_???? where "??? ?????????" like'+help2+
      ' and ??_????????? like'+h4);
    Open;
  end;
end;

procedure TForm17.Edit3Change(Sender: TObject);
var help1, help2 :string;
begin
  help1 := '%'+Form17.Edit3.Text+'%';
  help2 := QuotedStr(help1);
  with Form17.ADOQueryLocation do
  begin
    Close;
    SQL.Clear;

    SQL.Add('select * from ?????????? where ??? like'+help2);
    Open;
  end;
end;

procedure TForm17.FormShow(Sender: TObject);
begin
  DBEdit1Change(Sender);
end;

end.
