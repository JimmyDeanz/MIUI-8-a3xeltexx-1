.class Lcom/android/incallui/CallButtonFragment$6;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->showAudioSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x2

    .line 474
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->cancelDialog()V

    .line 475
    if-nez p2, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    # invokes: Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z
    invoke-static {v0, v1}, Lcom/android/incallui/CallButtonFragment;->access$300(Lcom/android/incallui/CallButtonFragment;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 478
    const-string v0, "voice_call"

    const-string v1, "voice_call_audio_mode_bluetooth"

    invoke-static {v0, v1}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    # invokes: Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z
    invoke-static {v0, v2}, Lcom/android/incallui/CallButtonFragment;->access$300(Lcom/android/incallui/CallButtonFragment;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 485
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    const/4 v1, 0x4

    # invokes: Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z
    invoke-static {v0, v1}, Lcom/android/incallui/CallButtonFragment;->access$400(Lcom/android/incallui/CallButtonFragment;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    const-string v0, "voice_call"

    const-string v1, "voice_call_audio_mode_headset"

    invoke-static {v0, v1}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_2
    const-string v0, "voice_call"

    const-string v1, "voice_call_audio_mode_handset"

    invoke-static {v0, v1}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_3
    if-ne p2, v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    const/16 v1, 0x8

    # invokes: Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z
    invoke-static {v0, v1}, Lcom/android/incallui/CallButtonFragment;->access$300(Lcom/android/incallui/CallButtonFragment;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->onSpeakerClick()V

    .line 498
    const-string v0, "voice_call"

    const-string v1, "voice_call_audio_mode_speaker"

    invoke-static {v0, v1}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
