.class public Lcom/android/phone/settings/NetworkSetting;
.super Lmiui/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAutoSelect:Landroid/preference/CheckBoxPreference;

.field private mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private final mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mNeedDataReEnable:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSearchButton:Landroid/preference/Preference;

.field private mSlotId:I

.field private mTryAutoSelectNetwork:Z

.field private mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

.field private mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/android/phone/settings/NetworkSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 130
    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z

    .line 142
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$1;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 229
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$2;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 250
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$3;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 482
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$4;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 564
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$5;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->doDataReEnable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->startNetworkQuery()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/phone/settings/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Lcom/android/phone/INetworkQueryService;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/settings/NetworkSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/settings/NetworkSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->selectNetworkAutomatic()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/NetworkSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/settings/NetworkSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/settings/NetworkSetting;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/settings/NetworkSetting;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/NetworkSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/settings/NetworkSetting;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkDataConnection()V
    .locals 3

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    .line 529
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 530
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V

    .line 538
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 533
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    const/16 v1, 0x320

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    goto :goto_0

    .line 536
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    goto :goto_0
.end method

.method private clearList()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 611
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    const v0, 0x7f080131

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 583
    return-void

    .line 582
    :cond_0
    const v0, 0x7f08012f

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 601
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->showDialogSafely(I)V

    .line 602
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/16 v4, 0x258

    .line 616
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "status":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->NotifyNetworkSelection(Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 632
    sget-object v1, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string v2, "displayNetworkSelectionFailed: SIM card absent, return."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_1
    return-void

    .line 621
    .end local v0    # "status":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_0

    .line 636
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xed8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 3

    .prologue
    .line 641
    iget-boolean v1, p0, Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z

    if-nez v1, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "status":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->NotifyNetworkSelection(Ljava/lang/String;)V

    .line 645
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .param p1, "networkStr"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080134

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 589
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 590
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 592
    :cond_0
    return-void
.end method

.method private doDataReEnable()V
    .locals 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z

    .line 545
    :cond_0
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "ni"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 787
    const-string v0, ""

    .line 788
    .local v0, "networkTitle":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    .line 790
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 791
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 793
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRadioTechText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "radioTech"    # Ljava/lang/String;

    .prologue
    .line 800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    const-string v2, ""

    .line 817
    :cond_0
    :goto_0
    return-object v2

    .line 804
    :cond_1
    const-string v2, " 2G"

    .line 806
    .local v2, "radioText":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 807
    .local v1, "radio":I
    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    .line 808
    const/16 v3, 0xe

    if-ne v1, v3, :cond_2

    .line 809
    const-string v2, " 4G"

    goto :goto_0

    .line 811
    :cond_2
    const-string v2, " 3G"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 814
    .end local v1    # "radio":I
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse radio tech error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/settings/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadNetworksList()V
    .locals 4

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    sget-object v0, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string v1, "loadNetworksList: SIM card absent, return."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 663
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_1

    .line 657
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2bc

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 835
    sget-object v0, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 4
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v1, 0x1

    .line 685
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v0, v1

    .line 688
    .local v0, "resultValid":Z
    :goto_0
    if-nez p2, :cond_0

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/NetworkSetting;->removeDialog(I)V

    .line 693
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->doDataReEnable()V

    .line 702
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 703
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->clearList()V

    .line 705
    if-eqz p2, :cond_3

    .line 707
    invoke-direct {p0, p2}, Lcom/android/phone/settings/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 715
    :goto_2
    return-void

    .line 685
    .end local v0    # "resultValid":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 709
    .restart local v0    # "resultValid":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/NetworkSetting;->createList(Ljava/util/List;)V

    goto :goto_2

    .line 712
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V

    goto :goto_2

    .line 696
    :catch_0
    move-exception v2

    goto :goto_1

    .line 694
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private selectNetworkAutomatic()V
    .locals 4

    .prologue
    const/16 v2, 0x12c

    const/4 v3, 0x1

    .line 822
    iget-boolean v1, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 823
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 827
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 829
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->clearList()V

    .line 830
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/NetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 832
    return-void
.end method

.method private startNetworkQuery()V
    .locals 4

    .prologue
    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    iget v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkQueryServiceAdapter;->startNetworkQuery(Lcom/android/phone/INetworkQueryService;Lcom/android/phone/INetworkQueryServiceCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNetworkQuery error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const v10, 0x7f0802e6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 718
    new-instance v6, Lmiui/preference/RadioButtonPreferenceCategory;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lmiui/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 719
    iget-object v6, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    const v7, 0x7f08012f

    invoke-virtual {v6, v7}, Lmiui/preference/RadioButtonPreferenceCategory;->setTitle(I)V

    .line 720
    iget-object v6, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    iget-object v7, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 722
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 724
    .local v3, "ni":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    const-string v7, "46020"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 727
    new-instance v0, Lmiui/preference/RadioButtonPreference;

    invoke-direct {v0, p0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 729
    .local v0, "carrier":Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/settings/NetworkSetting;->getNetworkSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 730
    .local v4, "spn":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/phone/settings/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "networkTitle":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v5

    .line 733
    .local v5, "state":Lcom/android/internal/telephony/OperatorInfo$State;
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/telephony/ServiceProviderUtils;->isChinaTelecom(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/telephony/ServiceProviderUtils;->isChinaTelecom(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 735
    sget-object v5, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 737
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/phone/PhoneAdapter;->getRadioTech(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/settings/NetworkSetting;->getRadioTechText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 739
    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v5, v6, :cond_2

    .line 740
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {p0, v10, v6}, Lcom/android/phone/settings/NetworkSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 742
    :cond_2
    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 750
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v5, v6, :cond_3

    .line 751
    invoke-virtual {v0, v8}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 753
    :cond_3
    invoke-virtual {v0, v8}, Lmiui/preference/RadioButtonPreference;->setPersistent(Z)V

    .line 755
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v6, v7, :cond_4

    .line 756
    invoke-virtual {v0, v9}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 759
    :cond_4
    iget-object v6, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v6, v0}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 760
    iget-object v6, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 744
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/phone/PhoneAdapter;->getRadioTech(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/settings/NetworkSetting;->getRadioTechText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 745
    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v5, v6, :cond_6

    .line 746
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {p0, v10, v6}, Lcom/android/phone/settings/NetworkSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 748
    :cond_6
    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 765
    .end local v0    # "carrier":Lmiui/preference/RadioButtonPreference;
    .end local v2    # "networkTitle":Ljava/lang/String;
    .end local v3    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    .end local v4    # "spn":Ljava/lang/String;
    .end local v5    # "state":Lcom/android/internal/telephony/OperatorInfo$State;
    :cond_7
    return-void
.end method

.method protected getAutoSelectionSummary(Z)Ljava/lang/String;
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    const v3, 0x7f08013b

    .line 348
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 349
    .local v1, "resource":Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "operatorName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    :cond_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    .end local v0    # "operatorName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 355
    .restart local v0    # "operatorName":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0802e3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 357
    .end local v0    # "operatorName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getNetworkAutoSelectionMode()Z
    .locals 3

    .prologue
    .line 523
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_auto_select_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operatorNumberic"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 768
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    const-string v1, ""

    .line 775
    :goto_0
    return-object v1

    .line 771
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 772
    .local v0, "end":I
    if-lez v0, :cond_1

    .line 773
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 775
    :cond_1
    invoke-static {p1, p2}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 294
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->doDataReEnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->finish()V

    .line 299
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_1

    .line 550
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->dismissDialog(I)V

    .line 551
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 554
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->onNetworkQueryServiceConnected()V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 556
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 557
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->onNetworkQueryServiceConnected()V

    goto :goto_0

    .line 559
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->selectNetworkAutomatic()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 310
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 312
    const v3, 0x7f06001b

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/NetworkSetting;->addPreferencesFromResource(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v4

    invoke-static {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    .line 316
    iget v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    invoke-static {v3}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v1, "intent":Landroid/content/Intent;
    iget v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    invoke-static {v1, v3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 320
    const-string v3, "subscription"

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "list_networks_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 323
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 325
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "button_srch_netwrks_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "button_auto_select_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getNetworkAutoSelectionMode()Z

    move-result v0

    .line 335
    .local v0, "autoSelect":Z
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 336
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/NetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/NetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 339
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.android.phone.intent.action.LOCAL_BINDER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/settings/NetworkSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 342
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/settings/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 345
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const v7, 0x7f0802db

    const v3, 0x1010355

    const/4 v6, 0x0

    const/high16 v5, 0x1040000

    const/4 v4, 0x1

    .line 393
    sparse-switch p1, :sswitch_data_0

    .line 472
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 473
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 474
    invoke-virtual {v1, v6}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 475
    invoke-virtual {v1, p0}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 476
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 400
    :sswitch_0
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 401
    .restart local v1    # "dialog":Lmiui/app/ProgressDialog;
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v1, v6}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 403
    invoke-virtual {v1, v4}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 407
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :sswitch_1
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 408
    .restart local v1    # "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v1, v6}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 410
    invoke-virtual {v1, v4}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 414
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0802da

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    .line 425
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 428
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0802dd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    .line 438
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 441
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0802de

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    .line 450
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 453
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800c3

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 461
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800c3

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 393
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 385
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 387
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 388
    return-void
.end method

.method onNetworkQueryServiceConnected()V
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getNetworkAutoSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->checkDataConnection()V

    .line 520
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    .line 375
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "handled":Z
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V

    .line 265
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 267
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 268
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 269
    const/16 v4, 0x190

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 273
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->selectNetworkAutomatic()V

    goto :goto_1

    .line 275
    :cond_2
    move-object v3, p2

    .line 276
    .local v3, "selectedCarrier":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "networkStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 280
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v5, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4, v1, v5}, Lcom/android/phone/PhoneProxy;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;Lcom/android/internal/telephony/Phone;)V

    .line 282
    invoke-direct {p0, v2}, Lcom/android/phone/settings/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 508
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 514
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    .line 369
    return-void
.end method

.method protected showDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 598
    :cond_0
    return-void
.end method
