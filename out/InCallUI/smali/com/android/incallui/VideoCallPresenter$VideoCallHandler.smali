.class Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;
.super Landroid/os/Handler;
.source "VideoCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCallHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "x1"    # Lcom/android/incallui/VideoCallPresenter$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/Call;

    .line 168
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v1, "Clearing sessionModificationState to NO_REQUEST"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0

    .line 173
    .end local v0    # "call":Lcom/android/incallui/Call;
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->this$0:Lcom/android/incallui/VideoCallPresenter;

    # getter for: Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z
    invoke-static {v1}, Lcom/android/incallui/VideoCallPresenter;->access$000(Lcom/android/incallui/VideoCallPresenter;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->this$0:Lcom/android/incallui/VideoCallPresenter;

    # invokes: Lcom/android/incallui/VideoCallPresenter;->toggleFullScreen()V
    invoke-static {v1}, Lcom/android/incallui/VideoCallPresenter;->access$100(Lcom/android/incallui/VideoCallPresenter;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
