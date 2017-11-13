.class public Lcom/android/phone/vvm/omtp/VvmPackageInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VvmPackageInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_1

    .line 61
    :cond_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 45
    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v5

    .line 46
    .local v5, "vvmSourceManager":Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;
    invoke-virtual {v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getOmtpVvmSources()Ljava/util/Set;

    move-result-object v4

    .line 47
    .local v4, "phoneAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 48
    .local v3, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-static {p1, v3}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailUserSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 53
    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v6

    invoke-direct {v0, p1, v6}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    .line 55
    .local v0, "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    invoke-static {p1, v3, v7, v7}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ZZ)V

    .line 58
    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removeSource(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0
.end method
