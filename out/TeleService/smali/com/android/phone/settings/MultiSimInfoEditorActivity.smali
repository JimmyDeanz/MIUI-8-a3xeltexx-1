.class public Lcom/android/phone/settings/MultiSimInfoEditorActivity;
.super Lmiui/preference/PreferenceActivity;
.source "MultiSimInfoEditorActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/text/TextWatcher;
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;,
        Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;
    }
.end annotation


# instance fields
.field private mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

.field private mEnableSim:Landroid/preference/CheckBoxPreference;

.field private mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

.field private mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mNotSet:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

.field private mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

.field private mSimName:Landroid/preference/EditTextPreference;

.field private mSimNumber:Landroid/preference/EditTextPreference;

.field private mSlotId:I

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsForeground:Z

    .line 93
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubId:I

    .line 95
    new-instance v0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mHandler:Landroid/os/Handler;

    .line 583
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/MultiSimInfoEditorActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->switchRadioState(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateCheckState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayErrorDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/settings/MultiSimInfoEditorActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$2;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 337
    return-void
.end method

.method private isPhoneInCall()Z
    .locals 2

    .prologue
    .line 464
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEnabledStateOnPreferences(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "prefer"    # Landroid/preference/Preference;
    .param p2, "enabled"    # Z

    .prologue
    .line 287
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 288
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 289
    .local v1, "preferGroup":Landroid/preference/PreferenceGroup;
    const-string v2, "sim_info_editor"

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 292
    :cond_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 293
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->setEnabledStateOnPreferences(Landroid/preference/Preference;Z)V

    .line 292
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 296
    .end local v0    # "i":I
    .end local v1    # "preferGroup":Landroid/preference/PreferenceGroup;
    :cond_1
    const-string v2, "enable_sim"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 297
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    :cond_2
    return-void
.end method

.method private showDisableSimDialog()V
    .locals 5

    .prologue
    .line 566
    new-instance v1, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    iget-object v3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;-><init>(ILjava/lang/CharSequence;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    .line 568
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->setCancelable(Z)V

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DisableSimDialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MultiSimInfoEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: show dialogfragment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchRadioState(IZ)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v7, 0x0

    .line 379
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->isPhoneInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const v0, 0x7f0803ae

    invoke-direct {p0, v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->displayErrorDialog(I)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 385
    const v0, 0x7f0803af

    invoke-direct {p0, v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->displayErrorDialog(I)V

    goto :goto_0

    .line 389
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 391
    if-eqz p2, :cond_3

    .line 392
    const v6, 0x7f0803b0

    .line 396
    .local v6, "msgId":I
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->showProgressDialog(I)V

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 398
    .local v4, "startTime":J
    new-instance v0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;IZJ)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 394
    .end local v4    # "startTime":J
    .end local v6    # "msgId":I
    :cond_3
    const v6, 0x7f0803b1

    .restart local v6    # "msgId":I
    goto :goto_1
.end method

.method private updateCheckState()V
    .locals 2

    .prologue
    .line 274
    iget v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->isIccCardActivated(I)Z

    move-result v0

    .line 275
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->setEnabledStateOnPreferences(Landroid/preference/Preference;Z)V

    .line 281
    :cond_1
    return-void
.end method

.method private updateInfo()V
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 247
    .local v0, "simInfo":Lmiui/telephony/SubscriptionInfo;
    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

    .line 248
    if-eqz v0, :cond_4

    .line 250
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mNotSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    :goto_1
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mNotSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 358
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 342
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 431
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    .line 432
    return-void
.end method

.method public initMobileNetworkSetting()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 134
    iget v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-static {v8}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0803ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mNotSet:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 138
    const-string v8, "sim_name_number_category_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 139
    .local v6, "simNameNumber":Landroid/preference/Preference;
    iget v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-static {v8}, Lcom/android/phone/MiuiPhoneUtils;->isVirtualSim(I)Z

    move-result v1

    .line 140
    .local v1, "isVirtualSim":Z
    if-eqz v6, :cond_0

    .line 141
    if-eqz v1, :cond_6

    .line 142
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    iput-object v10, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    .line 144
    iput-object v10, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    .line 156
    :cond_0
    :goto_0
    const-string v8, "enable_sim"

    invoke-virtual {p0, v8}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    .line 157
    if-nez v1, :cond_1

    iget v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-static {v8}, Lcom/android/phone/MiuiPhoneUtils;->getIccCardCountExcludeSlot(I)I

    move-result v8

    if-ge v8, v11, :cond_7

    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 158
    :cond_1
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    iput-object v10, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    .line 165
    :goto_1
    const-string v8, "button_go_to_virtual_sim_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 166
    .local v7, "virtualSimButton":Landroid/preference/Preference;
    if-eqz v1, :cond_9

    .line 167
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getVirtualSimCarrierName()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "newTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 169
    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    .end local v2    # "newTitle":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 178
    .local v3, "phoneType":I
    const/4 v8, 0x2

    if-ne v3, v8, :cond_a

    .line 179
    new-instance v8, Lcom/android/phone/settings/CdmaOptions;

    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/phone/settings/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    .line 187
    :goto_3
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v8

    iget v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    if-eq v8, v9, :cond_3

    .line 188
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "button_apn_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 189
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_2

    .line 190
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_2
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "button_preferred_network_type_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 193
    if-eqz v5, :cond_3

    .line 194
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 201
    .local v0, "isCarrierSettingsEnabled":Z
    if-nez v0, :cond_4

    .line 202
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "carrier_settings_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 204
    .restart local v5    # "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_4

    .line 205
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "carrier_settings_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 211
    if-eqz v5, :cond_4

    .line 212
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_4
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "button_uplmn_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 217
    .local v4, "plmn":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-static {v8, v9}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 218
    invoke-static {}, Lcom/android/phone/TelephonyCapabilities;->supportShowPLMNPreference()Z

    move-result v8

    if-nez v8, :cond_5

    .line 219
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_5
    return-void

    .line 146
    .end local v0    # "isCarrierSettingsEnabled":Z
    .end local v3    # "phoneType":I
    .end local v4    # "plmn":Landroid/preference/Preference;
    .end local v7    # "virtualSimButton":Landroid/preference/Preference;
    :cond_6
    const-string v8, "sim_name"

    invoke-virtual {p0, v8}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    .line 147
    const-string v8, "sim_number"

    invoke-virtual {p0, v8}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    .line 148
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 161
    :cond_7
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1

    .line 171
    .restart local v2    # "newTitle":Ljava/lang/String;
    .restart local v7    # "virtualSimButton":Landroid/preference/Preference;
    :cond_8
    const-string v8, "MultiSimInfoEditorActivity"

    const-string v9, "error: update Virtual Sim Title failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 174
    .end local v2    # "newTitle":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 180
    .restart local v3    # "phoneType":I
    :cond_a
    if-ne v3, v11, :cond_b

    .line 181
    new-instance v8, Lcom/android/phone/settings/GsmUmtsOptions;

    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/phone/settings/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    goto/16 :goto_3

    .line 183
    :cond_b
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 494
    packed-switch p1, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 496
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 498
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 117
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v0, v2}, Lmiui/telephony/SubscriptionManager;->getSlotId(Landroid/os/Bundle;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    .line 120
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

    .line 122
    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

    if-nez v2, :cond_2

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    :goto_1
    iput v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubId:I

    .line 124
    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubId:I

    invoke-static {v2}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->finish()V

    .line 131
    :goto_2
    return-void

    .line 115
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    goto :goto_1

    .line 128
    :cond_3
    const v2, 0x7f060026

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->addPreferencesFromResource(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->initMobileNetworkSetting()V

    .line 130
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->dismissProgressDialog()V

    .line 311
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 312
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/settings/GsmUmtsOptions;->destroy()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    invoke-virtual {v0}, Lcom/android/phone/settings/CdmaOptions;->destroy()V

    .line 318
    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 319
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsForeground:Z

    .line 306
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 513
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v9, v10}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v4

    .line 515
    .local v4, "simInfo":Lmiui/telephony/SubscriptionInfo;
    if-nez v4, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->finish()V

    .line 562
    :cond_0
    :goto_0
    return v7

    .line 519
    :cond_1
    const-string v9, "sim_name"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 520
    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 521
    .local v5, "textName":Landroid/text/Editable;
    if-eqz v5, :cond_2

    .line 522
    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 527
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v9

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v3

    .line 528
    .local v3, "result":I
    if-lez v3, :cond_3

    .line 529
    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v5    # "textName":Landroid/text/Editable;
    :cond_2
    :goto_1
    move v7, v8

    .line 562
    goto :goto_0

    .line 531
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "result":I
    .restart local v5    # "textName":Landroid/text/Editable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0803ac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 534
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 535
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v5    # "textName":Landroid/text/Editable;
    :cond_4
    const-string v9, "sim_number"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 542
    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 543
    .local v6, "textNumber":Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 544
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "number":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v9

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNumberForSubscription(Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_6

    .line 546
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 547
    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 549
    :cond_5
    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mNotSet:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 552
    :cond_6
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    .line 553
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :cond_7
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 362
    const-string v1, "enable_sim"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    const-string v1, "MultiSimInfoEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User enable sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->switchRadioState(IZ)V

    .line 375
    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 367
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->showDisableSimDialog()V

    goto :goto_0

    .line 369
    :cond_2
    const-string v1, "sim_name"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sim_number"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    :cond_3
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 372
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 373
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 469
    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v2, p2}, Lcom/android/phone/settings/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v1

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    invoke-virtual {v2, p2}, Lcom/android/phone/settings/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    .line 472
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    iput-object p2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mClickedPreference:Landroid/preference/Preference;

    .line 477
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 482
    :cond_2
    const-string v2, "button_go_to_virtual_sim_key"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 483
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getVirtualSimIntent()Landroid/content/Intent;

    move-result-object v0

    .line 484
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 489
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsForeground:Z

    .line 227
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateInfo()V

    .line 228
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateCheckState()V

    .line 229
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 234
    .local v0, "info":Lmiui/telephony/SubscriptionInfo;
    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimInfoRecord:Lmiui/telephony/SubscriptionInfo;

    .line 235
    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubId:I

    if-eq v1, v2, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->finish()V

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateCheckState()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 347
    .local v0, "d":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 350
    :cond_0
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 351
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0    # "d":Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    :cond_1
    return-void

    .line 351
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showProgressDialog(I)V
    .locals 4
    .param p1, "msgId"    # I

    .prologue
    .line 418
    new-instance v1, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    invoke-direct {v1, p1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;-><init>(I)V

    iput-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MultiSimInfoEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: show dialogfragment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
