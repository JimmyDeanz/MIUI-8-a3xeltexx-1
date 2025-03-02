.class Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvancedSettings"
.end annotation


# instance fields
.field private mAdvancedSettingsTrigger:Landroid/preference/Preference;

.field private mPreferences:[Landroid/preference/Preference;

.field private mShowing:Z

.field final synthetic this$0:Lcom/android/services/telephony/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipEditor;)V
    .locals 2

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 533
    invoke-virtual {p1}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    .line 535
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 537
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->loadAdvancedPreferences()V

    .line 538
    return-void
.end method

.method private hide()V
    .locals 7

    .prologue
    .line 572
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 573
    iget-object v5, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    const v6, 0x7f080032

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 574
    iget-object v5, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 575
    .local v4, "screen":Landroid/preference/PreferenceGroup;
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .local v0, "arr$":[Landroid/preference/Preference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 576
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private loadAdvancedPreferences()V
    .locals 9

    .prologue
    .line 541
    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v7}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 543
    .local v6, "screen":Landroid/preference/PreferenceGroup;
    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    const v8, 0x7f060037

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 544
    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    const v8, 0x7f080045

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 546
    .local v0, "group":Landroid/preference/PreferenceGroup;
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 548
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    new-array v7, v7, [Landroid/preference/Preference;

    iput-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .line 549
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 550
    .local v3, "order":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    array-length v2, v7

    .local v2, "n":I
    move v4, v3

    .end local v3    # "order":I
    .local v4, "order":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 551
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 552
    .local v5, "pref":Landroid/preference/Preference;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "order":I
    .restart local v3    # "order":I
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 553
    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V
    invoke-static {v7, v5}, Lcom/android/services/telephony/sip/SipEditor;->access$600(Lcom/android/services/telephony/sip/SipEditor;Landroid/preference/Preference;)V

    .line 554
    iget-object v7, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    aput-object v5, v7, v1

    .line 550
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "order":I
    .restart local v4    # "order":I
    goto :goto_0

    .line 556
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mShowing:Z

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->show()V

    .line 587
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->hide()V

    goto :goto_0
.end method

.method show()V
    .locals 7

    .prologue
    .line 559
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 560
    iget-object v5, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    const v6, 0x7f080033

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 561
    iget-object v5, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 562
    .local v4, "screen":Landroid/preference/PreferenceGroup;
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .local v0, "arr$":[Landroid/preference/Preference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 563
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method
