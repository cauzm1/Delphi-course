program Sistema_Financeiro;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {frmSistema},
  frmCadastroProdutos in 'frmCadastroProdutos.pas' {frmCadastroProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSistema, frmSistema);
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  Application.Run;
end.
