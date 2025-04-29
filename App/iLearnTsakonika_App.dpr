//Description: iLearnTsakonika App
//Source: https://github.com/Zoomicon/iLearnTsakonika_App (based on READCOM_App - https://github.com/Zoomicon/READCOM_App)
//Author: George Birbilis (https://zoomicon.com)

//Dependencies: see <DEPENDENCIES.md>
program iLearnTsakonika_App;

  {$R *.dres} //for Windows resources added via Resources and Images (includes 'Default.readcom' startup story document)

  {$region 'Used units' ---------------------------------------------------------} //Note: D12.3 can't fold/expand regions in .dpr files
  uses
  System.StartUpCopy,
  READCOM.App.Main,
  iLearnTsakonika.App.Messages in 'iLearnTsakonika.App.Messages.pas',
  Zoomicon.Media.FMX.ModalFrame in 'modules\zoomicon.media.fmx.delphi\Source\Zoomicon.Media.FMX.ModalFrame.pas' {ModalFrame: TFrame},
  READCOM.Resources.Icons in 'modules\readcom.core.delphi\Source\Resources\READCOM.Resources.Icons.pas' {Icons: TDataModule},
  iLearnTsakonika.Views.Dialogs.About in 'Views\Dialogs\iLearnTsakonika.Views.Dialogs.About.pas' {AboutFrame: TFrame};
  {$endregion}

  {$R *.res} //for Windows App metadata defined via Project Options (App Icon, Versioning Info)

begin
  Main(TAboutFrame);
end.

