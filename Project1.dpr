program Project1;







uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {Form1},
  UnitPartners in 'UnitPartners.pas' {Form2},
  UnitAddRepresenter in 'UnitAddRepresenter.pas' {Form4},
  UnitEditRepresenter in 'UnitEditRepresenter.pas' {Form3},
  UnitEditPartner in 'UnitEditPartner.pas' {Form6},
  UnitAddPartner in 'UnitAddPartner.pas' {Form5},
  UnitTypesMaterial in 'UnitTypesMaterial.pas' {Form7},
  UnitAddTypeMaterial in 'UnitAddTypeMaterial.pas' {Form8},
  UnitEditTypeMaterial in 'UnitEditTypeMaterial.pas' {Form9},
  UnitTypeContainer in 'UnitTypeContainer.pas' {Form10},
  UnitAddTypeContainer in 'UnitAddTypeContainer.pas' {Form11},
  UnitEditTypeContainer in 'UnitEditTypeContainer.pas' {Form12},
  UnitWeighers in 'UnitWeighers.pas' {Form13},
  UnitAddWeigher in 'UnitAddWeigher.pas' {Form14},
  UnitEditWeigher in 'UnitEditWeigher.pas' {Form15},
  UnitMaterials in 'UnitMaterials.pas' {Form16},
  UnitLocations in 'UnitLocations.pas' {Form17},
  UnitPosts in 'UnitPosts.pas' {Form18},
  UnitEmployee in 'UnitEmployee.pas' {Form19},
  UnitAddPost in 'UnitAddPost.pas' {Form20},
  UnitEditPost in 'UnitEditPost.pas' {Form21},
  UnitAddEmployee in 'UnitAddEmployee.pas' {Form22},
  UnitEditEmployee in 'UnitEditEmployee.pas' {Form23},
  UnitAddLocation in 'UnitAddLocation.pas' {Form24},
  UnitEditLocation in 'UnitEditLocation.pas' {Form25},
  UnitAddLimit in 'UnitAddLimit.pas' {Form26},
  UnitEditLimit in 'UnitEditLimit.pas' {Form27},
  UnitInvoice in 'UnitInvoice.pas' {Form28},
  UnitAddInvoice in 'UnitAddInvoice.pas' {Form29},
  UnitInvMat in 'UnitInvMat.pas' {Form30},
  UnitAddInvMat in 'UnitAddInvMat.pas' {Form31},
  UnitAddNewLocate in 'UnitAddNewLocate.pas' {Form32},
  UnitEditInvMat in 'UnitEditInvMat.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TForm19, Form19);
  Application.CreateForm(TForm20, Form20);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TForm22, Form22);
  Application.CreateForm(TForm23, Form23);
  Application.CreateForm(TForm24, Form24);
  Application.CreateForm(TForm25, Form25);
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm29, Form29);
  Application.CreateForm(TForm30, Form30);
  Application.CreateForm(TForm31, Form31);
  Application.CreateForm(TForm32, Form32);
  Application.Run;
end.
