.class Lcom/samsung/android/server/iris/IrisService$1;
.super Landroid/os/Handler;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$1;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 182
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$1;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->handleUserSwitching(I)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$1;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v0

    .line 174
    .local v0, "removedUser":I
    # getter for: Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/server/iris/IrisService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed User = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$1;->this$0:Lcom/samsung/android/server/iris/IrisService;

    const/4 v2, -0x1

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/samsung/android/server/iris/IrisService;->removeIris(II)I
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/iris/IrisService;->access$100(Lcom/samsung/android/server/iris/IrisService;II)I

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
