.class public Lcom/android/internal/telephony/ModemBindingPolicyHandler;
.super Landroid/os/Handler;
.source "ModemBindingPolicyHandler.java"


# static fields
.field private static final EVENT_GET_PREF_MODE_DONE:I = 0x5

.field private static final EVENT_MODEM_RAT_CAPS_AVAILABLE:I = 0x1

.field private static final EVENT_SET_PREF_MODE:I = 0x3

.field private static final EVENT_SET_PREF_MODE_DONE:I = 0x4

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x2

.field private static final FAILURE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "ModemBindingPolicyHandler"

.field private static final NETWORK_MASK_CDMA:I = 0x31f0

.field private static final NETWORK_MASK_CDMA_NO_EVDO:I = 0x70

.field private static final NETWORK_MASK_EVDO_NO_CDMA:I = 0x3180

.field private static final NETWORK_MASK_GLOBAL:I = 0x1bffe

.field private static final NETWORK_MASK_GSM_ONLY:I = 0x10006

.field private static final NETWORK_MASK_GSM_UMTS:I = 0x18e0e

.field private static final NETWORK_MASK_LTE_CDMA_EVDO:I = 0x71f0

.field private static final NETWORK_MASK_LTE_CMDA_EVDO_GSM_WCDMA:I = 0x1fffe

.field private static final NETWORK_MASK_LTE_GSM_WCDMA:I = 0x1ce0e

.field private static final NETWORK_MASK_LTE_ONLY:I = 0x4000

.field private static final NETWORK_MASK_LTE_WCDMA:I = 0xce08

.field private static final NETWORK_MASK_TD_SCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x3bffe

.field private static final NETWORK_MASK_TD_SCDMA_GSM:I = 0x30006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_LTE:I = 0x34006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA:I = 0x38e0e

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA_LTE:I = 0x3ce0e

.field private static final NETWORK_MASK_TD_SCDMA_LTE:I = 0x24000

.field private static final NETWORK_MASK_TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x3fffe

.field private static final NETWORK_MASK_TD_SCDMA_ONLY:I = 0x20000

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA:I = 0x28e08

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA_LTE:I = 0x2ce08

.field private static final NETWORK_MASK_WCDMA_ONLY:I = 0x8e08

.field private static final NETWORK_MASK_WCDMA_PREF:I = 0x18e0e

.field private static final STATE_CTC_SLOT1:I = 0x1

.field private static final STATE_CTC_SLOT2:I = 0x2

.field private static final SUCCESS:I = 0x1

.field private static mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private static sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

.field private mModemRatCapabilitiesAvailable:Z

.field private mNumPhones:I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    .line 183
    iput-boolean v7, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    .line 184
    iput-boolean v7, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 186
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    .line 187
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    .line 188
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    .line 192
    iput-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 216
    const-string v0, "Constructor - Enter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 218
    iput-object p3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 219
    iput-object p1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    .line 220
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 221
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 223
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v0, p0, v4, v5}, Lcom/android/internal/telephony/ModemStackController;->registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v6, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 230
    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v6, v0, :cond_3

    .line 231
    const-string v0, "1"

    const-string v1, "persist.radio.multisim.stackid"

    const-string v5, "0"

    invoke-static {v6, v1, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    .line 233
    .local v2, "stackId":I
    :goto_2
    if-nez v2, :cond_2

    const v3, 0x3ce0e

    .line 235
    .local v3, "netMask":I
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v2, v0, v6

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aput v2, v0, v6

    .line 237
    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    new-instance v0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    sget-object v1, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;-><init>(Lcom/android/internal/telephony/ModemStackController;IIII)V

    aput-object v0, v8, v6

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v2    # "stackId":I
    .end local v3    # "netMask":I
    :cond_1
    move v2, v7

    .line 231
    goto :goto_2

    .line 233
    .restart local v2    # "stackId":I
    :cond_2
    const v3, 0x10006

    goto :goto_3

    .line 241
    .end local v2    # "stackId":I
    :cond_3
    const-string v0, "Constructor - Exit"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ModemBindingPolicyHandler;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHdlr.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    return-object v0
.end method

.method private getNumOfRatSupportedForNwMode(ILcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;)I
    .locals 7
    .param p1, "nwMode"    # I
    .param p2, "modemCaps"    # Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .prologue
    const v6, 0x3ce0e

    const v5, 0x38e0e

    const v4, 0x28e08

    const v3, 0x18e0e

    .line 645
    const/4 v0, 0x0

    .line 647
    .local v0, "supportedRatMaskForNwMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] modemCaps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 650
    packed-switch p1, :pswitch_data_0

    .line 785
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: supportedRatMaskForNwMode: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 788
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getNumRatSupportedInMask(I)I

    move-result v1

    return v1

    .line 652
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_0

    .line 653
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v5

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    .line 659
    goto :goto_0

    .line 662
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x10006

    and-int v0, v1, v2

    .line 664
    goto :goto_0

    .line 667
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_1

    .line 668
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v4

    goto :goto_0

    .line 671
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x8e08

    and-int v0, v1, v2

    .line 674
    goto :goto_0

    .line 677
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    .line 679
    goto :goto_0

    .line 682
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x31f0

    .line 684
    goto :goto_0

    .line 687
    :pswitch_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit8 v0, v1, 0x70

    .line 689
    goto :goto_0

    .line 692
    :pswitch_6
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x3180

    .line 694
    goto :goto_0

    .line 697
    :pswitch_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1bffe

    and-int v0, v1, v2

    .line 699
    goto :goto_0

    .line 702
    :pswitch_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x71f0

    .line 704
    goto :goto_0

    .line 707
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_2

    .line 708
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v6

    goto/16 :goto_0

    .line 711
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1ce0e

    and-int v0, v1, v2

    .line 714
    goto/16 :goto_0

    .line 717
    :pswitch_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1fffe

    and-int v0, v1, v2

    .line 719
    goto/16 :goto_0

    .line 722
    :pswitch_b
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x4000

    .line 724
    goto/16 :goto_0

    .line 727
    :pswitch_c
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0xce08

    and-int v0, v1, v2

    .line 729
    goto/16 :goto_0

    .line 732
    :pswitch_d
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const/high16 v2, 0x20000

    and-int v0, v1, v2

    .line 734
    goto/16 :goto_0

    .line 737
    :pswitch_e
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v4

    .line 739
    goto/16 :goto_0

    .line 742
    :pswitch_f
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x24000

    and-int v0, v1, v2

    .line 744
    goto/16 :goto_0

    .line 747
    :pswitch_10
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x30006

    and-int v0, v1, v2

    .line 749
    goto/16 :goto_0

    .line 752
    :pswitch_11
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x34006

    and-int v0, v1, v2

    .line 754
    goto/16 :goto_0

    .line 757
    :pswitch_12
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v5

    .line 759
    goto/16 :goto_0

    .line 762
    :pswitch_13
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x2ce08

    and-int v0, v1, v2

    .line 764
    goto/16 :goto_0

    .line 767
    :pswitch_14
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v6

    .line 769
    goto/16 :goto_0

    .line 772
    :pswitch_15
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3bffe

    and-int v0, v1, v2

    .line 774
    goto/16 :goto_0

    .line 777
    :pswitch_16
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3fffe

    and-int v0, v1, v2

    .line 779
    goto/16 :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private getNumRatSupportedInMask(I)I
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 800
    .local v0, "noOfOnes":I
    :goto_0
    if-eqz p1, :cond_0

    .line 801
    add-int/lit8 v1, p1, -0x1

    and-int/2addr p1, v1

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_0
    return v0
.end method

.method private getTdscdmaPresent()I
    .locals 3

    .prologue
    .line 848
    const-string v1, "persist.radio.tdscdma_present"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "tdscdmaPresent":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 850
    :cond_0
    const/4 v1, 0x1

    .line 852
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleModemRatCapsAvailable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 384
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 386
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    .line 388
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 389
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 396
    :cond_0
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 392
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 393
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleUpdateBindingDone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 288
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v3, :cond_2

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "errorCode":I
    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 293
    .local v2, "resp":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 294
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 295
    const/4 v0, 0x2

    .line 297
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 298
    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "errorCode":I
    .end local v2    # "resp":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 7
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 559
    iget v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v4, v5, [I

    .line 560
    .local v4, "numRatSupported":[I
    const/4 v3, 0x0

    .line 561
    .local v3, "maxNumRatSupported":I
    const/4 v2, 0x0

    .line 564
    .local v2, "isSupported":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v5, :cond_1

    .line 566
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v5, v5, v1

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getNumOfRatSupportedForNwMode(ILcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;)I

    move-result v5

    aput v5, v4, v1

    .line 567
    aget v5, v4, v1

    if-ge v3, v5, :cond_0

    aget v3, v4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v5, 0x0

    aput v5, v4, v1

    .line 570
    const-string v5, "modemCapInfo is null until now"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 575
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    aget v5, v4, p2

    if-ne v5, v3, :cond_2

    const/4 v2, 0x1

    .line 577
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nwMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", on stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_3

    const-string v5, "Supported"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 580
    return v2

    .line 577
    :cond_3
    const-string v5, "Not Supported"

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 840
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 844
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ModemBindingPolicyHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 197
    const-string v0, "ModemBindingPolicyHandler"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    .line 203
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHandler.make() should be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onGetPrefNwModeDone(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 826
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPrefNwModeDone(SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): got Exception ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 832
    .local v0, "getNwMode":[I
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    if-eq v1, v2, :cond_0

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPrefNwModeDone(SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Not matched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getNwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrefNwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private onSetPrefNwModeDone(Landroid/os/AsyncResult;II)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "retryCount"    # I

    .prologue
    .line 808
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") retryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSetPrefNwModeInProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 813
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 817
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    const/4 v0, 0x3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 821
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 636
    if-eqz p1, :cond_0

    .line 637
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 639
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private setPrimaryStackForCdma()[I
    .locals 11

    .prologue
    .line 857
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v6, v9, [I

    .line 858
    .local v6, "nwMode":[I
    const/4 v2, -0x1

    .line 859
    .local v2, "cdmaSlot":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    .line 860
    .local v7, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 861
    .local v0, "PhoneId":I
    const-string v9, "persist.radio.multisim.stackid"

    const-string v10, "-1"

    invoke-static {v0, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 863
    .local v1, "StackId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v3, v9, :cond_6

    .line 864
    const/4 v9, 0x1

    aput v9, v6, v3

    .line 865
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v8

    .line 867
    .local v8, "subIdList":[I
    if-eqz v8, :cond_0

    const/4 v9, 0x0

    aget v9, v8, v9

    if-lez v9, :cond_0

    .line 868
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subIdList[0]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 869
    const/4 v9, 0x0

    aget v9, v8, v9

    const v10, 0x7ffffffb

    add-int/2addr v10, v3

    if-ne v9, v10, :cond_1

    .line 863
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 872
    :cond_1
    const/4 v9, 0x0

    aget v9, v8, v9

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v9

    aput v9, v6, v3

    .line 873
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] nwmode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 874
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subIdList[0]: inside "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 875
    const-string v9, "ril.ICC_TYPE"

    const-string v10, "0"

    invoke-static {v3, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 878
    .local v4, "iccType":I
    const-string v9, "INU"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "INS"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 879
    :cond_2
    const/4 v9, -0x1

    if-ne v2, v9, :cond_0

    const/4 v9, 0x1

    if-eq v4, v9, :cond_3

    const/4 v9, 0x2

    if-ne v4, v9, :cond_0

    .line 881
    :cond_3
    move v2, v3

    goto :goto_1

    .line 883
    :cond_4
    const/4 v9, -0x1

    if-ne v2, v9, :cond_0

    const/4 v9, 0x3

    if-eq v4, v9, :cond_5

    const/4 v9, 0x4

    if-ne v4, v9, :cond_0

    .line 885
    :cond_5
    move v2, v3

    goto :goto_1

    .line 890
    .end local v4    # "iccType":I
    .end local v8    # "subIdList":[I
    :cond_6
    if-ltz v2, :cond_14

    .line 891
    const-string v9, "INU"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "INS"

    sget-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 892
    :cond_7
    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    const/4 v9, 0x0

    aget v9, v6, v9

    if-nez v9, :cond_a

    .line 893
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subCtrlr.NewRecord: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 894
    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v6, v9

    .line 895
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v6, v9

    .line 927
    :cond_8
    :goto_2
    const/4 v9, 0x1

    if-ne v1, v9, :cond_9

    .line 928
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "state"

    if-nez v2, :cond_13

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 931
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 932
    const-string v9, "[setPrimaryStackForCdma] Send Intent: com.samsung.intent.action.ACTION_CROSS_MAPPING"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 935
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] cdmaSlot:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", StackId[0]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nwMode[0]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nwMode[1]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 940
    .end local v6    # "nwMode":[I
    :goto_4
    return-object v6

    .line 896
    .restart local v6    # "nwMode":[I
    :cond_a
    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 897
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] subCtrlr.NewRecord : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 899
    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewSlotId:I

    if-nez v9, :cond_c

    .line 900
    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_e

    .line 901
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] mNewSlotId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "network Mode 1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 902
    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v6, v9

    .line 909
    :cond_c
    :goto_5
    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewSlotId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 910
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_f

    .line 911
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setPrimaryStackForCdma] mNewSlotId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionController;->NewSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "network Mode 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 912
    const/4 v9, 0x1

    const/16 v10, 0x9

    aput v10, v6, v9

    goto/16 :goto_2

    .line 905
    :cond_e
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v6, v9

    goto :goto_5

    .line 915
    :cond_f
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v6, v9

    goto/16 :goto_2

    .line 920
    :cond_10
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 922
    :cond_11
    const/4 v9, 0x0

    const/16 v10, 0x9

    aput v10, v6, v9

    .line 924
    :cond_12
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v6, v9

    goto/16 :goto_2

    .line 929
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_13
    const/4 v9, 0x2

    goto/16 :goto_3

    .line 940
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .prologue
    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    sget-object v2, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ModemStackController;->getCurrentStackIdForPhoneId(I)I

    move-result v2

    aput v2, v1, v0

    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ModemStackController;->getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 404
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_1
    aput v1, v2, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 404
    goto :goto_1

    .line 406
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 586
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    goto :goto_1

    .line 593
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private updatePreferredStackIds()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 463
    iget-boolean v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    if-nez v10, :cond_1

    .line 464
    const-string v8, "updatePreferredStackIds: Modem Capabilites are not Available. Return!!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 465
    sget-object v8, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v8}, Lcom/android/internal/telephony/ModemStackController;->getModemCaps()V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ModemStackController;->isStackIdError()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 471
    const-string v10, "updatePreferredStackIds() StatckId Error"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 472
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v9, v10, v9

    .line 473
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v8, v9, v8

    goto :goto_0

    .line 479
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncCurrentStackInfo()V

    .line 482
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 483
    new-array v0, v12, [Ljava/lang/String;

    const-string v10, "IS_CTC"

    aput-object v10, v0, v9

    const-string v10, "IS_CTC2"

    aput-object v10, v0, v8

    .line 484
    .local v0, "ctcKey":[Ljava/lang/String;
    new-array v6, v12, [Ljava/lang/String;

    const-string v10, "phone1_on"

    aput-object v10, v6, v9

    const-string v10, "phone2_on"

    aput-object v10, v6, v8

    .line 485
    .local v6, "simOn":[Ljava/lang/String;
    const/4 v1, -0x1

    .local v1, "ctcSlot":I
    const/4 v2, 0x0

    .line 487
    .local v2, "ctcSlotCount":I
    const/4 v7, 0x0

    .local v7, "slot":I
    :goto_1
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v10, :cond_4

    .line 488
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    aget-object v11, v0, v7

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    .line 489
    move v1, v7

    .line 490
    add-int/lit8 v2, v2, 0x1

    .line 487
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 494
    :cond_4
    if-le v2, v8, :cond_6

    .line 495
    const/4 v2, 0x0

    .line 496
    const/4 v7, 0x0

    :goto_2
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v10, :cond_6

    .line 497
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    aget-object v11, v6, v7

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 498
    move v1, v7

    .line 499
    add-int/lit8 v2, v2, 0x1

    .line 496
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 504
    :cond_6
    if-le v2, v8, :cond_7

    .line 505
    const/4 v7, 0x0

    :goto_3
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v10, :cond_7

    .line 506
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v10, v10, v7

    if-eq v10, v8, :cond_8

    .line 507
    move v1, v7

    .line 508
    const/4 v2, 0x1

    .line 514
    :cond_7
    if-ltz v1, :cond_a

    if-ne v2, v8, :cond_a

    .line 515
    if-nez v1, :cond_9

    move v5, v8

    .line 516
    .local v5, "otherSlot":I
    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v9, v10, v1

    .line 517
    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v8, v9, v5

    .line 521
    .end local v5    # "otherSlot":I
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePreferredStackIds() 7+5Mode, ctcSlot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    move v5, v9

    .line 515
    goto :goto_4

    .line 519
    :cond_a
    const/4 v1, -0x1

    goto :goto_5

    .line 525
    .end local v0    # "ctcKey":[Ljava/lang/String;
    .end local v1    # "ctcSlot":I
    .end local v2    # "ctcSlotCount":I
    .end local v6    # "simOn":[Ljava/lang/String;
    .end local v7    # "slot":I
    :cond_b
    const/4 v3, 0x0

    .local v3, "curPhoneId":I
    :goto_6
    iget v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v3, v8, :cond_0

    .line 527
    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v8, v8, v3

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v3

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 528
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePreferredStackIds: current stack["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]supports NwMode["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] on phoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 525
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 536
    :cond_d
    const/4 v4, 0x0

    .local v4, "otherPhoneId":I
    :goto_7
    iget v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v4, v8, :cond_c

    .line 538
    if-ne v4, v3, :cond_f

    .line 536
    :cond_e
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 540
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v8, v8, v3

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v4

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 544
    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v8, v8, v4

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v3

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 546
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] and phoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 550
    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v4

    aput v9, v8, v3

    .line 551
    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v3

    aput v9, v8, v4

    goto :goto_8
.end method

.method private updateStackBindingIfRequired(Z)I
    .locals 7
    .param p1, "isBootUp"    # Z

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "isUpdateStackBindingRequired":Z
    const/4 v3, 0x0

    .line 420
    .local v3, "response":I
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updatePreferredStackIds()V

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v4, :cond_0

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPreferredStatck["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentStackId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModemCapInfo["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 425
    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_3

    .line 427
    const/4 v1, 0x1

    .line 428
    const-string v4, "isUpdateStackBindingRequired : true"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 432
    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_2

    .line 433
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 434
    .local v2, "msg":Landroid/os/Message;
    sget-object v4, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    invoke-virtual {v4, v5, p1, v2}, Lcom/android/internal/telephony/ModemStackController;->updateStackBinding([IZLandroid/os/Message;)I

    move-result v3

    .line 437
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    return v3

    .line 422
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "phoneId":I
    const/4 v3, 0x0

    .line 250
    .local v3, "retryCount":I
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 253
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleUpdateBindingDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 257
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleModemRatCapsAvailable()V

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 262
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 263
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_PREF_MODE(SUB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retryCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 265
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v1, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 266
    .local v2, "resp":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v5, v5, v1

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 270
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "resp":Landroid/os/Message;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 271
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 272
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 273
    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->onSetPrefNwModeDone(Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 277
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 278
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 279
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->onGetPrefNwModeDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 598
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v2, [I

    .line 599
    .local v1, "oldPrefNwMode":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v2, :cond_1

    .line 605
    const-string v2, "setPreferredNetworkType: In Progress:"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 606
    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 633
    :goto_1
    return-void

    .line 610
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", on phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 612
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 616
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 617
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 619
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 621
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 622
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_5

    .line 623
    if-ne p2, v0, :cond_4

    .line 622
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 625
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    aget v3, v1, v0

    if-eq v2, v3, :cond_3

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", on otherPhoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v3, v3, v0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .line 631
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    goto/16 :goto_1
.end method

.method public updatePrefNwTypeIfRequired()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 310
    const/4 v9, 0x0

    .line 311
    .local v9, "updateRequired":Z
    const/4 v0, 0x0

    .line 312
    .local v0, "hasNwGsmOnly":Z
    const/4 v5, -0x1

    .line 313
    .local v5, "secondaryStackSlot":I
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v3, v10, [I

    .line 314
    .local v3, "nwModeinSubIdTable":[I
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 315
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    .line 316
    .local v6, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v10, :cond_2

    .line 317
    const/4 v10, 0x1

    aput v10, v3, v1

    .line 318
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v8

    .line 319
    .local v8, "subIdList":[I
    if-eqz v8, :cond_0

    aget v10, v8, v13

    if-lez v10, :cond_0

    .line 321
    aget v10, v8, v13

    const v11, 0x7ffffffb

    add-int/2addr v11, v1

    if-ne v10, v11, :cond_1

    .line 316
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_1
    aget v7, v8, v13

    .line 326
    .local v7, "subId":I
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v10

    aput v10, v3, v1

    .line 327
    aget v10, v3, v1

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    .line 328
    const/4 v9, 0x0

    .line 338
    .end local v7    # "subId":I
    .end local v8    # "subIdList":[I
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 351
    :cond_3
    :goto_2
    sget-object v10, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ModemStackController;->isStackIdError()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 352
    const-string v10, "updatePrefNwTypeIfRequired() StatckId Error"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 353
    const/4 v9, 0x1

    .line 357
    :cond_4
    if-eqz v9, :cond_9

    .line 358
    const/4 v1, 0x0

    :goto_3
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v10, :cond_8

    .line 359
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating Value in DB for slot["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 360
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_network_mode"

    aget v12, v3, v1

    invoke-static {v10, v11, v1, v12}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 331
    .restart local v7    # "subId":I
    .restart local v8    # "subIdList":[I
    :cond_5
    aget v10, v3, v1

    iget-object v11, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v11, v11, v1

    if-eq v10, v11, :cond_0

    .line 332
    const/4 v9, 0x1

    goto :goto_1

    .line 340
    .end local v7    # "subId":I
    .end local v8    # "subIdList":[I
    :cond_6
    const-string v10, "INU"

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "INS"

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 341
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->setPrimaryStackForCdma()[I

    move-result-object v2

    .line 342
    .local v2, "nwModeGsm":[I
    if-eqz v2, :cond_3

    .line 343
    move-object v3, v2

    .line 344
    const/4 v9, 0x1

    goto :goto_2

    .line 364
    .end local v2    # "nwModeGsm":[I
    :cond_8
    invoke-direct {p0, v13}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v10

    if-nez v10, :cond_a

    .line 368
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 369
    const/4 v1, 0x0

    :goto_4
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v10, :cond_a

    .line 370
    const/4 v10, 0x4

    invoke-virtual {p0, v10, v1, v13}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 371
    .local v4, "resp":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v10, v10, v1

    aget v11, v3, v1

    invoke-interface {v10, v11, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 376
    .end local v4    # "resp":Landroid/os/Message;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 377
    invoke-direct {p0, v13}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    .line 380
    :cond_a
    return-void
.end method
