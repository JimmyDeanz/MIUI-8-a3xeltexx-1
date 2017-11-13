.class public Lcom/android/phone/settings/VoicemailSettingsActivity;
.super Lmiui/preference/PreferenceActivity;
.source "VoicemailSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mChangingVMorFwdDueToProviderChange:Z

.field private mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mShowVoicemailPreference:Z

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationRingtone:Lcom/android/phone/settings/VoicemailRingtonePreference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

.field private mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;

.field private mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 128
    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    .line 135
    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 140
    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 145
    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 150
    iput v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    .line 156
    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    .line 180
    iput v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    .line 194
    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    .line 720
    new-instance v0, Lcom/android/phone/settings/VoicemailSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSettingsActivity$1;-><init>(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mGetOptionComplete:Landroid/os/Handler;

    .line 820
    new-instance v0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSettingsActivity$2;-><init>(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    .line 882
    new-instance v0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSettingsActivity$3;-><init>(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/VoicemailSettingsActivity;)Landroid/os/AsyncResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/settings/VoicemailSettingsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/settings/VoicemailSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleSetVmOrFwdMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/settings/VoicemailSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->onRevertDone()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isVmChangeSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/VoicemailSettingsActivity;)Lcom/android/phone/SubscriptionInfoHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isFwdChangeSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/settings/VoicemailSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSettingsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 624
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "idx"    # I

    .prologue
    const/16 v6, 0x25a

    .line 735
    const/4 v1, 0x0

    .line 736
    .local v1, "error":Ljava/lang/Throwable;
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 737
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 740
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 741
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "error":Ljava/lang/Throwable;
    check-cast v1, Ljava/lang/Throwable;

    .line 746
    .restart local v1    # "error":Ljava/lang/Throwable;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v3, :cond_3

    .line 785
    :cond_2
    :goto_0
    return-void

    .line 752
    :cond_3
    if-eqz v1, :cond_4

    .line 754
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 755
    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    .line 756
    const/16 v3, 0x1f6

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    goto :goto_0

    .line 761
    :cond_4
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v5, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    invoke-static {v3, v5}, Lcom/android/phone/settings/CallForwardInfoUtil;->getCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v3

    aput-object v3, v4, p2

    .line 766
    const/4 v0, 0x1

    .line 767
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 768
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v2

    if-nez v3, :cond_7

    .line 769
    const/4 v0, 0x0

    .line 774
    :cond_5
    if-eqz v0, :cond_2

    .line 776
    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    .line 778
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 779
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    new-instance v5, Lcom/android/phone/settings/VoicemailProviderSettings;

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v5, v6, v7}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-static {v3, v4, v5}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->save(Landroid/content/Context;Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    .line 783
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 767
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private handleSetVmOrFwdMessage()V
    .locals 1

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isFwdChangeSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleVmOrFwdSetError(I)V

    .line 1044
    :goto_0
    return-void

    .line 1039
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isVmChangeSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1040
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleVmOrFwdSetError(I)V

    goto :goto_0

    .line 1042
    :cond_1
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleVmAndFwdSetSuccess(I)V

    goto :goto_0
.end method

.method private handleVmAndFwdSetSuccess(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    .line 1074
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    .line 1075
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    .line 1076
    return-void
.end method

.method private handleVmOrFwdSetError(I)V
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1054
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1055
    iput p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    .line 1056
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    .line 1057
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    .line 1063
    :goto_0
    return-void

    .line 1060
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    .line 1062
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private isForwardingCompleted()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1098
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1108
    :cond_0
    :goto_0
    return v2

    .line 1102
    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1103
    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1104
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFwdChangeSuccess()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1112
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v5, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return v4

    .line 1116
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/AsyncResult;

    .line 1117
    .local v3, "result":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1118
    .local v0, "exception":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 1119
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1121
    :goto_1
    sget-object v4, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to change forwarding setting. Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v4, 0x0

    goto :goto_0

    .line 1120
    :cond_3
    const-string v2, ""

    goto :goto_1
.end method

.method private isVmChangeSuccess()Z
    .locals 4

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1130
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1132
    :goto_0
    sget-object v1, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change voicemail. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v1, 0x0

    .line 1135
    .end local v0    # "msg":Ljava/lang/String;
    :goto_1
    return v1

    .line 1131
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1135
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private onRevertDone()V
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1082
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    .line 1083
    iget v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 1084
    iget v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    .line 1085
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    .line 1087
    :cond_0
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    .line 789
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 790
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/settings/VoicemailProviderSettings;

    .prologue
    const/4 v6, 0x0

    .line 681
    invoke-virtual {p2}, Lcom/android/phone/settings/VoicemailProviderSettings;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    .line 682
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_0
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    .line 683
    invoke-virtual {p2}, Lcom/android/phone/settings/VoicemailProviderSettings;->getForwardingSettings()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 686
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 688
    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 692
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v3, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v2, v3, :cond_2

    .line 694
    const/16 v2, 0x190

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    .line 718
    :goto_1
    return-void

    .line 682
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    goto :goto_0

    .line 698
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->save(Landroid/content/Context;Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    .line 699
    iput-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    .line 700
    iput-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    .line 701
    iput v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    .line 703
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v3, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 706
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    goto :goto_1

    .line 709
    :cond_4
    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v2

    .line 710
    .local v1, "numSettingsReasons":I
    new-array v2, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 711
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 712
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f6

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 716
    :cond_5
    const/16 v2, 0x25a

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    goto :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 794
    iput-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    .line 795
    iput-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 797
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->resetForwardingChangeState()V

    .line 798
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 799
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v4, v3

    .line 800
    .local v1, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v4, v5}, Lcom/android/phone/settings/CallForwardInfoUtil;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    .line 802
    .local v2, "fiForReason":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-static {v2, v1}, Lcom/android/phone/settings/CallForwardInfoUtil;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v0

    .line 804
    .local v0, "doUpdate":Z
    if-eqz v0, :cond_0

    .line 806
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f5

    iget v7, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/android/phone/settings/CallForwardInfoUtil;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    .line 798
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 813
    .end local v0    # "doUpdate":Z
    .end local v1    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2    # "fiForReason":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_1
    const/16 v4, 0x259

    invoke-direct {p0, v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    .line 814
    return-void
.end method

.method private setVoicemailNumberWithCarrier()V
    .locals 5

    .prologue
    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 919
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 923
    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialog(I)V

    .line 620
    :cond_0
    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 547
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 548
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 554
    :cond_0
    return-void

    .line 547
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 11

    .prologue
    .line 928
    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    if-eqz v6, :cond_6

    .line 933
    :cond_2
    const/16 v6, 0x25b

    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    .line 934
    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderSettings;

    move-result-object v3

    .line 936
    .local v3, "prevSettings":Lcom/android/phone/settings/VoicemailProviderSettings;
    if-nez v3, :cond_3

    .line 937
    sget-object v6, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VoicemailProviderSettings for the key \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" is null but should be loaded."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    :cond_3
    iget-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    if-eqz v6, :cond_4

    .line 943
    invoke-virtual {v3}, Lcom/android/phone/settings/VoicemailProviderSettings;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    .line 944
    sget-object v6, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " again."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f4

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 952
    :cond_4
    iget-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    if-eqz v6, :cond_0

    .line 953
    sget-object v6, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Requested to rollback forwarding changes."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {v3}, Lcom/android/phone/settings/VoicemailProviderSettings;->getForwardingSettings()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    .line 956
    .local v2, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v2, :cond_0

    .line 957
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    .line 958
    .local v5, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->resetForwardingChangeState()V

    .line 959
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 960
    aget-object v0, v2, v1

    .line 963
    .local v0, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget v6, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    .line 964
    .local v4, "result":Landroid/os/AsyncResult;
    if-eqz v4, :cond_5

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    .line 965
    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v7, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v8, 0x1f5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lcom/android/phone/settings/CallForwardInfoUtil;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    .line 959
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 975
    .end local v0    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i":I
    .end local v2    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "prevSettings":Lcom/android/phone/settings/VoicemailProviderSettings;
    .end local v4    # "result":Landroid/os/AsyncResult;
    .end local v5    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->onRevertDone()V

    goto/16 :goto_0
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 7
    .param p1, "currentProviderSetting"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 991
    move-object v0, p1

    .line 992
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v3, v0}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getVoicemailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;

    move-result-object v1

    .line 999
    .local v1, "provider":Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;
    if-nez v1, :cond_0

    .line 1002
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const v4, 0x7f08012c

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1004
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1005
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1015
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v2, v1, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->name:Ljava/lang/String;

    .line 1010
    .local v2, "providerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v3, v2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1012
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1013
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 4

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1026
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f080269

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1032
    :goto_0
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1029
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 451
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    .line 452
    const/4 v8, 0x0

    .line 456
    .local v8, "failure":Z
    iget-boolean v12, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    .line 457
    .local v12, "isVMProviderSettingsForced":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    .line 459
    const/4 v14, 0x0

    .line 460
    .local v14, "vmNum":Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    .line 462
    const/4 v8, 0x1

    .line 490
    :cond_0
    :goto_0
    if-eqz v8, :cond_7

    .line 492
    if-eqz v12, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    .line 535
    .end local v8    # "failure":Z
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 464
    .restart local v8    # "failure":Z
    .restart local v12    # "isVMProviderSettingsForced":Z
    .restart local v14    # "vmNum":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 466
    const/4 v8, 0x1

    goto :goto_0

    .line 468
    :cond_3
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 470
    if-eqz v12, :cond_4

    .line 472
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 476
    .local v13, "victim":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v11, "i":Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const/high16 v1, 0x4000000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v11}, Lcom/android/phone/settings/VoicemailSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 483
    .end local v11    # "i":Landroid/content/Intent;
    .end local v13    # "victim":Ljava/lang/String;
    :cond_5
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 484
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 486
    :cond_6
    const/4 v8, 0x1

    goto :goto_0

    .line 498
    :cond_7
    iput-boolean v12, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    .line 499
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 503
    .local v9, "fwdNum":Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 506
    .local v10, "fwdNumTime":I
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/VoicemailProviderSettings;

    invoke-direct {v2, v14, v9, v10}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    goto :goto_1

    .line 511
    .end local v8    # "failure":Z
    .end local v9    # "fwdNum":Ljava/lang/String;
    .end local v10    # "fwdNumTime":I
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_c

    .line 512
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 517
    const/4 v7, 0x0

    .line 519
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 521
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_a

    .line 528
    :cond_9
    if-eqz v7, :cond_1

    .line 529
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 525
    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    if-eqz v7, :cond_1

    .line 529
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 528
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_b

    .line 529
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1

    .line 534
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_c
    invoke-super/range {p0 .. p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v2, 0x1f6

    .line 639
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 640
    packed-switch p2, :pswitch_data_0

    .line 664
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "action":Ljava/lang/String;
    :goto_1
    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->finish()V

    .line 668
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 642
    :pswitch_0
    iget v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    if-ne v1, v2, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 649
    :pswitch_1
    iget v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    if-ne v1, v2, :cond_2

    .line 652
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    goto :goto_2

    .line 654
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->finish()V

    goto :goto_2

    .line 664
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 640
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    .line 222
    new-instance v0, Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    .line 223
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/SubscriptionInfoHelper;->setActionBarTitle(Landroid/app/ActionBar;Landroid/content/res/Resources;I)V

    .line 225
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {v0}, Lcom/android/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 226
    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    .line 228
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 570
    invoke-static {p0, p1}, Lcom/android/phone/settings/VoicemailDialogUtil;->getDialog(Lcom/android/phone/settings/VoicemailSettingsActivity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 577
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_0

    .line 582
    new-instance v0, Lcom/android/phone/settings/VoicemailProviderSettings;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 585
    .local v0, "newSettings":Lcom/android/phone/settings/VoicemailProviderSettings;
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    .line 438
    :cond_0
    :goto_0
    return-object v1

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "vmDisplay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800ee

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->onBackPressed()V

    .line 311
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    .line 305
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 365
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    if-ne p1, v3, :cond_3

    move-object v1, p2

    .line 366
    check-cast v1, Ljava/lang/String;

    .line 369
    .local v1, "newProviderKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    .end local v1    # "newProviderKey":Ljava/lang/String;
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 373
    .restart local v1    # "newProviderKey":Ljava/lang/String;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 375
    invoke-static {p0, v1}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderSettings;

    move-result-object v2

    .line 381
    .local v2, "newProviderSettings":Lcom/android/phone/settings/VoicemailProviderSettings;
    if-nez v2, :cond_2

    .line 383
    sget-object v3, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Saved preferences not found - invoking config"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    .line 385
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 389
    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    .line 390
    invoke-direct {p0, v1, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    goto :goto_0

    .line 392
    .end local v1    # "newProviderKey":Ljava/lang/String;
    .end local v2    # "newProviderSettings":Lcom/android/phone/settings/VoicemailProviderSettings;
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->setVibrationEnabled(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0

    .line 398
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 400
    .local v0, "isEnabled":Z
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3, v0, v5}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Lcom/android/internal/telephony/Phone;ZZ)V

    .line 401
    if-eqz v0, :cond_5

    .line 402
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->addPhoneStateListener(Lcom/android/internal/telephony/Phone;)V

    .line 403
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startActivation()V

    goto :goto_0

    .line 405
    :cond_5
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removeSource(Lcom/android/internal/telephony/Phone;)V

    .line 406
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startDeactivation()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v1, :cond_0

    move v1, v2

    .line 351
    :goto_0
    return v1

    .line 320
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    .line 326
    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 327
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 336
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v2

    .line 341
    goto :goto_0

    .line 346
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 347
    iput-boolean v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    move v1, v3

    .line 348
    goto :goto_0

    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_3
    move v1, v3

    .line 351
    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 563
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 564
    iput p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    .line 565
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 232
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 233
    iput-boolean v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 236
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 240
    :cond_0
    const v2, 0x7f06003d

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->addPreferencesFromResource(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 243
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "button_voicemail_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 244
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 245
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f080210

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 248
    const-string v2, "button_voicemail_provider_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/VoicemailProviderListPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    .line 250
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/settings/VoicemailProviderListPreference;->init(Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V

    .line 251
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 252
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 254
    const-string v2, "button_voicemail_setting_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 256
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080284

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/VoicemailRingtonePreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationRingtone:Lcom/android/phone/settings/VoicemailRingtonePreference;

    .line 258
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationRingtone:Lcom/android/phone/settings/VoicemailRingtonePreference;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/VoicemailRingtonePreference;->init(Lcom/android/internal/telephony/Phone;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080285

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    .line 262
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080286

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    .line 266
    const-string v2, "vvm_type_omtp"

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vvm_type_cvvm"

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 275
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 282
    iget-boolean v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->hasMoreThanOneVoicemailProvider()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 291
    :goto_1
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    .line 294
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    .line 295
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    .line 297
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->isVibrationEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    return-void

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 288
    :cond_4
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 289
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method
