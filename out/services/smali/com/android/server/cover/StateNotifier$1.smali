.class Lcom/android/server/cover/StateNotifier$1;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/StateNotifier;->handleUpdateSViewCoverService(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/cover/StateNotifier;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/server/cover/StateNotifier$1;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$1;->this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$400(Lcom/android/server/cover/StateNotifier;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$1;->this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$400(Lcom/android/server/cover/StateNotifier;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 415
    :cond_0
    return-void
.end method
