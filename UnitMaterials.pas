unit UnitMaterials;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TForm16 = class(TForm)
    ADOQueryTypesMaterial: TADOQuery;
    DBGrid1: TDBGrid;
    DataSourceTypesMaterial: TDataSource;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    DataSourceAU: TDataSource;
    Label2: TLabel;
    ADOQueryAU: TADOQuery;
    DBEdit1: TDBEdit;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Panel4: TPanel;
    Panel7: TPanel;
    DBEdit2: TDBEdit;
    ADOStoredProc1: TADOStoredProc;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Edit2Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    isForm : integer;
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses UnitMain, UnitAddRepresenter, UnitEditRepresenter, UnitAddPartner, UnitEditPartner,
UnitAddNewLocate, UnitAddInvoice;

procedure TForm16.DBGrid1CellClick(Column: TColumn);
begin
  DBGrid1.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm16.DBGrid2CellClick(Column: TColumn);
begin
   DBGrid2.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm16.Edit1Change(Sender: TObject);

var help1, help2 :string;

begin

  help1 := '%'+Form16.Edit1.Text+'%';
  help2 := QuotedStr(help1);
  with Form16.ADOQueryTypesMaterial do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ???_????????? where ????????_????????? like '+help2+
                                              ' or ???_????_????????? like'+help2+
                                              ' or ???_???????_???????? like'+help2);
    Open;
  end;
end;

procedure TForm16.Edit2Change(Sender: TObject);

var help1, help2 :string;

begin

  help1 := '%'+Form16.Edit2.Text+'%';
  help2 := QuotedStr(help1);
  with Form16.ADOQueryAU do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ??_?? where "???????? ? ??" like'+help2);
    Open;
  end;

end;

procedure TForm16.FormShow(Sender: TObject);
begin
  Form16.Button1.Enabled := False;
  Form16.Button2.Enabled := False;

  DBEdit1Change(Sender);

end;

procedure TForm16.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm16.Action2Execute(Sender: TObject);
begin
  Button2Click(Sender);
end;

procedure TForm16.Button1Click(Sender: TObject);
begin

  case MessageBox(Form16.Handle,'?? ???????, ??? ?????? ????????? ????. ????????',
        '?????????????',MB_YESNO or MB_ICONQUESTION) of
      IDYES:
        begin
          ADOStoredProc1.Prepared := true;
          ADOStoredProc1.Parameters.Refresh;

          ADOStoredProc1.Parameters.Items[0].Value := DBEdit2.Text;
          ADOStoredProc1.Parameters.Items[1].Value := Form29.id_inv;  // ??????

          Try
            ADOStoredProc1.ExecProc;
            ADOQueryAU.Requery;

            Application.MessageBox('??????????? ????????? ?????????????', '?????????? ?????????', MB_OK or MB_ICONINFORMATION);

          except on E: Exception do
            MessageDlg(E.Message, mtError,[mbOK],0);
          end;
        end;

  end;

end;

procedure TForm16.Button2Click(Sender: TObject);
var h1, h2:string;
begin
  Form32 := TForm32.Create(Application);

  Form32.DBEdit1.Text := DBEdit2.Text;


  h1 := DBEdit2.Text;
  h2 := QuotedStr(h1);
  with Form32.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ??_?? where ??_?? ='+h2);
    Open;
  end;


  Form32.ShowModal;

  ADOQueryAU.Requery;
end;

procedure TForm16.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm16.DBEdit1Change(Sender: TObject);

var h1, h2:string;
begin
  h1 := DBEdit1.Text;
  h2 := QuotedStr(h1);
  with ADOQueryAU do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ??_?? where ???_????????? = 2 and ??_??????????? is not null '+
      'and "?? ???? ?????????" ='+h2);
    Open;
  end;

end;

end.
