.class Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;
.super Ljava/lang/Object;
.source "ItsOnPhoneClient.java"

# interfaces
.implements Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/ItsOnPhoneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidFramework"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsoninc/android/ItsOnPhoneClient;


# direct methods
.method private constructor <init>(Lcom/itsoninc/android/ItsOnPhoneClient;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;->this$0:Lcom/itsoninc/android/ItsOnPhoneClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itsoninc/android/ItsOnPhoneClient;Lcom/itsoninc/android/ItsOnPhoneClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itsoninc/android/ItsOnPhoneClient;
    .param p2, "x1"    # Lcom/itsoninc/android/ItsOnPhoneClient$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;-><init>(Lcom/itsoninc/android/ItsOnPhoneClient;)V

    return-void
.end method


# virtual methods
.method public hangupForegroundCalls(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    # getter for: Lcom/itsoninc/android/ItsOnPhoneClient;->mRilTable:Landroid/util/SparseArray;
    invoke-static {}, Lcom/itsoninc/android/ItsOnPhoneClient;->access$000()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RIL;

    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_0

    const-string v1, "IOPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No RIL for phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in hangupForegroundCalls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;->this$0:Lcom/itsoninc/android/ItsOnPhoneClient;

    # getter for: Lcom/itsoninc/android/ItsOnPhoneClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/itsoninc/android/ItsOnPhoneClient;->access$100(Lcom/itsoninc/android/ItsOnPhoneClient;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public hangupIncomingCalls(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    # getter for: Lcom/itsoninc/android/ItsOnPhoneClient;->mRilTable:Landroid/util/SparseArray;
    invoke-static {}, Lcom/itsoninc/android/ItsOnPhoneClient;->access$000()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RIL;

    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_0

    const-string v1, "IOPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No RIL for phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in hangupForegroundCalls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;->this$0:Lcom/itsoninc/android/ItsOnPhoneClient;

    # getter for: Lcom/itsoninc/android/ItsOnPhoneClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/itsoninc/android/ItsOnPhoneClient;->access$100(Lcom/itsoninc/android/ItsOnPhoneClient;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto :goto_0
.end method
