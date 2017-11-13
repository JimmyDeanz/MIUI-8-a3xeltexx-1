.class public Lcom/android/phone/settings/CallForwardActivity;
.super Lmiui/app/Activity;
.source "CallForwardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v4

    invoke-static {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    .line 28
    .local v2, "slotId":I
    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 29
    .local v1, "phoneType":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 31
    const-class v3, Lcom/android/phone/settings/CdmaCallForwardOptions;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    :goto_1
    invoke-static {v0, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallForwardActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardActivity;->finish()V

    goto :goto_0

    .line 33
    :cond_1
    const-class v3, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method
