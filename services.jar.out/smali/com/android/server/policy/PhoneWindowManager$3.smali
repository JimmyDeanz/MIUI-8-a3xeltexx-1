.class Lcom/android/server/policy/PhoneWindowManager$3;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1153
    const-string v0, "WindowManager"

    const-string/jumbo v1, "runnable start for activekey wakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mActiveKeyTriggered:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$102(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 1155
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mActiveKeyCurTime:J
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$200(Lcom/android/server/policy/PhoneWindowManager;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$300(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    const/4 v4, 0x1

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;JZI)Z

    .line 1156
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v1, 0x64

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$600(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 1160
    :cond_0
    return-void
.end method
