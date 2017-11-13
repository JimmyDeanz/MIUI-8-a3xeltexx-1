.class public Lcom/android/phone/settings/SimPickerPreference;
.super Lmiui/preference/PreferenceActivity;
.source "SimPickerPreference.java"


# static fields
.field private static final BIG_SIM_SLOT_ICON:[I


# instance fields
.field private mForwardIntent:Landroid/content/Intent;

.field private mSubChangedListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/SimPickerPreference;->BIG_SIM_SLOT_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020003
        0x7f020004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/android/phone/settings/SimPickerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/SimPickerPreference$1;-><init>(Lcom/android/phone/settings/SimPickerPreference;)V

    iput-object v0, p0, Lcom/android/phone/settings/SimPickerPreference;->mSubChangedListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/SimPickerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/SimPickerPreference;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/phone/settings/SimPickerPreference;->updateScreen()V

    return-void
.end method

.method private createSimInfoPreference(Lmiui/telephony/SubscriptionInfo;)Landroid/preference/Preference;
    .locals 4
    .param p1, "simInfo"    # Lmiui/telephony/SubscriptionInfo;

    .prologue
    .line 111
    new-instance v1, Lmiui/preference/ValuePreference;

    invoke-direct {v1, p0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, "simInfoPref":Lmiui/preference/ValuePreference;
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->isIccCardActivated(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    .line 115
    sget-object v2, Lcom/android/phone/settings/SimPickerPreference;->BIG_SIM_SLOT_ICON:[I

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setIcon(I)V

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-static {v0, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 120
    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 122
    return-object v1
.end method

.method public static showSimPicker(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 126
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v4, v5}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    .line 130
    .local v2, "slotId":I
    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v2, v4, :cond_0

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/settings/SimPickerPreference;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "EXTRA_INTENT"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const-string v4, "EXTRA_TITLE"

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/phone/MiuiPhoneUtils;->addWindowLable(Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 140
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "slotId":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 77
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->finish()V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->isDcOnlyVirtualSim(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 85
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v4

    .line 86
    .local v4, "slotId":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 87
    .local v2, "simCount":I
    if-ne v2, v5, :cond_4

    .line 94
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->finish()V

    goto :goto_0

    .line 89
    :cond_4
    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    .line 90
    if-nez v4, :cond_5

    .line 91
    .local v5, "targetSlotId":I
    :goto_2
    iget-object v6, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    invoke-static {v6, v5}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 92
    iget-object v6, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/SimPickerPreference;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .end local v5    # "targetSlotId":I
    :cond_5
    move v5, v6

    .line 90
    goto :goto_2

    .line 98
    .end local v2    # "simCount":I
    .end local v4    # "slotId":I
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_7

    .line 99
    iget-object v7, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {v7, v6}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 100
    iget-object v6, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/SimPickerPreference;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->finish()V

    goto :goto_0

    .line 105
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    .line 106
    .local v0, "SubscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/android/phone/settings/SimPickerPreference;->createSimInfoPreference(Lmiui/telephony/SubscriptionInfo;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/SimPickerPreference;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/SimPickerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_INTENT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    .line 51
    iget-object v2, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->finish()V

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_2

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 60
    :cond_2
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/SimPickerPreference;->mSubChangedListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 72
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/SimPickerPreference;->mSubChangedListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 66
    invoke-direct {p0}, Lcom/android/phone/settings/SimPickerPreference;->updateScreen()V

    .line 67
    return-void
.end method
