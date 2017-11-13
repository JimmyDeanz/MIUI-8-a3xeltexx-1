.class public Lcom/android/phone/DefaultSlotSelectorImpl;
.super Ljava/lang/Object;
.source "DefaultSlotSelectorImpl.java"

# interfaces
.implements Lmiui/telephony/DefaultSlotSelector;


# static fields
.field private static sInstance:Lcom/android/phone/DefaultSlotSelectorImpl;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/DefaultSimManager;->setDefaultSlotSelector(Lmiui/telephony/DefaultSlotSelector;)V

    .line 38
    return-void
.end method

.method public static getDataSlotForCmcc()I
    .locals 8

    .prologue
    .line 68
    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v6, :cond_5

    .line 69
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, "subs":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_1

    .line 71
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    .local v0, "cmccCardNum":I
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 75
    .local v1, "dataSlot":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 76
    .local v3, "s":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    .line 77
    .local v4, "slotId":I
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getMcc()I

    move-result v6

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getMnc()I

    move-result v7

    invoke-static {v6, v7}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(II)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lmiui/telephony/DefaultSimManager;->getSimImsi(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 80
    move v1, v4

    goto :goto_1

    .line 83
    .end local v3    # "s":Lmiui/telephony/SubscriptionInfo;
    .end local v4    # "slotId":I
    :cond_4
    const/4 v6, 0x1

    if-eq v0, v6, :cond_0

    .line 87
    :cond_5
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_0
.end method

.method private isAnyCardStateChanged([I)Z
    .locals 4
    .param p1, "cardStates"    # [I

    .prologue
    const/4 v1, 0x0

    .line 51
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 55
    aget v2, p1, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    aget v2, p1, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 56
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static make()Lcom/android/phone/DefaultSlotSelectorImpl;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/android/phone/DefaultSlotSelectorImpl;->sInstance:Lcom/android/phone/DefaultSlotSelectorImpl;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/phone/DefaultSlotSelectorImpl;

    invoke-direct {v0}, Lcom/android/phone/DefaultSlotSelectorImpl;-><init>()V

    sput-object v0, Lcom/android/phone/DefaultSlotSelectorImpl;->sInstance:Lcom/android/phone/DefaultSlotSelectorImpl;

    .line 26
    sget-object v0, Lcom/android/phone/DefaultSlotSelectorImpl;->sInstance:Lcom/android/phone/DefaultSlotSelectorImpl;

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultSlotSelectorImpl.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDefaultDataSlot([II)I
    .locals 2
    .param p1, "cardStates"    # [I
    .param p2, "systemDefault"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/DefaultSlotSelectorImpl;->isAnyCardStateChanged([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-static {}, Lcom/android/phone/DefaultSlotSelectorImpl;->getDataSlotForCmcc()I

    move-result v0

    .line 45
    .local v0, "cmccDataSlot":I
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    if-eq v1, v0, :cond_0

    .line 47
    .end local v0    # "cmccDataSlot":I
    :goto_0
    return v0

    .restart local v0    # "cmccDataSlot":I
    :cond_0
    move v0, p2

    .line 45
    goto :goto_0

    .end local v0    # "cmccDataSlot":I
    :cond_1
    move v0, p2

    .line 47
    goto :goto_0
.end method
