.class public Lcom/android/phone/settings/CallForwardInfoUtil;
.super Ljava/lang/Object;
.source "CallForwardInfoUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/phone/settings/CallForwardInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CallForwardInfoUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 4
    .param p0, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "info":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 97
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/phone/settings/CallForwardInfoUtil;->isServiceClassVoice(Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    aget-object v1, p0, v0

    .line 103
    :cond_0
    if-nez v1, :cond_3

    .line 105
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v1    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 106
    .restart local v1    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    iput v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 107
    iput p1, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 108
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 119
    :cond_1
    :goto_1
    return-object v1

    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_3
    invoke-static {v1}, Lcom/android/phone/settings/CallForwardInfoUtil;->hasForwardingNumber(Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    iput v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_1
.end method

.method private static hasForwardingNumber(Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 4
    .param p0, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v2

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    .local v1, "result":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 49
    aget-object v3, p0, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v3, p1, :cond_2

    .line 50
    aget-object v2, p0, v0

    goto :goto_0

    .line 48
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isServiceClassVoice(Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p0, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p1, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v0, 0x1

    .line 61
    if-nez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCallForwardingOption(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 78
    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x3

    .line 82
    .local v1, "commandInterfaceCfAction":I
    :goto_0
    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    move-object v0, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 87
    return-void

    .line 78
    .end local v1    # "commandInterfaceCfAction":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
