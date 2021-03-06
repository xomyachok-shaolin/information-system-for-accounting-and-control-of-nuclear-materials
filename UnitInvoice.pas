unit UnitInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TForm28 = class(TForm)
    ADOQueryInvoice: TADOQuery;
    DBGrid1: TDBGrid;
    DataSourceInvoice: TDataSource;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    DataSourceAU: TDataSource;
    ADOQueryAU: TADOQuery;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Button7: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Panel4: TPanel;
    Panel7: TPanel;
    DBNavigator2: TDBNavigator;
    Panel2: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    DBText1: TDBText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    DBEdit1: TDBEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form28: TForm28;

implementation

{$R *.dfm}

uses UnitMain, UnitAddRepresenter, UnitEditRepresenter, UnitAddPartner, UnitEditPartner,
  UnitAddInvoice;


procedure TForm28.DBEdit1Change(Sender: TObject);

var h1, h2:string;
begin
  h1 := Form28.DBEdit1.Text;
  h2 := QuotedStr(h1);
  with Form28.ADOQueryAU do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ??_?? where "??_?????????" ='+h2);
    Open;
  end;

end;

procedure TForm28.DBGrid1CellClick(Column: TColumn);
begin
  DBGrid1.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm28.DBGrid2CellClick(Column: TColumn);
begin
   DBGrid2.SelectedRows.CurrentRowSelected := True;
end;

procedure TForm28.Edit1Change(Sender: TObject);

var help1, help2 :string;

begin

  help1 := '%'+Edit1.Text+'%';
  help2 := QuotedStr(help1);
  with ADOQueryInvoice do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ?????? where ??_????????? is not null'+
                                  ' and "? ?????????" like '+help2);
    Open;
  end;
end;


procedure TForm28.FormShow(Sender: TObject);
begin
  Form28.DBEdit1Change(Sender);
end;

procedure TForm28.Action1Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm28.Action3Execute(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TForm28.Button1Click(Sender: TObject);
begin
    Form29 := TForm29.Create(Application);
    Form29.ShowModal;

    ADOQueryInvoice.Requery;
    DBEdit1Change(Sender);
end;

procedure TForm28.Button7Click(Sender: TObject);
begin
  Close;
end;

end.
