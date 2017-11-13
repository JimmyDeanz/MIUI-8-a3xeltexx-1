.class Lcom/movial/ipphone/WifiCallSwitchPreference$1;
.super Lcom/movial/ipphone/IPStateListener;
.source "WifiCallSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/WifiCallSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$1;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-direct {p0}, Lcom/movial/ipphone/IPStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 72
    const-string v0, "WifiCallSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiCallStateChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$1;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$1;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    # getter for: Lcom/movial/ipphone/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->access$000(Lcom/movial/ipphone/WifiCallSwitchPreference;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$1;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    # getter for: Lcom/movial/ipphone/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->access$000(Lcom/movial/ipphone/WifiCallSwitchPreference;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
