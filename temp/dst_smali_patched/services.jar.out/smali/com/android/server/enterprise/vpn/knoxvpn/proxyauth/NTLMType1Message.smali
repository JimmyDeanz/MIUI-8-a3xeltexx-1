.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;
.super Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;
.source "NTLMType1Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType1Message"

.field private static defaultFlagSet:I


# instance fields
.field private domain:Ljava/lang/String;

.field private type1MessageString:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x88207

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->defaultFlagSet:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    sget v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->defaultFlagSet:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "workstation"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    sget v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->defaultFlagSet:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setFlags(I)V

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_0
    const/4 v0, 0x0

    .local v0, "domainBytes":[B
    const/4 v2, 0x0

    .local v2, "workstationBytes":[B
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cp850"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v4, 0x1000

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setThisFlag(IZ)V

    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cp850"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v4, 0x2000

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setThisFlag(IZ)V

    :goto_2
    if-nez v0, :cond_5

    move v5, v3

    :goto_3
    if-nez v2, :cond_6

    move v4, v3

    :goto_4
    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x20

    new-array v1, v4, [B

    .local v1, "finalMessageBytes":[B
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->NTLM_HEADER_BYTES:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->getFlags()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    const/16 v4, 0x1000

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    const/16 v5, 0x20

    invoke-static {v1, v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    :cond_1
    const/16 v4, 0x2000

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x18

    if-nez v0, :cond_7

    :goto_5
    add-int/lit8 v3, v3, 0x20

    invoke-static {v1, v4, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    :cond_2
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->encode([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    goto/16 :goto_0

    .end local v1    # "finalMessageBytes":[B
    :cond_3
    const/16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x2000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_2

    :cond_5
    array-length v4, v0

    move v5, v4

    goto :goto_3

    :cond_6
    array-length v4, v2

    goto :goto_4

    .restart local v1    # "finalMessageBytes":[B
    :cond_7
    array-length v3, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    return-void
.end method
