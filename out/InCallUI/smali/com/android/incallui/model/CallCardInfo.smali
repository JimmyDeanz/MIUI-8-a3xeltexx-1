.class public Lcom/android/incallui/model/CallCardInfo;
.super Ljava/lang/Object;
.source "CallCardInfo.java"


# instance fields
.field public company:Ljava/lang/String;

.field public extraInfo:Ljava/lang/String;

.field public fullDialString:Ljava/lang/String;

.field public isCallTypeOutgoing:Z

.field public isIncoming:Z

.field public isMiProfile:Z

.field public isMtImsConference:Z

.field public isOnlineChecked:Z

.field public isSpeechCodecHD:Z

.field public isSuspect:Z

.field public isYellowPage:Z

.field public leftPostDialString:Ljava/lang/String;

.field public liveTalkProviderInfo:Ljava/lang/String;

.field public livetalkLeftMins:Ljava/lang/String;

.field public markCount:Ljava/lang/String;

.field public markProviderIcon:Landroid/graphics/Bitmap;

.field public markTitle:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nameIsNumber:Z

.field public phoneNumber:Ljava/lang/String;

.field public phoneTag:Ljava/lang/String;

.field public photo:Landroid/graphics/drawable/Drawable;

.field public simIndicatorResId:I

.field public speechHDResId:I

.field public telocation:Ljava/lang/String;

.field public wordAd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    .line 71
    iput v0, p0, Lcom/android/incallui/model/CallCardInfo;->speechHDResId:I

    return-void
.end method

.method public static createCoverCallCardInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/model/CallCardInfo;
    .locals 11
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 99
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    :cond_0
    move v2, v6

    .line 101
    .local v2, "isInComingCall":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/model/CallCardInfo;->createEmptyCardInfo()Lcom/android/incallui/model/CallCardInfo;

    move-result-object v0

    .line 102
    .local v0, "callCardInfo":Lcom/android/incallui/model/CallCardInfo;
    if-eqz p1, :cond_1

    if-nez p0, :cond_4

    .line 103
    :cond_1
    iput-boolean v2, v0, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    .line 153
    :cond_2
    :goto_1
    return-object v0

    .end local v0    # "callCardInfo":Lcom/android/incallui/model/CallCardInfo;
    .end local v2    # "isInComingCall":Z
    :cond_3
    move v2, v7

    .line 99
    goto :goto_0

    .line 106
    .restart local v0    # "callCardInfo":Lcom/android/incallui/model/CallCardInfo;
    .restart local v2    # "isInComingCall":Z
    :cond_4
    iget-object v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 107
    iget-object v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 108
    iget-object v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    .line 109
    iget-object v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->company:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->company:Ljava/lang/String;

    .line 110
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getLeftPostDialString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    .line 111
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v4

    .line 114
    .local v4, "slotId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v8

    if-le v8, v6, :cond_b

    invoke-static {v4}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 116
    if-nez v4, :cond_a

    const v8, 0x7f0200a1

    :goto_4
    iput v8, v0, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    .line 121
    :goto_5
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 122
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 123
    .local v5, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    if-eqz v5, :cond_6

    .line 124
    iput-boolean v6, v0, Lcom/android/incallui/model/CallCardInfo;->isYellowPage:Z

    .line 125
    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->isAntispam()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->isUserMarked()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 126
    :cond_5
    const v8, 0x7f0c000a

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    .line 128
    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->isAntispam()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 129
    const v8, 0x7f0c0095

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->getMarkedCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->markCount:Ljava/lang/String;

    .line 131
    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->getProviderId()I

    move-result v8

    invoke-static {v1, v8}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/yellowpage/YellowPageProvider;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->markProviderIcon:Landroid/graphics/Bitmap;

    .line 140
    :cond_6
    :goto_6
    iget-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_d

    iget-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move v8, v6

    :goto_7
    iput-boolean v8, v0, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 141
    iput-boolean v2, v0, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    .line 142
    if-nez p0, :cond_e

    move v8, v7

    :goto_8
    iput-boolean v8, v0, Lcom/android/incallui/model/CallCardInfo;->isCallTypeOutgoing:Z

    .line 143
    iget-object v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->miProfile:Lmiui/provider/MiProfileResult;

    .line 146
    .local v3, "miProfile":Lmiui/provider/MiProfileResult;
    if-eqz v3, :cond_2

    .line 147
    iput-boolean v6, v0, Lcom/android/incallui/model/CallCardInfo;->isMiProfile:Z

    .line 148
    iget-object v8, v3, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    if-eqz v8, :cond_10

    iget-object v8, v3, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    :goto_9
    iput-boolean v6, v0, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 149
    iget-object v6, v3, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 150
    const v6, 0x7f0c00c2

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    .line 151
    iget-object v6, v3, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    goto/16 :goto_1

    .line 110
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "miProfile":Lmiui/provider/MiProfileResult;
    .end local v4    # "slotId":I
    .end local v5    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    :cond_7
    const-string v8, ""

    goto/16 :goto_2

    .line 111
    :cond_8
    const-string v8, ""

    goto/16 :goto_3

    :cond_9
    const-string v8, ""

    goto/16 :goto_3

    .line 116
    .restart local v4    # "slotId":I
    :cond_a
    const v8, 0x7f0200a2

    goto/16 :goto_4

    .line 119
    :cond_b
    const/4 v8, -0x1

    iput v8, v0, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    goto/16 :goto_5

    .line 134
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    :cond_c
    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->isYellowPage()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 135
    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 136
    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 137
    invoke-virtual {v5}, Lmiui/yellowpage/YellowPagePhone;->getWordAd()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/incallui/model/CallCardInfo;->wordAd:Ljava/lang/String;

    goto :goto_6

    :cond_d
    move v8, v7

    .line 140
    goto :goto_7

    .line 142
    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIsIncoming()Z

    move-result v8

    if-nez v8, :cond_f

    move v8, v6

    goto :goto_8

    :cond_f
    move v8, v7

    goto :goto_8

    .restart local v3    # "miProfile":Lmiui/provider/MiProfileResult;
    :cond_10
    move v6, v7

    .line 148
    goto :goto_9
.end method

.method public static createEmptyCardInfo()Lcom/android/incallui/model/CallCardInfo;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    new-instance v0, Lcom/android/incallui/model/CallCardInfo;

    invoke-direct {v0}, Lcom/android/incallui/model/CallCardInfo;-><init>()V

    .line 75
    .local v0, "callcard":Lcom/android/incallui/model/CallCardInfo;
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 76
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 77
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    .line 78
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 79
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->company:Ljava/lang/String;

    .line 80
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->wordAd:Ljava/lang/String;

    .line 81
    iput-boolean v2, v0, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 82
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 83
    iput-boolean v2, v0, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    .line 84
    iput v3, v0, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    .line 85
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->leftPostDialString:Ljava/lang/String;

    .line 86
    iput-object v1, v0, Lcom/android/incallui/model/CallCardInfo;->fullDialString:Ljava/lang/String;

    .line 87
    iput-boolean v2, v0, Lcom/android/incallui/model/CallCardInfo;->isSpeechCodecHD:Z

    .line 88
    iput v3, v0, Lcom/android/incallui/model/CallCardInfo;->speechHDResId:I

    .line 89
    return-object v0
.end method

.method public static getCardInfoPhotoType(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "type":I
    if-eqz p0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->isBigPhoto(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const/4 v0, 0x1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nphoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/model/CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ntelocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/model/CallCardInfo;->telocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nextraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/model/CallCardInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmarkTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/model/CallCardInfo;->markTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmarkCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/model/CallCardInfo;->markCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nphoneTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nisSuspect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/model/CallCardInfo;->isSuspect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nliveTalkProviderInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/model/CallCardInfo;->liveTalkProviderInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
