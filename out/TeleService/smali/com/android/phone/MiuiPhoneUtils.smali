.class public Lcom/android/phone/MiuiPhoneUtils;
.super Ljava/lang/Object;
.source "MiuiPhoneUtils.java"


# static fields
.field public static final PHONE_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    return-void
.end method

.method public static NotifyNetworkSelection(Ljava/lang/String;)V
    .locals 2
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public static addWindowLable(Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 190
    const-string v0, ":miui:starting_window_label"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method public static getCallManager()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    return-object v0
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 93
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 94
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    aget-object v2, v1, v0

    .line 98
    :goto_1
    return-object v2

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getFdnUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 79
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getIccCardCountExcludeSlot(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "count":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 271
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-eq v5, p0, :cond_0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    add-int/lit8 v1, v1, 0x1

    .line 270
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return v1
.end method

.method public static getNetworkQueryService(Landroid/os/IBinder;)Lcom/android/phone/INetworkQueryService;
    .locals 1
    .param p0, "service"    # Landroid/os/IBinder;

    .prologue
    .line 156
    check-cast p0, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p0    # "service":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v0

    return-object v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "prefKey"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 102
    sget v0, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    .end local p0    # "prefKey":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getSubscriptionInfoBySlot(Ljava/util/List;I)Lmiui/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;I)",
            "Lmiui/telephony/SubscriptionInfo;"
        }
    .end annotation

    .prologue
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    .line 292
    if-nez p0, :cond_0

    move-object v1, v2

    .line 300
    :goto_0
    return-object v1

    .line 295
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 296
    .local v1, "subInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v1    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_2
    move-object v1, v2

    .line 300
    goto :goto_0
.end method

.method public static getVirtualSimCarrierName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "b":Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.miui.virtualsim.provider.virtualsimInfo"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getCarrierName"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-object v2

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MiuiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVirtualSimCarrierName e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "carrierName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getVirtualSimIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "b":Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.miui.virtualsim.provider.virtualsimInfo"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getSettingsEntranceIntent"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-object v2

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MiuiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVirtualSimIntent e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "setting_entrance"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_1
.end method

.method public static getVirtualSimSlot()I
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0
.end method

.method public static is4GOnlySim(Ljava/lang/String;)Z
    .locals 9
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 325
    const/16 v7, 0x16

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "405840"

    aput-object v7, v4, v6

    const-string v7, "405854"

    aput-object v7, v4, v5

    const/4 v7, 0x2

    const-string v8, "405855"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "405856"

    aput-object v8, v4, v7

    const/4 v7, 0x4

    const-string v8, "405857"

    aput-object v8, v4, v7

    const/4 v7, 0x5

    const-string v8, "405858"

    aput-object v8, v4, v7

    const/4 v7, 0x6

    const-string v8, "405859"

    aput-object v8, v4, v7

    const/4 v7, 0x7

    const-string v8, "405860"

    aput-object v8, v4, v7

    const/16 v7, 0x8

    const-string v8, "405861"

    aput-object v8, v4, v7

    const/16 v7, 0x9

    const-string v8, "405862"

    aput-object v8, v4, v7

    const/16 v7, 0xa

    const-string v8, "405863"

    aput-object v8, v4, v7

    const/16 v7, 0xb

    const-string v8, "405864"

    aput-object v8, v4, v7

    const/16 v7, 0xc

    const-string v8, "405865"

    aput-object v8, v4, v7

    const/16 v7, 0xd

    const-string v8, "405866"

    aput-object v8, v4, v7

    const/16 v7, 0xe

    const-string v8, "405867"

    aput-object v8, v4, v7

    const/16 v7, 0xf

    const-string v8, "405868"

    aput-object v8, v4, v7

    const/16 v7, 0x10

    const-string v8, "405869"

    aput-object v8, v4, v7

    const/16 v7, 0x11

    const-string v8, "405870"

    aput-object v8, v4, v7

    const/16 v7, 0x12

    const-string v8, "405871"

    aput-object v8, v4, v7

    const/16 v7, 0x13

    const-string v8, "405872"

    aput-object v8, v4, v7

    const/16 v7, 0x14

    const-string v8, "405873"

    aput-object v8, v4, v7

    const/16 v7, 0x15

    const-string v8, "405874"

    aput-object v8, v4, v7

    .line 328
    .local v4, "plmn4GOnly":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 329
    .local v3, "plmn":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 330
    const-string v6, "MiuiPhoneUtils"

    const-string v7, "is4GOnlySim"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v3    # "plmn":Ljava/lang/String;
    :goto_1
    return v5

    .line 328
    .restart local v3    # "plmn":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "plmn":Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 334
    goto :goto_1
.end method

.method public static isCmccSim(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v1, 0x0

    .line 342
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-nez v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 345
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "numeric":Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDcOnlyVirtualSim(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHMH2xCmForThreeMode()Z
    .locals 2

    .prologue
    .line 279
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CM:Z

    if-eqz v0, :cond_0

    const-string v0, "cm-three"

    const-string v1, "ro.product.h2x_cm"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIccCardActivated(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 151
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 152
    .local v0, "si":Lmiui/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMultiSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 288
    sget v1, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSSOperatedByUt(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 338
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneAdapter;->isUtEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualSim(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 113
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setActionBar(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public static setNetworkModeInDb(Ljava/util/List;II)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 197
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_0

    .line 214
    :goto_0
    return-void

    .line 202
    :cond_0
    if-nez p0, :cond_1

    .line 203
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    .line 207
    .local v2, "subInfo":Lmiui/telephony/SubscriptionInfo;
    :goto_1
    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 209
    .local v1, "subId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    const-string v3, "MiuiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkModeInDb slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sub="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v1    # "subId":I
    .end local v2    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/MiuiPhoneUtils;->getSubscriptionInfoBySlot(Ljava/util/List;I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    .restart local v2    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    goto :goto_1

    .line 213
    :cond_2
    const-string v3, "MiuiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkModeInDb slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but no valid sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static shouldShowOpenMobileDataDialog(I)Z
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 309
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 310
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v0

    .line 311
    .local v0, "isMobileDataEnable":Z
    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->isSSOperatedByUt(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 312
    .local v1, "isUtEnabled":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static showOpenMobileDataDialog()V
    .locals 4

    .prologue
    .line 316
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 317
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/MiuiErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 319
    const-string v2, "dialog_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    const-string v2, "MiuiPhoneUtils"

    const-string v3, "showOpenMobileDataDialog"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method
