.class Lcom/android/server/FMRadioService$7;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .param p1, "focusChange"    # I

    .prologue
    .line 726
    const-string v0, "-------------------------------------------------------------------------"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    # invokes: Lcom/android/server/FMRadioService;->clearMessageQueue()V
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2200(Lcom/android/server/FMRadioService;)V

    .line 729
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 731
    const-string v0, "----------------------------^_^|||^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^^_^"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 732
    # getter for: Lcom/android/server/FMRadioService;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/server/FMRadioService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnAudioFocusChangeListener switch off mAudioFocusListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stored freq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 735
    :cond_0
    return-void
.end method
