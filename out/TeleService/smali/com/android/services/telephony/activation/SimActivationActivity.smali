.class public Lcom/android/services/telephony/activation/SimActivationActivity;
.super Landroid/app/Activity;
.source "SimActivationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private runActivation(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    .line 49
    const-string v2, "android.intent.extra.SIM_ACTIVATION_RESPONSE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 52
    .local v1, "response":Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running activation w/ response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 55
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->simActivationManager:Lcom/android/services/telephony/activation/SimActivationManager;

    new-instance v3, Lcom/android/services/telephony/activation/SimActivationActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/android/services/telephony/activation/SimActivationActivity$1;-><init>(Lcom/android/services/telephony/activation/SimActivationActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/services/telephony/activation/SimActivationManager;->runActivation(ILcom/android/services/telephony/activation/SimActivationManager$Response;)V

    .line 71
    invoke-virtual {p0, v4}, Lcom/android/services/telephony/activation/SimActivationActivity;->setResult(I)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/services/telephony/activation/SimActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SIM_ACTIVATION_REQUEST"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activation requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0, v0}, Lcom/android/services/telephony/activation/SimActivationActivity;->runActivation(Landroid/content/Intent;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/activation/SimActivationActivity;->finish()V

    .line 46
    return-void
.end method
