.class Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedCoverTouchListenerDelegate"
.end annotation


# static fields
.field private static final MSG_LISTEN_COVER_TOUCH_ACCEPT:I = 0x0

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT:I = 0x1

.field private static final MSG_SYSTEM_COVER_EVENT:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

.field final synthetic this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->this$0:Lcom/samsung/android/cover/CoverManager;

    .line 870
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    .line 871
    iput-object p2, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .line 873
    if-nez p3, :cond_0

    # getter for: Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/cover/CoverManager;->access$000(Lcom/samsung/android/cover/CoverManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 876
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;-><init>(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 894
    return-void

    .line 873
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    return-object v0
.end method

.method public onCoverTouchAccept()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 903
    return-void
.end method

.method public onCoverTouchReject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 908
    return-void
.end method

.method public onSystemCoverEvent(I[I)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "args"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 912
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 913
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 914
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 915
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 916
    return-void
.end method
