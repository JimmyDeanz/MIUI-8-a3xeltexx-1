.class Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$3;
.super Ljava/lang/Object;
.source "TelephonyConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;


# direct methods
.method constructor <init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$3;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "enable":Z
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$3;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    # invokes: Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->setMobileDataEnable(Z)V
    invoke-static {v1, v0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->access$300(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
