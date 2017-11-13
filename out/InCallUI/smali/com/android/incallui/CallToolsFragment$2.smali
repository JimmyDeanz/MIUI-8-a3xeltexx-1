.class Lcom/android/incallui/CallToolsFragment$2;
.super Lcom/android/incallui/view/OnEffectiveClickListener;
.source "CallToolsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallToolsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallToolsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallToolsFragment;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-direct {p0}, Lcom/android/incallui/view/OnEffectiveClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectiveClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 290
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    sparse-switch v0, :sswitch_data_0

    .line 366
    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 293
    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # invokes: Lcom/android/incallui/CallToolsFragment;->onContactClick()V
    invoke-static {v1}, Lcom/android/incallui/CallToolsFragment;->access$100(Lcom/android/incallui/CallToolsFragment;)V

    .line 294
    const-string v1, "voice_call"

    const-string v2, "voice_call_contact"

    invoke-static {v1, v2}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsPresenter;->onAddCallClick()V

    .line 299
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "video_call_conference_add_call"

    aput-object v3, v2, v4

    const-string v3, "video_call_voice_add_call"

    aput-object v3, v2, v5

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v5, v4, v2}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsPresenter;->switchToVideoClicked()V

    .line 305
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "video_call_voice_switch_to_video"

    aput-object v3, v2, v4

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v4, v4, v2}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :sswitch_3
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsPresenter;->switchToVoiceClicked()V

    .line 310
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "video_call_voice_switch_to_voice"

    aput-object v3, v2, v4

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v4, v4, v2}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :sswitch_4
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    iget-object v2, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/incallui/CallToolsFragment;->access$300(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallToolsPresenter;->switchCameraClicked(Z)V

    .line 315
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mSwitchCameraButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/incallui/CallToolsFragment;->access$300(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "video_call_switch_camera"

    aput-object v3, v2, v4

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v4, v4, v2}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :sswitch_5
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    iget-object v2, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mPauseVideoButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/incallui/CallToolsFragment;->access$400(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallToolsPresenter;->pauseVideoClicked(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "video_call_pause_video"

    aput-object v3, v2, v4

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v4, v4, v2}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :sswitch_6
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsPresenter;->onAddRcsMessageClicked()V

    .line 327
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "video_call_conference_message"

    aput-object v3, v2, v4

    const-string v3, "video_call_message"

    aput-object v3, v2, v5

    const-string v3, "video_call_voice_message"

    aput-object v3, v2, v6

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v5, v5, v2}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :sswitch_7
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    iget-object v2, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mHoldButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/incallui/CallToolsFragment;->access$500(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallToolsPresenter;->onHoldClick(Z)V

    .line 334
    const-string v1, "voice_call"

    const-string v2, "voice_call_hold"

    invoke-static {v1, v2}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :sswitch_8
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsPresenter;->onMergeClick()V

    .line 340
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "video_call_voice_message"

    aput-object v3, v2, v4

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v4, v4, v2}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
    :sswitch_9
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    iget-object v2, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mMuteButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/incallui/CallToolsFragment;->access$600(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallToolsPresenter;->onMuteClick(Z)V

    .line 345
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "video_call_conference_mute"

    aput-object v3, v2, v4

    const-string v3, "video_call_mute"

    aput-object v3, v2, v5

    const-string v3, "video_call_voice_mute"

    aput-object v3, v2, v6

    # invokes: Lcom/android/incallui/CallToolsFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v1, v5, v5, v2}, Lcom/android/incallui/CallToolsFragment;->access$200(Lcom/android/incallui/CallToolsFragment;ZZ[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :sswitch_a
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    iget-object v2, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mVideoMuteButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/incallui/CallToolsFragment;->access$700(Lcom/android/incallui/CallToolsFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallToolsPresenter;->onMuteClick(Z)V

    .line 353
    :sswitch_b
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # invokes: Lcom/android/incallui/CallToolsFragment;->checkPermissionOrPerformRecord()V
    invoke-static {v1}, Lcom/android/incallui/CallToolsFragment;->access$800(Lcom/android/incallui/CallToolsFragment;)V

    goto/16 :goto_0

    .line 356
    :sswitch_c
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallToolsPresenter;->onSwapClick()V

    .line 357
    const-string v1, "voice_call"

    const-string v2, "voice_call_swap"

    invoke-static {v1, v2}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    :sswitch_d
    iget-object v1, p0, Lcom/android/incallui/CallToolsFragment$2;->this$0:Lcom/android/incallui/CallToolsFragment;

    # invokes: Lcom/android/incallui/CallToolsFragment;->onNoteClick()V
    invoke-static {v1}, Lcom/android/incallui/CallToolsFragment;->access$900(Lcom/android/incallui/CallToolsFragment;)V

    .line 362
    const-string v1, "voice_call"

    const-string v2, "voice_call_notes"

    invoke-static {v1, v2}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005b -> :sswitch_9
        0x7f09005c -> :sswitch_7
        0x7f09005d -> :sswitch_c
        0x7f09005e -> :sswitch_d
        0x7f090060 -> :sswitch_0
        0x7f090061 -> :sswitch_2
        0x7f090062 -> :sswitch_1
        0x7f090063 -> :sswitch_8
        0x7f090064 -> :sswitch_b
        0x7f0900f8 -> :sswitch_6
        0x7f0900f9 -> :sswitch_a
        0x7f0900fa -> :sswitch_4
        0x7f0900fb -> :sswitch_3
        0x7f0900fc -> :sswitch_5
    .end sparse-switch
.end method
