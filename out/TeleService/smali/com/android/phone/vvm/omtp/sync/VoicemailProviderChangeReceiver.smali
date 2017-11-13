.class public Lcom/android/phone/vvm/omtp/sync/VoicemailProviderChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoicemailProviderChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string v3, "com.android.voicemail.extra.SELF_CHANGE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    .local v0, "isSelfChanged":Z
    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v2

    .line 32
    .local v2, "vvmSourceManager":Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;
    invoke-virtual {v2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getOmtpVvmSources()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    if-nez v0, :cond_0

    .line 33
    const-string v3, "upload_only"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {p1, v3, v4, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
