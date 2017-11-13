.class Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;
.super Landroid/os/Handler;
.source "TelephonyConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RebindHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;


# direct methods
.method public constructor <init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$RebindHandler;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->bind()V

    return-void
.end method
