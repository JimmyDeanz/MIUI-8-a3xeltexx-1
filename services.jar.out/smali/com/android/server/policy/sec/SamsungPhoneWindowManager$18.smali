.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 3713
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3715
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3717
    .local v0, "action":Ljava/lang/String;
    const-string v2, "LGT"

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$800(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3746
    :cond_0
    :goto_0
    return-void

    .line 3721
    :cond_1
    const-string v2, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3722
    const-string/jumbo v2, "orientation"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3725
    .local v1, "requestedOrientation":I
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    .line 3726
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUvsReceiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I
    invoke-static {v4}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$900(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I
    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$900(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 3730
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setUvsOrieatation(I)V
    invoke-static {v2, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    .line 3732
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
