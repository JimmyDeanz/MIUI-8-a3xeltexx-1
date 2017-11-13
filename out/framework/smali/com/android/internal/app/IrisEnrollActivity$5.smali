.class Lcom/android/internal/app/IrisEnrollActivity$5;
.super Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.source "IrisEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IrisEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/IrisEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IrisEnrollActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/internal/app/IrisEnrollActivity$5;->this$0:Lcom/android/internal/app/IrisEnrollActivity;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 2
    .param p1, "arg0"    # J
    .param p3, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2
    .param p1, "arg0"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;)V
    .locals 2
    .param p1, "arg0"    # J
    .param p3, "arg1"    # Lcom/samsung/android/camera/iris/Iris;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 2
    .param p1, "arg0"    # J
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnrollResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public onError(JI)V
    .locals 2
    .param p1, "arg0"    # J
    .param p3, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public onRemoved(JII)V
    .locals 2
    .param p1, "arg0"    # J
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method
