unit UnitPartners;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TForm2 = class(TForm)
    ADOQueryPartners: TADOQuery;
    DBGrid1: TDBGrid;
    DataSourcePartners: TDataSource;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    DataSourceRepresent: TDataSource;
    Label2: TLabel;
    ADOQueryRepresent: TADOQuery;
    DBEdit1: TDBEdit;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    ADOStoredProc1: TADOStoredProc;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    ADOStoredProc2: TADOStoredProc;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Edit2Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses UnitMain, UnitAddRepresenter, UnitEditRepresenter, UnitAddPartner, UnitEditPartner;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  DBGrid1.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm2.DBGrid2CellClick(Column: TColumn);
begin
   DBGrid2.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm2.Edit1Change(Sender: TObject);

var help1, help2 :string;

begin

  help1 := '%'+Form2.Edit1.Text+'%';
  help2 := QuotedStr(help1);
  with Form2.ADOQueryPartners do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???????????_??????? where ??_??????????? like '+help2+
                                              ' or ???????????? like'+help2+
                                              ' or ????? like'+help2+
                                              ' or ??? like'+help2);
    Open;
  end;
end;

procedure TForm2.Edit2Change(Sender: TObject);

var help1, help2 :string;

begin

  help1 := '%'+Form2.Edit2.Text+'%';
  help2 := QuotedStr(help1);
  with Form2.ADOQueryRepresent do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????????????? where ?????????_?????_????????????? like'+help2+
                                              ' or ??????? like'+help2+
                                              ' or ??? like'+help2+
                                              ' or ???????? like'+help2+
                                              ' or ??????????_?????? like'+help2);
    Open;
  end;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
  Form2.DBGrid1.SetFocus;
end;

procedure TForm2.Action1Execute(Sender: TObject);
begin
  Button6Click(Sender);
end;

procedure TForm2.Action2Execute(Sender: TObject);
begin
  Button5Click(Sender);
end;

procedure TForm2.Action3Execute(Sender: TObject);
begin
  Button4Click(Sender);
end;

procedure TForm2.Action4Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm2.Action5Execute(Sender: TObject);
begin
  Button2Click(Sender);
end;

procedure TForm2.Action6Execute(Sender: TObject);
begin
  Button3Click(Sender);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form3 := TForm3.Create(Application);
  Form3.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);

var h1, h2:string;
begin
  Form4 := TForm4.Create(Application);

  h1 := '%'+Form2.DBEdit2.Text+'%';
  h2 := QuotedStr(h1);
  with Form4.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????????????? where ??_????????????? like'+h2);
    Open;
  end;
  Form4.ShowModal;
  DBGrid2.SetFocus;

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if DBGrid2.SelectedRows.Count > 0 then
    begin
      case MessageBox(Form2.Handle,'??????? ?????? ? ??????????????',
        '?????????????',MB_YESNO or MB_ICONQUESTION) of
      IDYES:
        begin
          ADOStoredProc1.Prepared := true;
          ADOStoredProc1.Parameters.Refresh;
          ADOStoredProc1.Parameters.Items[0].Value := DBEdit2.Text;
          Try
            ADOStoredProc1.ExecProc;
          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;

          ADOQueryRepresent.Requery;
          DBGrid2.SetFocus;
        end;
      end
      end
    else
    begin

      MessageBox(Form2.Handle,'???????? ??e??????????!',
        '??????',MB_OK or MB_ICONERROR)
    end;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin

if DBGrid1.SelectedRows.Count > 0 then
    begin
      case MessageBox(Form2.Handle,'??????? ?????? ? ?????????',
        '?????????????',MB_YESNO or MB_ICONQUESTION) of
      IDYES:
        begin
          ADOStoredProc2.Prepared := true;
          ADOStoredProc2.Parameters.Refresh;
          ADOStoredProc2.Parameters.Items[0].Value := DBEdit1.Text;
          Try
            ADOStoredProc2.ExecProc;
          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;

          ADOQueryPartners.Requery;
          DBGrid1.SetFocus;
        end;
      end
      end
    else
    begin

      MessageBox(Form2.Handle,'???????? ????????!',
        '??????',MB_OK or MB_ICONERROR)
    end;
end;

procedure TForm2.Button5Click(Sender: TObject);

var h1, h2:string;
begin
  Form6 := TForm6.Create(Application);

  h1 := '%'+Form2.DBEdit1.Text+'%';
  h2 := QuotedStr(h1);
  with Form6.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???????????_??????? where ??_??????????? like'+h2);
    Open;
  end;
  Form6.ShowModal;
  DBGrid1.SetFocus;

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  Form5 := TForm5.Create(Application);
  Form5.ShowModal;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.DBEdit1Change(Sender: TObject);

var h1, h2:string;
begin
  h1 := '%'+Form2.DBEdit1.Text+'%';
  h2 := QuotedStr(h1);
  with Form2.ADOQueryRepresent do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ????????????? where ??_??????????? like'+h2);
    Open;
  end;

end;

end.
