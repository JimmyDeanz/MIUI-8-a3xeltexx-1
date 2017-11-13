.class Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;
.super Ljava/lang/Object;
.source "MiuiSipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/MiuiSipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvancedSettings"
.end annotation


# instance fields
.field private mAdvancedSettingsTrigger:Landroid/preference/Preference;

.field private mPreferences:[Landroid/preference/Preference;

.field private mShowing:Z

.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipEditor;)V
    .locals 2

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mShowing:Z

    .line 560
    invoke-virtual {p1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    .line 562
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 564
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->loadAdvancedPreferences()V

    .line 565
    return-void
.end method

.method private hide()V
    .locals 7

    .prologue
    .line 599
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mShowing:Z

    .line 600
    iget-object v5, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    const v6, 0x7f080032

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 601
    iget-object v5, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 602
    .local v4, "screen":Landroid/preference/PreferenceGroup;
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .local v0, "arr$":[Landroid/preference/Preference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 603
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private loadAdvancedPreferences()V
    .locals 9

    .prologue
    .line 568
    iget-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    invoke-virtual {v7}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 570
    .local v6, "screen":Landroid/preference/PreferenceGroup;
    iget-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    const v8, 0x7f060037

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/sip/MiuiSipEditor;->addPreferencesFromResource(I)V

    .line 571
    iget-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    const v8, 0x7f080045

    invoke-virtual {v7, v8}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 573
    .local v0, "group":Landroid/preference/PreferenceGroup;
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 575
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    new-array v7, v7, [Landroid/preference/Preference;

    iput-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .line 576
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 577
    .local v3, "order":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    array-length v2, v7

    .local v2, "n":I
    move v4, v3

    .end local v3    # "order":I
    .local v4, "order":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 578
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 579
    .local v5, "pref":Landroid/preference/Preference;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "order":I
    .restart local v3    # "order":I
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 580
    iget-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipEditor;->setupPreference(Landroid/preference/Preference;)V
    invoke-static {v7, v5}, Lcom/android/services/telephony/sip/MiuiSipEditor;->access$600(Lcom/android/services/telephony/sip/MiuiSipEditor;Landroid/preference/Preference;)V

    .line 581
    iget-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    aput-object v5, v7, v1

    .line 577
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "order":I
    .restart local v4    # "order":I
    goto :goto_0

    .line 583
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mShowing:Z

    if-nez v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->show()V

    .line 614
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->hide()V

    goto :goto_0
.end method

.method show()V
    .locals 7

    .prologue
    .line 586
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mShowing:Z

    .line 587
    iget-object v5, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    const v6, 0x7f080033

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 588
    iget-object v5, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 589
    .local v4, "screen":Landroid/preference/PreferenceGroup;
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .local v0, "arr$":[Landroid/preference/Preference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 590
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method
