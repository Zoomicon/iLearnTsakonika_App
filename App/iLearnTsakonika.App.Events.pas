unit iLearnTsakonika.App.Events;

interface
  uses READCOM.Views.StoryForm; //for TStoryForm, TStory

  type
    TEventHandlers = class
      procedure StoryFormReady(const StoryForm: TStoryForm);
      procedure StoryLoaded(const Story: TStory);
    end;

  var
    EventHandlers: TEventHandlers;

implementation
  uses
    System.SysUtils; //for FreeAndNil

  procedure TEventHandlers.StoryFormReady(const StoryForm: TStoryForm);
  begin
    //Untoggle actionMenu / hide layoutButtons by default (assuming content has its own navigation StoryItems with UrlAction set)
    StoryForm.HUD.actionMenu.Checked := false; //don't just do StoryForm.HUD.layoutButtons.Visible := false since that would make the menu toggle button unsync
    StoryForm.HUD.layoutButtons.Visible := false;

    //Use fullscreen by default
    {$IF Defined(Android)} //FullScreen still has issues on Windows (e.g. color popups don't show), only do on Android
    StoryForm.HUD.btnToggleFullscreen.IsPressed := true; //set FullScreen //don't use "Pressed" instead
    {$ENDIF}
  end;

  procedure TEventHandlers.StoryLoaded(const Story: TStory);
  begin
    //add logic here to execute everytime a Story is loaded (including the default story)
  end;

initialization
  EventHandlers := TEventHandlers.Create;

finalization
  FreeAndNil(EventHandlers);

end.
