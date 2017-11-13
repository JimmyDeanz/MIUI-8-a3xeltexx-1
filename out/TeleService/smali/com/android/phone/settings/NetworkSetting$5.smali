.class Lcom/android/phone/settings/NetworkSetting$5;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 567
    packed-switch p2, :pswitch_data_0

    .line 578
    :goto_0
    return-void

    .line 569
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z
    invoke-static {v0, v1}, Lcom/android/phone/settings/NetworkSetting;->access$1302(Lcom/android/phone/settings/NetworkSetting;Z)Z

    .line 571
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/settings/NetworkSetting;->access$900(Lcom/android/phone/settings/NetworkSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/settings/NetworkSetting;->access$900(Lcom/android/phone/settings/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 575
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting$5;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/NetworkSetting;->finish()V

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
