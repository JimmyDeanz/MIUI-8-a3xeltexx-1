.class Lcom/android/services/telephony/sip/MiuiSipSettings$9;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Landroid/net/sip/SipRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/MiuiSipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistering(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileUri"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public onRegistrationDone(Ljava/lang/String;J)V
    .locals 3
    .param p1, "profileUri"    # Ljava/lang/String;
    .param p2, "expiryTime"    # J

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "profileUri"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 413
    packed-switch p2, :pswitch_data_0

    .line 440
    :pswitch_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f08001c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_0
    return-void

    .line 415
    :pswitch_1
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :pswitch_2
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :pswitch_3
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :pswitch_4
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :pswitch_5
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
