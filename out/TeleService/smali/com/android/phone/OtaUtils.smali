.class public Lcom/android/phone/OtaUtils;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaUtils$CdmaOtaScreenState;,
        Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;,
        Lcom/android/phone/OtaUtils$CdmaOtaConfigData;,
        Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;,
        Lcom/android/phone/OtaUtils$OtaWidgetData;
    }
.end annotation


# static fields
.field private static sIsWizardMode:Z

.field private static sOtaCallLteRetries:I


# instance fields
.field public final OTA_FAILURE_DIALOG_TIMEOUT:I

.field public final OTA_SPC_TIMEOUT:I

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mInteractive:Z

.field private mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    .line 156
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/phone/BluetoothManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactive"    # Z
    .param p3, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/phone/OtaUtils;->OTA_SPC_TIMEOUT:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/OtaUtils;->OTA_FAILURE_DIALOG_TIMEOUT:I

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 214
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 215
    iput-object p1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    .line 216
    iput-boolean p2, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 217
    iput-object p3, p0, Lcom/android/phone/OtaUtils;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 218
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static getLteOnCdmaMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 1574
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1578
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1580
    :cond_0
    const-string v1, "telephony.lteOnCdmaDevice"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1583
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    goto :goto_0
.end method

.method public static isOtaspCallIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 441
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 442
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v6, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 444
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-nez p0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v5

    .line 447
    :cond_1
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 455
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 460
    iget-object v6, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v6, :cond_3

    .line 464
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "isOtaspCallIntent: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 472
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 479
    .local v3, "number":Ljava/lang/String;
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 481
    const/4 v5, 0x1

    goto :goto_0

    .line 473
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 477
    .local v2, "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1587
    const-string v0, "OtaUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1591
    const-string v0, "OtaUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return-void
.end method

.method public static maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "request"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 230
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 231
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 233
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 234
    const-string v7, "OtaUtils"

    const-string v8, "Don\'t run provisioning when in test harness"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return v6

    .line 238
    :cond_1
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 244
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v8

    if-nez v8, :cond_2

    .line 246
    const/4 v6, 0x0

    invoke-interface {v4, p1, p2, v6}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    move v6, v7

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 251
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 252
    sget v8, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    const/4 v9, 0x5

    if-ge v8, v9, :cond_3

    .line 254
    const-wide/16 v8, 0xbb8

    invoke-virtual {p1, p2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    sget v6, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    move v6, v7

    .line 256
    goto :goto_0

    .line 258
    :cond_3
    const-string v7, "OtaUtils"

    const-string v8, "maybeDoOtaCall: LTE state still unknown: giving up"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_4
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v5

    .line 266
    .local v5, "phoneNeedsActivation":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 272
    .local v3, "otaShowActivationScreen":I
    sget-boolean v8, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-eqz v8, :cond_5

    invoke-static {p0}, Lcom/android/phone/OtaUtils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_5

    .line 273
    if-eqz v5, :cond_0

    if-ne v3, v6, :cond_0

    .line 275
    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v7, v8, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 276
    sput-boolean v7, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    .line 279
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startInteractiveOtasp(Landroid/content/Context;)V

    goto :goto_0

    .line 286
    :cond_5
    if-eqz v5, :cond_0

    .line 287
    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v7, v8, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 288
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.phone.PERFORM_VOICELESS_CDMA_PROVISIONING"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "newIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    const-string v8, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "No activity Handling PERFORM_VOICELESS_CDMA_PROVISIONING!"

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->loge(Ljava/lang/String;)V

    move v6, v7

    .line 295
    goto :goto_0
.end method

.method private otaScreenInitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1063
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 1066
    const-string v0, "OtaUtils"

    const-string v1, "otaScreenInitialize: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f08024a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1078
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private otaShowInProgressScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 860
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_1

    .line 862
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 869
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-nez v1, :cond_2

    .line 870
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: UI widgets not set up yet!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 880
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 881
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f080256

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 883
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 884
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 886
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 887
    .local v0, "speakerOn":Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private otaShowSpcErrorNotice(I)V
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 985
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 988
    new-instance v0, Lcom/android/phone/OtaUtils$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$1;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 993
    .local v0, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08025a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 997
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x90

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1000
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1005
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    .line 1009
    .end local v0    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    :cond_0
    return-void
.end method

.method private sendOtaspResult(I)V
    .locals 5
    .param p1, "resultCode"    # I

    .prologue
    .line 825
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 826
    .local v1, "extraStuff":Landroid/content/Intent;
    const-string v2, "otasp_result_code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v2, :cond_0

    .line 832
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: no cdmaOtaScreenState object!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 836
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: null otaspResultCodePendingIntent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingIntent send() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSpeaker(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 566
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothManager;->disconnectBluetoothAudio()V

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static setupOtaspCall(Landroid/content/Intent;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 497
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 499
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    .line 502
    const-string v1, "OtaUtils"

    const-string v2, "setupOtaspCall: OtaUtils already exists; replacing with new instance..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    new-instance v1, Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;ZLcom/android/phone/BluetoothManager;)V

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 524
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 548
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 551
    :cond_1
    return-void
.end method

.method public static startInteractiveOtasp(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 349
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/phone/InCallScreenShowActivation;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 356
    .local v0, "activationScreenIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    .line 364
    const-string v2, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startInteractiveOtasp: launching InCallScreen in \'activate\' state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 367
    return-void
.end method

.method public static startNonInteractiveOtasp(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 382
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 384
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_0

    .line 386
    const-string v4, "OtaUtils"

    const-string v5, "startNonInteractiveOtasp: OtaUtils already exists; nuking the old one and starting again..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    new-instance v4, Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v5

    invoke-direct {v4, p0, v7, v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;ZLcom/android/phone/BluetoothManager;)V

    iput-object v4, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 399
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 400
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const-string v2, "*22899"

    .line 401
    .local v2, "number":Ljava/lang/String;
    const-string v4, "OtaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNonInteractiveOtasp: placing call to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4, v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v1

    .line 408
    .local v1, "callStatus":I
    if-nez v1, :cond_1

    .line 427
    :goto_0
    return v1

    .line 411
    :cond_1
    const-string v4, "OtaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure from placeCall() for OTA number \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNonInteractiveOtaSuccessFailure()V
    .locals 2

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 806
    .local v0, "resultCode":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 807
    return-void

    .line 803
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private updateOtaspProgress()V
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    .line 787
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanOtaScreen(Z)V
    .locals 6
    .param p1, "disableSpeaker"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1400
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1402
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 1403
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1404
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1405
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput v5, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 1406
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 1407
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1409
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1424
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1425
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1427
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1428
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1431
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1432
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1437
    :cond_0
    if-eqz p1, :cond_1

    .line 1438
    invoke-direct {p0, v5}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1440
    :cond_1
    return-void
.end method

.method public dismissAllOtaDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1298
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v0, :cond_1

    .line 1299
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1302
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1307
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1310
    :cond_1
    return-void
.end method

.method public getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    return-object v0
.end method

.method public isDialerOpened()Z
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x0

    .line 1106
    .local v0, "retval":Z
    return v0
.end method

.method public onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 584
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 594
    .local v0, "OtaStatus":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_0

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 597
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    .line 598
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 599
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v1, :cond_1

    .line 600
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->otaShowSpcErrorNotice(I)V

    goto :goto_0

    .line 602
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 612
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_0

    .line 630
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onOtaspDisconnect()V
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateNonInteractiveOtaSuccessFailure()V

    .line 654
    :cond_0
    return-void
.end method

.method public setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object p1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1497
    return-void
.end method
