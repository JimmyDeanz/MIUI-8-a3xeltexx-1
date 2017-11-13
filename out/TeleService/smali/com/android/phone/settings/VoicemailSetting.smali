.class public Lcom/android/phone/settings/VoicemailSetting;
.super Lcom/android/phone/settings/TimeConsumingPreferenceActivity;
.source "VoicemailSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field mChangingVMorFwdDueToProviderChange:Z

.field mCurrentDialogId:I

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

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationRingtone:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/VoicemailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;-><init>()V

    .line 172
    new-instance v0, Lcom/android/phone/settings/VoicemailSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSetting$1;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 285
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 291
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 298
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 303
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 308
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 313
    iput v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mCurrentDialogId:I

    .line 319
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 331
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 337
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 343
    iput v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    .line 379
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 777
    new-instance v0, Lcom/android/phone/settings/VoicemailSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSetting$2;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 946
    new-instance v0, Lcom/android/phone/settings/VoicemailSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSetting$3;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1006
    new-instance v0, Lcom/android/phone/settings/VoicemailSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSetting$4;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/VoicemailSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/VoicemailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/VoicemailSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/VoicemailSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/VoicemailSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/VoicemailSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/settings/VoicemailSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/settings/VoicemailSetting;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/VoicemailSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1044
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1045
    const/4 v2, 0x1

    .line 1057
    .local v2, "result":Z
    :cond_0
    :goto_0
    return v2

    .line 1049
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .line 1050
    .restart local v2    # "result":Z
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

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

    .line 1051
    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1052
    const/4 v2, 0x0

    .line 1053
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1063
    const/4 v3, 0x0

    .line 1064
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1066
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1067
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1068
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1069
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1070
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1071
    if-nez v3, :cond_1

    .line 1072
    const-string v3, ""

    .line 1077
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1084
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1087
    const-string v0, ""

    .line 1091
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 1679
    :goto_0
    return-void

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 723
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1682
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1683
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1098
    const/4 v2, 0x1

    .line 1099
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 1100
    .local v1, "fwdFailure":Z
    const-string v0, ""

    .line 1101
    .local v0, "exceptionMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1102
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_0

    .line 1104
    const/4 v2, 0x0

    .line 1105
    const/4 v1, 0x1

    .line 1108
    :cond_0
    if-eqz v2, :cond_1

    .line 1109
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_1

    .line 1111
    const/4 v2, 0x0

    .line 1114
    :cond_1
    if-eqz v2, :cond_2

    .line 1116
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1117
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    .line 1127
    :goto_0
    return-void

    .line 1119
    :cond_2
    if-eqz v1, :cond_3

    .line 1120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/settings/VoicemailSetting;->log(Ljava/lang/String;)V

    .line 1121
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1123
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/settings/VoicemailSetting;->log(Ljava/lang/String;)V

    .line 1124
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 1142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1143
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    .line 1144
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    .line 689
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1130
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1131
    iput p1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    .line 1132
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1133
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->switchToPreviousVoicemailProvider()V

    .line 1139
    :goto_0
    return-void

    .line 1136
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    .line 1138
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    .line 870
    const/4 v4, 0x0

    .line 871
    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 872
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 873
    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 874
    move-object v4, v2

    .line 879
    .end local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "len$":I
    :cond_0
    return-object v4

    .line 872
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 22

    .prologue
    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "vm_numbers"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/MiuiPhoneUtils;->getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1492
    const/4 v14, 0x0

    .line 1493
    .local v14, "providerToIgnore":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1495
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1499
    :cond_0
    if-eqz v14, :cond_1

    .line 1500
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/settings/VoicemailSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 1504
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 1507
    const v18, 0x7f08012d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1508
    .local v10, "myCarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, ""

    new-instance v20, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1512
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1513
    .local v7, "intent":Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1515
    .local v15, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .line 1519
    .local v9, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 1520
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1521
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1522
    .local v3, "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/settings/VoicemailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1524
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1526
    add-int/lit8 v9, v9, -0x1

    .line 1519
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1529
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1530
    .local v11, "nameForDisplay":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1531
    .local v13, "providerIntent":Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1532
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1542
    .end local v3    # "currentActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "nameForDisplay":Ljava/lang/String;
    .end local v13    # "providerIntent":Landroid/content/Intent;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    new-array v4, v9, [Ljava/lang/String;

    .line 1543
    .local v4, "entries":[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1544
    .local v17, "values":[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v10, v4, v18

    .line 1545
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    .line 1546
    const/4 v5, 0x1

    .line 1547
    .local v5, "entryIdx":I
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 1548
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1549
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1547
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1552
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v5

    .line 1553
    aput-object v8, v17, v5

    .line 1554
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1557
    .end local v8    # "key":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1560
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1562
    return-void
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p1, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 884
    const/4 v0, 0x1

    .line 885
    .local v0, "result":Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 888
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 889
    const/4 v0, 0x0

    .line 892
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1633
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1635
    .local v6, "vmNumberSetting":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1664
    :goto_0
    return-object v5

    .line 1640
    :cond_0
    sget-object v0, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1641
    .local v0, "cfi":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1642
    .local v1, "fwdKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1643
    .local v2, "fwdLen":I
    if-lez v2, :cond_1

    .line 1644
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1645
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 1646
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1647
    .local v4, "settingKey":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 1648
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1650
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1653
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1654
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1655
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1657
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1645
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1662
    .end local v3    # "i":I
    .end local v4    # "settingKey":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1664
    .local v5, "settings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1433
    const-string v0, "VoicemailSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    .prologue
    .line 1429
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1430
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1565
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    .prologue
    .line 1595
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1598
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 1599
    .local v0, "curSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1604
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1605
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1606
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1607
    .local v3, "fwdKey":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1608
    .local v5, "s":[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    .line 1609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1610
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    .line 1611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1612
    .local v6, "settingKey":Ljava/lang/String;
    aget-object v2, v5, v4

    .line 1613
    .local v2, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1615
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1616
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1610
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1619
    .end local v2    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4    # "i":I
    .end local v6    # "settingKey":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1621
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;I)Z
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "slotId"    # I

    .prologue
    .line 1408
    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-static {v4, p1}, Lcom/android/phone/MiuiPhoneUtils;->getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1410
    .local v2, "vmVibrateKey":Ljava/lang/String;
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1411
    const-string v4, "button_voicemail_notification_vibrate_when_key"

    const-string v5, "never"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1416
    .local v1, "vibrateWhen":Ljava/lang/String;
    const-string v4, "always"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1417
    .local v3, "voicemailVibrate":Z
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1418
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1419
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1420
    const/4 v4, 0x1

    .line 1422
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "vibrateWhen":Ljava/lang/String;
    .end local v3    # "voicemailVibrate":Z
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 897
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 898
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    .prologue
    const/4 v5, 0x0

    .line 734
    iget-object v1, p2, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 736
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 737
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 740
    :cond_0
    iget-object v1, p2, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 746
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 748
    sget-object v1, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_2

    .line 753
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    .line 775
    :goto_0
    return-void

    .line 757
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/VoicemailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    .line 758
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 759
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 760
    iput v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    .line 761
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 762
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 765
    sget-object v1, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 766
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 767
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 768
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 771
    :cond_3
    const/16 v1, 0x642

    invoke-direct {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 773
    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 903
    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 904
    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 905
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/settings/VoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    .line 906
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->resetForwardingChangeState()V

    .line 907
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 908
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 910
    .local v7, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/settings/VoicemailSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 913
    .local v6, "doUpdate":Z
    if-eqz v6, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 907
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v9

    .line 917
    goto :goto_1

    .line 928
    .end local v6    # "doUpdate":Z
    .end local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/16 v0, 0x641

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    .line 933
    .end local v8    # "i":I
    :goto_2
    return-void

    .line 931
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/VoicemailSetting;->showDialog(I)V

    .line 719
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .param p1, "msgStatus"    # I

    .prologue
    .line 1296
    sparse-switch p1, :sswitch_data_0

    .line 1318
    :goto_0
    return-void

    .line 1300
    :sswitch_0
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1303
    :sswitch_1
    const/16 v0, 0x5dd

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1306
    :sswitch_2
    const/16 v0, 0x5de

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1309
    :sswitch_3
    const/16 v0, 0x578

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1312
    :sswitch_4
    const/16 v0, 0x640

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1296
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1578
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1579
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1580
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1585
    :cond_0
    return-void

    .line 1578
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 510
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    .line 512
    :cond_0
    const/16 v0, 0x643

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showDialogIfForeground(I)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 515
    .local v9, "prevSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, v9, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 523
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    .line 525
    if-nez v9, :cond_3

    const/4 v8, 0x0

    .line 527
    .local v8, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    :goto_0
    if-eqz v8, :cond_6

    .line 528
    iget-object v11, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 530
    .local v11, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->resetForwardingChangeState()V

    .line 531
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v8

    if-ge v7, v0, :cond_6

    .line 532
    aget-object v6, v8, v7

    .line 536
    .local v6, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 537
    .local v10, "result":Landroid/os/AsyncResult;
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    :goto_2
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 531
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 525
    .end local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "i":I
    .end local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10    # "result":Landroid/os/AsyncResult;
    .end local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_3
    iget-object v8, v9, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_0

    .restart local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v7    # "i":I
    .restart local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v10    # "result":Landroid/os/AsyncResult;
    .restart local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_4
    move v1, v12

    .line 539
    goto :goto_2

    .line 554
    .end local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "i":I
    .end local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9    # "prevSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    .end local v10    # "result":Landroid/os/AsyncResult;
    .end local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->onRevertDone()V

    .line 557
    :cond_6
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "msg"    # I

    .prologue
    .line 1442
    if-nez p2, :cond_0

    .line 1446
    :goto_0
    return-void

    .line 1443
    :cond_0
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1444
    .local v0, "ringtoneUri":Landroid/net/Uri;
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    .line 1445
    .local v1, "summary":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v3, p3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 7
    .param p1, "currentProviderSetting"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1454
    move-object v0, p1

    .line 1455
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;

    .line 1461
    .local v1, "provider":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 1462
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f08012c

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/VoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1463
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 1464
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setIntent(Landroid/content/Intent;)V

    .line 1466
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1475
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget-object v2, v1, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1469
    .local v2, "providerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v3, v6}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 1471
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    iget-object v4, v1, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setIntent(Landroid/content/Intent;)V

    .line 1473
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1156
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1157
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1159
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 1160
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1162
    .local v0, "summary":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1160
    .end local v0    # "summary":Ljava/lang/String;
    :cond_2
    const v1, 0x7f080269

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "idx"    # I

    .prologue
    const/16 v6, 0x642

    const/4 v9, 0x0

    .line 791
    const/4 v2, 0x0

    .line 792
    .local v2, "error":Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 795
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 797
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 800
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "error":Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 804
    .restart local v2    # "error":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_3

    .line 867
    :cond_2
    :goto_0
    return-void

    .line 810
    :cond_3
    if-eqz v2, :cond_4

    .line 812
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 813
    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSetting;->dismissDialogSafely(I)V

    .line 814
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    goto :goto_0

    .line 819
    :cond_4
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 820
    .local v0, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 821
    .local v3, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 822
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 823
    aget-object v3, v0, v4

    .line 827
    :cond_5
    if-nez v3, :cond_a

    .line 832
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 833
    .restart local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 834
    sget-object v5, Lcom/android/phone/settings/VoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 835
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 844
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 847
    const/4 v1, 0x1

    .line 848
    .local v1, "done":Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 849
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_c

    .line 850
    const/4 v1, 0x0

    .line 854
    :cond_7
    if-eqz v1, :cond_2

    .line 856
    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSetting;->dismissDialogSafely(I)V

    .line 857
    iget-boolean v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_8

    .line 858
    const-string v5, ""

    new-instance v6, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/settings/VoicemailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    .line 861
    iput-boolean v9, p0, Lcom/android/phone/settings/VoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 863
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 821
    .end local v1    # "done":Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 838
    :cond_a
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 839
    :cond_b
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .line 848
    .restart local v1    # "done":Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 576
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 577
    const/4 v9, 0x0

    .line 581
    .local v9, "failure":Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 582
    .local v13, "isVMProviderSettingsForced":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 584
    const/16 v17, 0x0

    .line 585
    .local v17, "vmNum":Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 587
    const/4 v9, 0x1

    .line 615
    :cond_0
    :goto_0
    if-eqz v9, :cond_7

    .line 617
    if-eqz v13, :cond_1

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->switchToPreviousVoicemailProvider()V

    .line 676
    .end local v9    # "failure":Z
    .end local v13    # "isVMProviderSettingsForced":Z
    .end local v17    # "vmNum":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 589
    .restart local v9    # "failure":Z
    .restart local v13    # "isVMProviderSettingsForced":Z
    .restart local v17    # "vmNum":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 591
    const/4 v9, 0x1

    goto :goto_0

    .line 593
    :cond_3
    const-string v2, "com.android.phone.Signout"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 595
    if-eqz v13, :cond_4

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 599
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v16

    .line 601
    .local v16, "victim":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v12, "i":Landroid/content/Intent;
    const-string v2, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, v16

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const/high16 v2, 0x4000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 604
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/settings/VoicemailSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 608
    .end local v12    # "i":Landroid/content/Intent;
    .end local v16    # "victim":Ljava/lang/String;
    :cond_5
    const-string v2, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 609
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 611
    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    .line 624
    :cond_7
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 625
    const-string v2, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 629
    .local v10, "fwdNum":Ljava/lang/String;
    const-string v2, "com.android.phone.ForwardingNumberTime"

    const/16 v3, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 633
    .local v11, "fwdNumTime":I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v10, v11}, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .line 638
    .end local v9    # "failure":Z
    .end local v10    # "fwdNum":Ljava/lang/String;
    .end local v11    # "fwdNumTime":I
    .end local v13    # "isVMProviderSettingsForced":Z
    .end local v17    # "vmNum":Ljava/lang/String;
    :cond_8
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 643
    const/4 v8, 0x0

    .line 644
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v14, ""

    .line 646
    .local v14, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 647
    .local v15, "uri":Landroid/net/Uri;
    const-string v2, "VoicemailSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 649
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 664
    :goto_2
    if-eqz v8, :cond_9

    .line 665
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 669
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_9
    :goto_3
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 671
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2, v14}, Lcom/android/phone/settings/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 651
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/settings/VoicemailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 653
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_c

    .line 654
    :cond_b
    const-string v2, "onActivityResult: bad contact data, no results found."

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSetting;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    if-eqz v8, :cond_1

    .line 665
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 657
    :cond_c
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    goto :goto_2

    .line 659
    .end local v15    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 664
    if-eqz v8, :cond_9

    .line 665
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 661
    :catch_1
    move-exception v2

    .line 664
    if-eqz v8, :cond_9

    .line 665
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 664
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_d

    .line 665
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 1326
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1329
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    :goto_0
    return-void

    .line 1332
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    .line 1334
    .local v0, "slotId":I
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1336
    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->addPreferencesFromResource(I)V

    .line 1339
    const-string v1, "button_voicemail"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 1340
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-eqz v1, :cond_1

    .line 1341
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v1, p0, v3, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1342
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1343
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    const v2, 0x7f080210

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1346
    :cond_1
    const-string v1, "button_voicemail_provider"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1347
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 1348
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1349
    const-string v1, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    .line 1351
    const-string v1, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    .line 1353
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1354
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->initVoiceMailProviders()V

    .line 1363
    :cond_2
    if-nez p1, :cond_3

    .line 1364
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 1366
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 1367
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/settings/VoicemailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1374
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    .line 1375
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 1377
    new-instance v1, Lcom/android/phone/settings/VoicemailSetting$5;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/VoicemailSetting$5;-><init>(Lcom/android/phone/settings/VoicemailSetting;)V

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 1387
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1369
    :cond_4
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/settings/VoicemailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1370
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/16 v9, 0x643

    const/16 v8, 0x641

    const/4 v7, 0x0

    const v6, 0x7f080123

    .line 1183
    const/16 v5, 0x5dc

    if-eq p1, v5, :cond_0

    const/16 v5, 0x578

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5dd

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5de

    if-eq p1, v5, :cond_0

    const/16 v5, 0x640

    if-ne p1, v5, :cond_1

    .line 1187
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1190
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08011b

    .line 1191
    .local v4, "titleId":I
    sparse-switch p1, :sswitch_data_0

    .line 1222
    const v3, 0x7f080120

    .line 1225
    .local v3, "msgId":I
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1229
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/settings/VoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1230
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/VoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1232
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1233
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1236
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1252
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :goto_1
    return-object v1

    .line 1193
    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "titleId":I
    :sswitch_0
    const v3, 0x7f080127

    .line 1194
    .restart local v3    # "msgId":I
    const v4, 0x7f0800ec

    .line 1196
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1201
    .end local v3    # "msgId":I
    :sswitch_1
    const v3, 0x7f08012b

    .line 1202
    .restart local v3    # "msgId":I
    const v4, 0x7f0800ec

    .line 1204
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1207
    .end local v3    # "msgId":I
    :sswitch_2
    const v3, 0x7f080128

    .line 1209
    .restart local v3    # "msgId":I
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1212
    .end local v3    # "msgId":I
    :sswitch_3
    const v3, 0x7f080129

    .line 1214
    .restart local v3    # "msgId":I
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1217
    .end local v3    # "msgId":I
    :sswitch_4
    const v3, 0x7f08012a

    .line 1218
    .restart local v3    # "msgId":I
    const v5, 0x7f080264

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1219
    const v5, 0x7f080265

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSetting;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1239
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x642

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1241
    :cond_2
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1242
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1243
    invoke-virtual {v1, v7}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 1244
    if-ne p1, v8, :cond_3

    const v5, 0x7f08011d

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/settings/VoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f08011e

    goto :goto_2

    :cond_4
    const v5, 0x7f08011c

    goto :goto_2

    .line 1252
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 1191
    nop

    :sswitch_data_0
    .sparse-switch
        0x578 -> :sswitch_1
        0x5dc -> :sswitch_2
        0x5dd -> :sswitch_3
        0x5de -> :sswitch_4
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/settings/EditPhoneNumberPreference;I)V
    .locals 2
    .param p1, "preference"    # Lcom/android/phone/settings/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 455
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    instance-of v1, p1, Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 459
    move-object v0, p1

    .line 461
    .local v0, "epn":Lcom/android/phone/settings/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/settings/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/settings/EditPhoneNumberPreference;

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    .line 490
    :cond_0
    :goto_0
    return-object v1

    .line 481
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "vmDisplay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800ee

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->getString(I)Ljava/lang/String;

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
    .line 1688
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1689
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1690
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSetting;->finish()V

    .line 1691
    const/4 v1, 0x1

    .line 1693
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onPause()V

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mForeground:Z

    .line 371
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 405
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentProviderKey":Ljava/lang/String;
    move-object v2, p2

    .line 407
    check-cast v2, Ljava/lang/String;

    .line 410
    .local v2, "newProviderKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    .end local v0    # "currentProviderKey":Ljava/lang/String;
    .end local v2    # "newProviderKey":Ljava/lang/String;
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v7

    .line 414
    .restart local v0    # "currentProviderKey":Ljava/lang/String;
    .restart local v2    # "newProviderKey":Ljava/lang/String;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 416
    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 418
    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 427
    .local v3, "newProviderSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_2

    .line 430
    iput-boolean v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMProviderSettingsForced:Z

    .line 431
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-direct {p0, v5}, Lcom/android/phone/settings/VoicemailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 435
    :cond_2
    iput-boolean v7, p0, Lcom/android/phone/settings/VoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 436
    invoke-direct {p0, v2, v3}, Lcom/android/phone/settings/VoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;)V

    goto :goto_0

    .line 438
    .end local v0    # "currentProviderKey":Ljava/lang/String;
    .end local v2    # "newProviderKey":Ljava/lang/String;
    .end local v3    # "newProviderSettings":Lcom/android/phone/settings/VoicemailSetting$VoiceMailProviderSettings;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_0

    .line 439
    const-string v5, "button_voicemail_notification_vibrate_key"

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/phone/MiuiPhoneUtils;->getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "vmVibrateKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 443
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/settings/EditPhoneNumberPreference;

    if-ne p2, v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1176
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1177
    iput p1, p0, Lcom/android/phone/settings/VoicemailSetting;->mCurrentDialogId:I

    .line 1178
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1392
    invoke-super {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onResume()V

    .line 1393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mForeground:Z

    .line 1395
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1397
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/VoicemailSetting;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;I)Z

    .line 1398
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v2, "button_voicemail_notification_vibrate_key"

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/MiuiPhoneUtils;->getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1401
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->lookupRingtoneName()V

    .line 1402
    return-void
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSetting;->updateVoiceNumberField()V

    .line 564
    iget v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 565
    iget v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSetting;->showVMDialog(I)V

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mVMOrFwdSetError:I

    .line 568
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 941
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 497
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 499
    invoke-super {p0, p1, p2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
