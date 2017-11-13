.class public Lcom/android/phone/NetworkModeManager;
.super Ljava/lang/Object;
.source "NetworkModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_CDMA_MASTER:[I

.field private static final DEFAULT_CDMA_VICE:[I

.field private static final DEFAULT_GSM_MASTER:[I

.field private static final DEFAULT_GSM_VICE:[I

.field public static final IS_QCOM:Z

.field private static final NETWORK_MODES_3G_CDMA:[I

.field private static final NETWORK_MODES_3G_CM:[I

.field private static final NETWORK_MODES_3G_CU:[I

.field private static final NETWORK_MODES_4G_CDMA:[I

.field private static final NETWORK_MODES_4G_CM:[I

.field private static final NETWORK_MODES_4G_CU:[I

.field private static final NETWORK_MODES_ALL_LTE:[I

.field private static final NETWORK_MODES_GLOBAL_ONLY:[I

.field private static final NETWORK_MODES_GSM_ONLY:[I

.field private static sInstance:Lcom/android/phone/NetworkModeManager;

.field private static final sLockType:I


# instance fields
.field private mDefaultDataSlot:I

.field private mDefaultDataSlotId:I

.field mHandler:Landroid/os/Handler;

.field private mIsDisableLteForIndonesia:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mVirtualSimSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 56
    const-string v5, "qcom"

    const-string v6, "vendor"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/phone/NetworkModeManager;->IS_QCOM:Z

    .line 98
    sget-boolean v5, Lcom/android/phone/NetworkModeManager;->IS_QCOM:Z

    if-eqz v5, :cond_4

    .line 99
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 100
    .local v4, "res":Landroid/content/res/Resources;
    new-array v5, v9, [I

    aput v9, v5, v8

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_GSM_ONLY:[I

    .line 101
    new-array v5, v9, [I

    const/4 v6, 0x7

    aput v6, v5, v8

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_GLOBAL_ONLY:[I

    .line 102
    const v5, 0x7f070042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CM:[I

    .line 103
    const v5, 0x7f070043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CM:[I

    .line 104
    const v5, 0x7f070044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .line 105
    const v5, 0x7f070045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CU:[I

    .line 106
    const v5, 0x7f070047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CDMA:[I

    .line 107
    const v5, 0x7f070048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CDMA:[I

    .line 108
    const v5, 0x7f070049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_ALL_LTE:[I

    .line 109
    const v5, 0x7f070041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 110
    .local v3, "gsmVice":[I
    const v5, 0x7f07003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 111
    .local v1, "cdmaVice":[I
    const v5, 0x7f070040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 112
    .local v2, "gsmMaster":[I
    const v5, 0x7f07003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 113
    .local v0, "cdmaMaster":[I
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isHMH2xCmForThreeMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    sget-object v2, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CM:[I

    .line 115
    move-object v0, v2

    .line 123
    :cond_0
    :goto_0
    sput-object v0, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_MASTER:[I

    .line 124
    sput-object v1, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_VICE:[I

    .line 125
    sput-object v2, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_MASTER:[I

    .line 126
    sput-object v3, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_VICE:[I

    .line 128
    sget-boolean v5, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmiui/telephony/TelephonyManager;->isDisableLte(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    const/4 v5, 0x4

    sput v5, Lcom/android/phone/NetworkModeManager;->sLockType:I

    .line 150
    :goto_1
    return-void

    .line 116
    :cond_1
    sget-boolean v5, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    if-eqz v5, :cond_2

    .line 117
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CDMA:[I

    goto :goto_0

    .line 118
    :cond_2
    sget-boolean v5, Lmiui/os/Build;->IS_MIFIVE:Z

    if-eqz v5, :cond_0

    const-string v5, "LTE-X5"

    const-string v6, "persist.radio.modem"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    move-object v0, v2

    goto :goto_0

    .line 132
    :cond_3
    sput v8, Lcom/android/phone/NetworkModeManager;->sLockType:I

    goto :goto_1

    .line 135
    .end local v0    # "cdmaMaster":[I
    .end local v1    # "cdmaVice":[I
    .end local v2    # "gsmMaster":[I
    .end local v3    # "gsmVice":[I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_4
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_GSM_ONLY:[I

    .line 136
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_GLOBAL_ONLY:[I

    .line 137
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CM:[I

    .line 138
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CM:[I

    .line 139
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .line 140
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CU:[I

    .line 141
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CDMA:[I

    .line 142
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CDMA:[I

    .line 143
    sput-object v7, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_ALL_LTE:[I

    .line 144
    sput-object v7, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_MASTER:[I

    .line 145
    sput-object v7, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_VICE:[I

    .line 146
    sput-object v7, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_MASTER:[I

    .line 147
    sput-object v7, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_VICE:[I

    .line 148
    sput v8, Lcom/android/phone/NetworkModeManager;->sLockType:I

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkModeManager;->mIsDisableLteForIndonesia:Z

    .line 95
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    iput v1, p0, Lcom/android/phone/NetworkModeManager;->mDefaultDataSlot:I

    .line 193
    new-instance v1, Lcom/android/phone/NetworkModeManager$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModeManager$1;-><init>(Lcom/android/phone/NetworkModeManager;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v1, Lcom/android/phone/NetworkModeManager$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModeManager$2;-><init>(Lcom/android/phone/NetworkModeManager;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, "filter":Landroid/content/IntentFilter;
    sget v1, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 184
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/NetworkModeManager;->mDefaultDataSlotId:I

    .line 185
    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlotId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkModeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkModeManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/NetworkModeManager;->showChangeDataPreferenceDialogIfNeed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkModeManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkModeManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeManager;->onIccStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkModeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkModeManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/NetworkModeManager;->updateNetworkModeIfNeeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkModeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkModeManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/NetworkModeManager;->getPreferredNetworkTypes()V

    return-void
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 645
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 646
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 647
    .local v0, "ic":Lcom/android/internal/telephony/IccCard;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    :cond_0
    const/4 v2, 0x2

    .line 654
    :goto_0
    return v2

    .line 650
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 652
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 654
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPreferredNetworkModeFromDb(I)I
    .locals 4
    .param p1, "slot"    # I

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 420
    :goto_0
    return v1

    .line 416
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NetworkModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredNetworkModeFromDb slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    goto :goto_0
.end method

.method private getPreferredNetworkTypes()V
    .locals 6

    .prologue
    .line 535
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 536
    .local v4, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 537
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public static getSupportedNetworkModes(I[I)[[I
    .locals 11
    .param p0, "defaultSlot"    # I
    .param p1, "phoneTypes"    # [I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x2

    .line 437
    array-length v6, p1

    new-array v3, v6, [[I

    .line 438
    .local v3, "supportModes":[[I
    sget-boolean v6, Lcom/android/phone/NetworkModeManager;->IS_QCOM:Z

    if-nez v6, :cond_0

    .line 440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_15

    .line 441
    sget-object v6, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_GSM_ONLY:[I

    aput-object v6, v3, v1

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/phone/NetworkModeManager;->isSingSimDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_15

    .line 448
    if-ne v1, p0, :cond_1

    .line 449
    aget v6, p1, v1

    invoke-static {v6}, Lcom/android/phone/NetworkModeManager;->getSupportedNetworkModesForSS(I)[I

    move-result-object v6

    aput-object v6, v3, v1

    .line 447
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_1
    sget-object v6, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_GSM_ONLY:[I

    aput-object v6, v3, v1

    goto :goto_2

    .line 457
    .end local v1    # "i":I
    :cond_2
    sget-boolean v6, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    if-eqz v6, :cond_6

    .line 459
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v6, p1

    if-ge v1, v6, :cond_15

    .line 460
    if-nez v1, :cond_5

    .line 461
    aget v6, p1, v1

    if-nez v6, :cond_3

    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 462
    .local v4, "type":I
    :goto_4
    if-ne v4, v10, :cond_4

    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_MASTER:[I

    :goto_5
    aput-object v6, v3, v1

    .line 459
    .end local v4    # "type":I
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 461
    :cond_3
    aget v4, p1, v1

    goto :goto_4

    .line 462
    .restart local v4    # "type":I
    :cond_4
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_MASTER:[I

    goto :goto_5

    .line 464
    .end local v4    # "type":I
    :cond_5
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_VICE:[I

    aput-object v6, v3, v1

    goto :goto_6

    .line 470
    .end local v1    # "i":I
    :cond_6
    aget v6, p1, p0

    if-ne v6, v10, :cond_8

    .line 471
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_MASTER:[I

    aput-object v6, v3, p0

    .line 472
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v6, p1

    if-ge v1, v6, :cond_12

    .line 473
    if-eq v1, p0, :cond_7

    .line 474
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_VICE:[I

    aput-object v6, v3, v1

    .line 472
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 477
    .end local v1    # "i":I
    :cond_8
    aget v6, p1, p0

    if-ne v6, v7, :cond_d

    .line 478
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_MASTER:[I

    aput-object v6, v3, p0

    .line 479
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    array-length v6, p1

    if-ge v1, v6, :cond_12

    .line 480
    if-ne v1, p0, :cond_9

    .line 479
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 483
    :cond_9
    aget v6, p1, v1

    if-ne v6, v10, :cond_a

    .line 484
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_VICE:[I

    aput-object v6, v3, v1

    goto :goto_9

    .line 485
    :cond_a
    aget v6, p1, v1

    if-ne v6, v7, :cond_b

    .line 486
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_VICE:[I

    aput-object v6, v3, v1

    goto :goto_9

    .line 489
    :cond_b
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 490
    .local v0, "defaultPhoneType":I
    if-ne v0, v10, :cond_c

    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_VICE:[I

    :goto_a
    aput-object v6, v3, v1

    goto :goto_9

    :cond_c
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_VICE:[I

    goto :goto_a

    .line 495
    .end local v0    # "defaultPhoneType":I
    .end local v1    # "i":I
    :cond_d
    const-string v6, "NetworkModeManager"

    const-string v9, "Error: getSupportedNetworkModes should not go here"

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v10, :cond_e

    move v2, v7

    .line 497
    .local v2, "isMasterCdma":Z
    :goto_b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    array-length v6, p1

    if-ge v1, v6, :cond_12

    .line 498
    if-ne v1, p0, :cond_10

    .line 499
    if-eqz v2, :cond_f

    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_MASTER:[I

    :goto_d
    aput-object v6, v3, v1

    .line 497
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .end local v1    # "i":I
    .end local v2    # "isMasterCdma":Z
    :cond_e
    move v2, v8

    .line 496
    goto :goto_b

    .line 499
    .restart local v1    # "i":I
    .restart local v2    # "isMasterCdma":Z
    :cond_f
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_MASTER:[I

    goto :goto_d

    .line 502
    :cond_10
    if-nez v2, :cond_11

    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v10, :cond_11

    .line 503
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_VICE:[I

    aput-object v6, v3, v1

    goto :goto_e

    .line 505
    :cond_11
    sget-object v6, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_VICE:[I

    aput-object v6, v3, v1

    goto :goto_e

    .line 511
    .end local v2    # "isMasterCdma":Z
    :cond_12
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlotId()I

    move-result v5

    .line 512
    .local v5, "virtualSlot":I
    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v6, v5, :cond_13

    .line 513
    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/android/phone/NetworkModeManager;->getSupportedNetworkModesForVirtualSim([I)[I

    move-result-object v6

    aput-object v6, v3, v5

    .line 517
    :cond_13
    sget v6, Lcom/android/phone/NetworkModeManager;->sLockType:I

    const/4 v9, 0x4

    if-ne v6, v9, :cond_14

    .line 518
    sget-object v6, Lcom/android/phone/NetworkModeManager;->sInstance:Lcom/android/phone/NetworkModeManager;

    if-eqz v6, :cond_14

    sget-object v6, Lcom/android/phone/NetworkModeManager;->sInstance:Lcom/android/phone/NetworkModeManager;

    iget-boolean v6, v6, Lcom/android/phone/NetworkModeManager;->mIsDisableLteForIndonesia:Z

    if-eqz v6, :cond_14

    .line 519
    const/4 v1, 0x0

    :goto_f
    array-length v6, p1

    if-ge v1, v6, :cond_14

    .line 520
    aget-object v6, v3, v1

    invoke-static {v6}, Lcom/android/phone/NetworkModeManager;->removeLte([I)[I

    move-result-object v6

    aput-object v6, v3, v1

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 525
    :cond_14
    invoke-static {}, Lcom/android/phone/NetworkModeManager;->isRemoveNetworkModeSettings()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 527
    const/4 v1, 0x0

    :goto_10
    array-length v6, p1

    if-ge v1, v6, :cond_15

    .line 528
    new-array v6, v7, [I

    aget-object v9, v3, v1

    aget v9, v9, v8

    aput v9, v6, v8

    aput-object v6, v3, v1

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 531
    .end local v5    # "virtualSlot":I
    :cond_15
    return-object v3
.end method

.method public static getSupportedNetworkModesForSS(I)[I
    .locals 3
    .param p0, "phoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 547
    sget-boolean v1, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v1, :cond_4

    .line 548
    sget-boolean v1, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    if-eqz v1, :cond_1

    .line 550
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CM:[I

    .line 589
    .local v0, "supportModes":[I
    :goto_0
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v1

    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlotId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 591
    invoke-static {v0}, Lcom/android/phone/NetworkModeManager;->getSupportedNetworkModesForVirtualSim([I)[I

    move-result-object v0

    .line 593
    :cond_0
    return-object v0

    .line 551
    .end local v0    # "supportModes":[I
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_MITHREE_CDMA:Z

    if-eqz v1, :cond_3

    .line 553
    if-ne p0, v2, :cond_2

    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .restart local v0    # "supportModes":[I
    :goto_1
    goto :goto_0

    .end local v0    # "supportModes":[I
    :cond_2
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CDMA:[I

    goto :goto_1

    .line 556
    :cond_3
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .restart local v0    # "supportModes":[I
    goto :goto_0

    .line 558
    .end local v0    # "supportModes":[I
    :cond_4
    sget-boolean v1, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v1, :cond_c

    .line 559
    sget-boolean v1, Lmiui/os/Build;->IS_MIFOUR_LTE_CM:Z

    if-eqz v1, :cond_5

    .line 561
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CM:[I

    .restart local v0    # "supportModes":[I
    goto :goto_0

    .line 562
    .end local v0    # "supportModes":[I
    :cond_5
    sget-boolean v1, Lmiui/os/Build;->IS_MIFOUR_CDMA:Z

    if-eqz v1, :cond_7

    .line 564
    if-ne p0, v2, :cond_6

    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .restart local v0    # "supportModes":[I
    :goto_2
    goto :goto_0

    .end local v0    # "supportModes":[I
    :cond_6
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CDMA:[I

    goto :goto_2

    .line 565
    :cond_7
    sget-boolean v1, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    if-eqz v1, :cond_9

    .line 567
    if-ne p0, v2, :cond_8

    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CU:[I

    .restart local v0    # "supportModes":[I
    :goto_3
    goto :goto_0

    .end local v0    # "supportModes":[I
    :cond_8
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CDMA:[I

    goto :goto_3

    .line 568
    :cond_9
    sget-boolean v1, Lmiui/os/Build;->IS_MIFOUR_LTE_CU:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lmiui/os/Build;->IS_MIFOUR_LTE_INDIA:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lmiui/os/Build;->IS_MIFOUR_LTE_SEASA:Z

    if-eqz v1, :cond_b

    .line 570
    :cond_a
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_4G_CU:[I

    .restart local v0    # "supportModes":[I
    goto :goto_0

    .line 573
    .end local v0    # "supportModes":[I
    :cond_b
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .restart local v0    # "supportModes":[I
    goto :goto_0

    .line 575
    .end local v0    # "supportModes":[I
    :cond_c
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v1, :cond_10

    .line 576
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    if-eqz v1, :cond_d

    .line 577
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CM:[I

    .restart local v0    # "supportModes":[I
    goto :goto_0

    .line 578
    .end local v0    # "supportModes":[I
    :cond_d
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    if-eqz v1, :cond_f

    .line 579
    if-ne p0, v2, :cond_e

    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .restart local v0    # "supportModes":[I
    :goto_4
    goto :goto_0

    .end local v0    # "supportModes":[I
    :cond_e
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CDMA:[I

    goto :goto_4

    .line 581
    :cond_f
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .restart local v0    # "supportModes":[I
    goto :goto_0

    .line 585
    .end local v0    # "supportModes":[I
    :cond_10
    const-string v1, "NetworkModeManager"

    const-string v2, "getSupportedNetworkModes should not go here"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_3G_CU:[I

    .restart local v0    # "supportModes":[I
    goto :goto_0
.end method

.method private static getSupportedNetworkModesForVirtualSim([I)[I
    .locals 6
    .param p0, "supportModes"    # [I

    .prologue
    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "getSupportedNetworkModesForVirtualSim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 783
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .line 784
    .local v0, "ret":[I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$VirtualSim;->isSupport4G(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    const-string v3, "NetworkModeManager"

    const-string v4, " support4G"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 796
    .end local v0    # "ret":[I
    .local v1, "ret":[I
    :goto_0
    return-object v1

    .line 788
    .end local v1    # "ret":[I
    .restart local v0    # "ret":[I
    :cond_0
    sget-boolean v3, Lmiui/os/Build;->IS_MIFOUR_LTE_CM:Z

    if-eqz v3, :cond_1

    .line 790
    sget-object v0, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_GSM_ONLY:[I

    .line 794
    :goto_1
    const-string v3, "NetworkModeManager"

    const-string v4, " networkModes from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 796
    .end local v0    # "ret":[I
    .restart local v1    # "ret":[I
    goto :goto_0

    .line 792
    .end local v1    # "ret":[I
    .restart local v0    # "ret":[I
    :cond_1
    invoke-static {p0}, Lcom/android/phone/NetworkModeManager;->removeLte([I)[I

    move-result-object v0

    goto :goto_1
.end method

.method public static isMasterSupportCdma()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 663
    sget-boolean v2, Lcom/android/phone/NetworkModeManager;->IS_QCOM:Z

    if-nez v2, :cond_1

    .line 673
    .local v0, "i":I
    :cond_0
    :goto_0
    return v1

    .line 667
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v2, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_MASTER:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 668
    const/4 v2, 0x2

    sget-object v3, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_MASTER:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 670
    const/4 v1, 0x1

    goto :goto_0

    .line 667
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isRemoveNetworkModeSettings()Z
    .locals 1

    .prologue
    .line 659
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    return v0
.end method

.method private static isSingSimDevice()Z
    .locals 1

    .prologue
    .line 641
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViceSupportCdma()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 677
    sget-boolean v2, Lcom/android/phone/NetworkModeManager;->IS_QCOM:Z

    if-nez v2, :cond_1

    .line 687
    .local v0, "i":I
    :cond_0
    :goto_0
    return v1

    .line 681
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v2, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_VICE:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 682
    const/4 v2, 0x2

    sget-object v3, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_VICE:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 684
    const/4 v1, 0x1

    goto :goto_0

    .line 681
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static make()Lcom/android/phone/NetworkModeManager;
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/android/phone/NetworkModeManager;->sInstance:Lcom/android/phone/NetworkModeManager;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "NetworkModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default support network modes gsm master="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_MASTER:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkModeManager;->DEFAULT_GSM_VICE:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cdma master="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_MASTER:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkModeManager;->DEFAULT_CDMA_VICE:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/android/phone/NetworkModeManager;

    invoke-direct {v0}, Lcom/android/phone/NetworkModeManager;-><init>()V

    sput-object v0, Lcom/android/phone/NetworkModeManager;->sInstance:Lcom/android/phone/NetworkModeManager;

    .line 171
    sget-object v0, Lcom/android/phone/NetworkModeManager;->sInstance:Lcom/android/phone/NetworkModeManager;

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultCardManager.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onIccStatusChanged(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 600
    sget v8, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    if-le v8, v2, :cond_3

    .line 601
    const-string v8, "ss"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "iccState":Ljava/lang/String;
    const-string v8, "LOADED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ABSENT"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 604
    :cond_0
    sget v8, Lcom/android/phone/NetworkModeManager;->sLockType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lmiui/telephony/TelephonyManager;->isDisableLte(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 605
    .local v2, "newState":Z
    :goto_0
    iget-boolean v8, p0, Lcom/android/phone/NetworkModeManager;->mIsDisableLteForIndonesia:Z

    if-eq v8, v2, :cond_1

    .line 606
    iput-boolean v2, p0, Lcom/android/phone/NetworkModeManager;->mIsDisableLteForIndonesia:Z

    .line 607
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 638
    .end local v1    # "iccState":Ljava/lang/String;
    .end local v2    # "newState":Z
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "iccState":Ljava/lang/String;
    :cond_2
    move v2, v7

    .line 604
    goto :goto_0

    .line 614
    .end local v1    # "iccState":Ljava/lang/String;
    :cond_3
    invoke-static {v7}, Lcom/android/phone/NetworkModeManager;->getPhoneType(I)I

    move-result v4

    .line 615
    .local v4, "phoneType":I
    const/4 v8, 0x2

    if-eq v4, v8, :cond_4

    if-ne v4, v2, :cond_1

    .line 618
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/phone/NetworkModeManager;->getPreferredNetworkModeFromDb(I)I

    move-result v0

    .line 619
    .local v0, "dbNetworkMode":I
    invoke-static {v4}, Lcom/android/phone/NetworkModeManager;->getSupportedNetworkModesForSS(I)[I

    move-result-object v6

    .line 620
    .local v6, "supportNetworkModes":[I
    iget v3, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    .line 621
    .local v3, "oldVirtualSimSlotId":I
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlotId()I

    move-result v8

    iput v8, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    .line 622
    iget v8, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    if-ne v8, v3, :cond_5

    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 626
    :cond_5
    new-instance v5, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;-><init>(Lcom/android/phone/NetworkModeManager;Lcom/android/phone/NetworkModeManager$1;)V

    .line 627
    .local v5, "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    new-array v8, v2, [I

    aget v9, v6, v7

    aput v9, v8, v7

    iput-object v8, v5, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    .line 628
    iput v7, v5, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->defaultDataSlot:I

    .line 629
    iput v7, v5, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->retryTimes:I

    .line 630
    const-string v8, "NetworkModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onIccStatusChanged set network mode to"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " virtualSimSlot old="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_network_mode"

    iget-object v10, v5, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    aget v10, v10, v7

    invoke-static {v8, v9, v7, v10}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 634
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    invoke-static {v7}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkModeManager;->getPreferredNetworkModeFromDb(I)I

    move-result v7

    iget-object v9, p0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_1
.end method

.method private static removeLte([I)[I
    .locals 5
    .param p0, "array"    # [I

    .prologue
    .line 752
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 753
    .local v2, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 754
    sget-object v3, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_ALL_LTE:[I

    aget v4, p0, v0

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 755
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 759
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [I

    .line 760
    .local v1, "ret":[I
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 761
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 765
    .end local v1    # "ret":[I
    :cond_2
    const-string v3, "NetworkModeManager"

    const-string v4, "removeLte error"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    sget-object v1, Lcom/android/phone/NetworkModeManager;->NETWORK_MODES_GSM_ONLY:[I

    :cond_3
    return-object v1
.end method

.method private showCdmaUnavailableDialog()V
    .locals 5

    .prologue
    .line 741
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 742
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const-class v3, Lcom/android/phone/CdmaUnavailableAlertDialog;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 743
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v2, "NetworkModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity failed anfe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showCdmaUnavailableDialogIfNeeded()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 691
    sget v6, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    if-ge v6, v8, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v0

    .line 696
    .local v0, "defaultDataSlot":I
    iget v6, p0, Lcom/android/phone/NetworkModeManager;->mDefaultDataSlot:I

    if-ne v6, v0, :cond_4

    .line 697
    const/4 v2, 0x1

    .line 698
    .local v2, "isCardNoChange":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v6, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    if-ge v1, v6, :cond_3

    if-eqz v2, :cond_3

    .line 699
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lmiui/telephony/DefaultSimManager;->getSimInsertStates(I)I

    move-result v6

    if-nez v6, :cond_2

    move v2, v5

    .line 698
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 699
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 701
    :cond_3
    if-nez v2, :cond_0

    .line 703
    .end local v1    # "i":I
    .end local v2    # "isCardNoChange":Z
    :cond_4
    iput v0, p0, Lcom/android/phone/NetworkModeManager;->mDefaultDataSlot:I

    .line 705
    invoke-static {}, Lcom/android/phone/NetworkModeManager;->isMasterSupportCdma()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/phone/NetworkModeManager;->isViceSupportCdma()Z

    move-result v6

    if-nez v6, :cond_0

    .line 710
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 711
    .local v4, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v5, :cond_6

    .line 713
    :cond_5
    const-string v5, "NetworkModeManager"

    const-string v6, "showCdmaUnavailableDialogIfNeeded return for sub not ready"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    :cond_6
    sget v6, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    new-array v3, v6, [I

    .line 718
    .local v3, "simTypes":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    sget v6, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    if-ge v1, v6, :cond_8

    .line 719
    invoke-static {v1}, Lcom/android/phone/NetworkModeManager;->getPhoneType(I)I

    move-result v6

    aput v6, v3, v1

    .line 720
    aget v6, v3, v1

    if-nez v6, :cond_7

    .line 722
    const-string v5, "NetworkModeManager"

    const-string v6, "showCdmaUnavailableDialogIfNeeded return for sim application not ready"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 727
    :cond_8
    const/4 v1, 0x0

    :goto_4
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 728
    if-eq v1, v0, :cond_9

    aget v6, v3, v1

    if-ne v6, v8, :cond_9

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultVoiceSlotId()I

    move-result v6

    if-ne v6, v1, :cond_9

    .line 730
    const-string v6, "NetworkModeManager"

    const-string v7, "showCdmaUnavailableDialogIfNeeded reset preferred voice slot"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-virtual {v6, v7}, Lmiui/telephony/SubscriptionManager;->setDefaultVoiceSlotId(I)V

    .line 734
    :cond_9
    aget v6, v3, v0

    if-ne v6, v5, :cond_a

    aget v6, v3, v1

    if-ne v6, v8, :cond_a

    .line 735
    invoke-direct {p0}, Lcom/android/phone/NetworkModeManager;->showCdmaUnavailableDialog()V

    .line 727
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private showChangeDataPreferenceDialogIfNeed()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v0

    .line 219
    .local v0, "dataSlotId":I
    const-string v4, "NetworkModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultDataSlotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v4, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    if-ge v1, v4, :cond_0

    .line 221
    if-eq v1, v0, :cond_5

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiui/telephony/DefaultSimManager;->getSimInsertStates(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiui/telephony/DefaultSimManager;->getSimInsertStates(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    :cond_2
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->is4GOnlySim(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 225
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 226
    .local v2, "provisioned":Z
    :goto_2
    if-nez v2, :cond_4

    .line 227
    const-string v3, "NetworkModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect 4G only SIM in slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and not provision, set it to default data slot directly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/telephony/SubscriptionManager;->setDefaultDataSlotId(I)V

    goto :goto_0

    .end local v2    # "provisioned":Z
    :cond_3
    move v2, v3

    .line 225
    goto :goto_2

    .line 230
    .restart local v2    # "provisioned":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/NetworkModeManager;->showChangeDataPreferenceDialog()V

    goto/16 :goto_0

    .line 220
    .end local v2    # "provisioned":Z
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateNetworkModeIfNeeded()V
    .locals 18

    .prologue
    .line 320
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v13

    invoke-virtual {v13}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v11

    .line 321
    .local v11, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 322
    :cond_0
    const-string v13, "NetworkModeManager"

    const-string v14, "updateNetworkModeIfNeeded return for empty subinfolist"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 326
    .local v8, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v13, v8

    new-array v7, v13, [I

    .line 328
    .local v7, "phoneTypes":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v13, v8

    if-ge v3, v13, :cond_4

    .line 329
    aget-object v13, v8, v3

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 330
    invoke-static {v3}, Lcom/android/phone/NetworkModeManager;->getPhoneType(I)I

    move-result v13

    aput v13, v7, v3

    .line 331
    invoke-static {v11, v3}, Lcom/android/phone/MiuiPhoneUtils;->getSubscriptionInfoBySlot(Ljava/util/List;I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v5

    .line 332
    .local v5, "matchedSubInfo":Lmiui/telephony/SubscriptionInfo;
    if-nez v5, :cond_3

    .line 333
    const-string v13, "NetworkModeManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateNetworkModeIfNeeded return false for has sim but no subInfo on slotId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 339
    .end local v5    # "matchedSubInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_2
    const/4 v13, 0x0

    aput v13, v7, v3

    .line 328
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 343
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/telephony/SubscriptionInfo;

    .line 344
    .local v10, "subInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v10}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v13

    aget v13, v7, v13

    if-nez v13, :cond_5

    .line 345
    const-string v13, "NetworkModeManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateNetworkModeIfNeeded return for sim application not ready on slotId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 351
    .end local v10    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_6
    sget v13, Lcom/android/phone/NetworkModeManager;->sLockType:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_7

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lmiui/telephony/TelephonyManager;->isDisableLte(Z)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/NetworkModeManager;->mIsDisableLteForIndonesia:Z

    .line 353
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/phone/NetworkModeManager;->updateNetworkModeInDb([ILjava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 355
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v2

    .line 356
    .local v2, "defaultSlot":I
    new-instance v9, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;-><init>(Lcom/android/phone/NetworkModeManager;Lcom/android/phone/NetworkModeManager$1;)V

    .line 357
    .local v9, "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    iput v2, v9, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->defaultDataSlot:I

    .line 358
    const/4 v13, 0x0

    iput v13, v9, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->retryTimes:I

    .line 359
    array-length v13, v8

    new-array v13, v13, [I

    iput-object v13, v9, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    .line 360
    const/4 v3, 0x0

    :goto_3
    array-length v13, v8

    if-ge v3, v13, :cond_8

    .line 361
    iget-object v13, v9, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NetworkModeManager;->getPreferredNetworkModeFromDb(I)I

    move-result v14

    aput v14, v13, v3

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 351
    .end local v2    # "defaultSlot":I
    .end local v9    # "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 363
    .restart local v2    # "defaultSlot":I
    .restart local v9    # "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    :cond_8
    if-nez v2, :cond_a

    const/4 v12, 0x1

    .line 364
    .local v12, "viceSlot":I
    :goto_4
    const-string v13, "NetworkModeManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "trying to setPreferredNetworkType "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    aget v15, v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in slot "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 369
    .local v6, "msg":Landroid/os/Message;
    invoke-static {v12}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    iget-object v14, v9, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    aget v14, v14, v12

    invoke-interface {v13, v14, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 371
    .end local v2    # "defaultSlot":I
    .end local v6    # "msg":Landroid/os/Message;
    .end local v9    # "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    .end local v12    # "viceSlot":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkModeManager;->showCdmaUnavailableDialogIfNeeded()V

    .line 372
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/NetworkModeManager;->mDefaultDataSlotId:I

    goto/16 :goto_0

    .line 363
    .restart local v2    # "defaultSlot":I
    .restart local v9    # "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    :cond_a
    const/4 v12, 0x0

    goto :goto_4
.end method

.method private updateNetworkModeInDb([ILjava/util/List;)Z
    .locals 15
    .param p1, "phoneTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v2

    .line 377
    .local v2, "defaultSlotId":I
    const/4 v11, 0x0

    .line 378
    .local v11, "update":Z
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/phone/NetworkModeManager;->getSupportedNetworkModes(I[I)[[I

    move-result-object v10

    .line 379
    .local v10, "supportModes":[[I
    iget v6, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    .line 380
    .local v6, "oldVirtualSimSlotId":I
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v12

    invoke-virtual {v12}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlotId()I

    move-result v12

    iput v12, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    .line 381
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_6

    .line 382
    invoke-direct {p0, v3}, Lcom/android/phone/NetworkModeManager;->getPreferredNetworkModeFromDb(I)I

    move-result v1

    .line 383
    .local v1, "dbMode":I
    move v7, v1

    .line 384
    .local v7, "subDbMode":I
    move v5, v1

    .line 385
    .local v5, "newDbMode":I
    sget v8, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 386
    .local v8, "subId":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/telephony/SubscriptionInfo;

    .line 387
    .local v9, "subInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v9}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v12

    if-ne v3, v12, :cond_0

    .line 388
    invoke-virtual {v9}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    .line 389
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "preferred_network_mode"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 394
    .end local v9    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    iget v12, p0, Lcom/android/phone/NetworkModeManager;->mDefaultDataSlotId:I

    if-ne v12, v2, :cond_2

    aget-object v12, v10, v3

    invoke-static {v12, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v12

    if-eqz v12, :cond_2

    iget v12, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    if-eq v6, v12, :cond_3

    .line 396
    :cond_2
    aget-object v12, v10, v3

    const/4 v13, 0x0

    aget v5, v12, v13

    .line 398
    :cond_3
    const-string v12, "NetworkModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateNetworkModeInDb slot="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sub="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " simType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, p1, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " dbMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " subDbMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " newDbMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " supportModes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v3

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " defaultSlotId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mDefaultDataSlotId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/phone/NetworkModeManager;->mDefaultDataSlotId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mVirtualSimSlotId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/phone/NetworkModeManager;->mVirtualSimSlotId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " oldVirtualSimSlotId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-ne v5, v1, :cond_4

    if-eq v1, v7, :cond_5

    .line 404
    :cond_4
    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lcom/android/phone/MiuiPhoneUtils;->setNetworkModeInDb(Ljava/util/List;II)V

    .line 405
    const/4 v11, 0x1

    .line 381
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 409
    .end local v1    # "dbMode":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "newDbMode":I
    .end local v7    # "subDbMode":I
    .end local v8    # "subId":I
    :cond_6
    return v11
.end method


# virtual methods
.method public showChangeDataPreferenceDialog()V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 239
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/MiuiErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    const-string v2, "dialog_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    const-string v2, "NetworkModeManager"

    const-string v3, "showChangeDataPreferenceDialog"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method
