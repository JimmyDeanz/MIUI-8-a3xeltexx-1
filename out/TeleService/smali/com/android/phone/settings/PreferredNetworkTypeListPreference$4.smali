.class Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;
.super Landroid/content/BroadcastReceiver;
.source "PreferredNetworkTypeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 326
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "iccState":Ljava/lang/String;
    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {p2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    .line 329
    .local v2, "slotId":I
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I
    invoke-static {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$800(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const-string v3, "LOADED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 334
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->updatePreferredNetworkTypes(Landroid/preference/PreferenceScreen;)V
    invoke-static {v3, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$900(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Landroid/preference/PreferenceScreen;)V

    .line 335
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$1000(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V
    invoke-static {v3, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$1100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Landroid/preference/Preference;)V

    goto :goto_0

    .line 337
    .end local v1    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_2
    const-string v3, "ABSENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->finish()V

    goto :goto_0
.end method
