.class Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;
.super Landroid/os/Handler;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->val$this$0:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 879
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 880
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 882
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;->onCoverTouchAccept()V

    goto :goto_0

    .line 885
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;->onCoverTouchReject()V

    goto :goto_0

    .line 888
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 889
    .local v0, "args":[I
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;->onSystemCoverEvent(I[I)V

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
