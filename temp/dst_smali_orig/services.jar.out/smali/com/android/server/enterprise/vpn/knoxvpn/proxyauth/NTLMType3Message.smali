.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
.super Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;
.source "NTLMType3Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType3Message"


# instance fields
.field domain:Ljava/lang/String;

.field lmCompatibility:I

.field lmResponse:[B

.field ntResponse:[B

.field password:Ljava/lang/String;

.field private randomBytesGenerator:Ljava/security/SecureRandom;

.field serverChallenge:[B

.field username:Ljava/lang/String;

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "serverChallenge"    # [B
    .param p2, "finalFlags"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "workstation"    # Ljava/lang/String;
    .param p7, "lmCompatibility"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->workstation:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->workstation:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    iput p7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmCompatibility:I

    return-void
.end method

.method private createDESKey([BI)Ljava/security/Key;
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v3, 0x7

    const/4 v4, 0x0

    new-array v1, v3, [B

    .local v1, "keyBytes":[B
    invoke-static {p1, p2, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v3, 0x8

    new-array v2, v3, [B

    .local v2, "material":[B
    aget-byte v3, v1, v4

    aput-byte v3, v2, v4

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v1, v3

    array-length v4, v2

    sub-int/2addr v4, v0

    shl-int/2addr v3, v4

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    ushr-int/2addr v4, v0

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x6

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->processParityForBytes([B)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private createType3Message()[B
    .locals 21

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    const/16 v17, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->isFlagSet(I)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v6, "UTF-16LE"

    .local v6, "encodingStandard":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .local v4, "domainBytes":[B
    const/4 v5, 0x0

    .local v5, "domainLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    :cond_2
    const/4 v15, 0x0

    .local v15, "workstationBytes":[B
    const/16 v16, 0x0

    .local v16, "workstationLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->workstation:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->workstation:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    :cond_3
    const/4 v13, 0x0

    .local v13, "usernameBytes":[B
    const/4 v14, 0x0

    .local v14, "usernameLength":I
    const-string v17, "Cp850"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v14, v13

    const/4 v10, 0x0

    .local v10, "sessionKeyBytes":[B
    const/4 v11, 0x0

    .local v11, "sessionKeyLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .local v8, "ntResponseLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    .local v7, "lmResponseLength":I
    add-int/lit8 v17, v5, 0x40

    add-int v17, v17, v14

    add-int v17, v17, v16

    add-int v17, v17, v7

    add-int v17, v17, v8

    add-int v17, v17, v11

    move/from16 v0, v17

    new-array v12, v0, [B

    .local v12, "type3MessageBytes":[B
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->NTLM_HEADER_BYTES:[B

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v17, 0x8

    const/16 v18, 0x3

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    const/16 v9, 0x40

    .local v9, "offset":I
    const/16 v17, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v9, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v9, v7

    const/16 v17, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v9, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v9, v8

    const/16 v17, 0x1c

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v9, v5

    const/16 v17, 0x24

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v9, v14

    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int v9, v9, v16

    const/16 v17, 0x34

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    const/16 v17, 0x3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getFlags()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    goto/16 :goto_0

    .end local v4    # "domainBytes":[B
    .end local v5    # "domainLength":I
    .end local v6    # "encodingStandard":Ljava/lang/String;
    .end local v7    # "lmResponseLength":I
    .end local v8    # "ntResponseLength":I
    .end local v9    # "offset":I
    .end local v10    # "sessionKeyBytes":[B
    .end local v11    # "sessionKeyLength":I
    .end local v12    # "type3MessageBytes":[B
    .end local v13    # "usernameBytes":[B
    .end local v14    # "usernameLength":I
    .end local v15    # "workstationBytes":[B
    .end local v16    # "workstationLength":I
    :catch_0
    move-exception v17

    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v6, "Cp850"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method private getLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmHash(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "lmHash":[B
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method private getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .param p3, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "ntlmHash":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    new-array v2, v5, [B

    .local v2, "sessionHash":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse([B[B)[B

    move-result-object v3

    return-object v3
.end method

.method private getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "ntlmHash":[B
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method private lmHash(Ljava/lang/String;)[B
    .locals 13
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Cp850"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .local v9, "oemPassword":[B
    array-length v10, v9

    const/16 v11, 0xe

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, "length":I
    const/16 v10, 0xe

    new-array v3, v10, [B

    .local v3, "keyBytes":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v10, 0x0

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v7

    .local v7, "lowKey":Ljava/security/Key;
    const/4 v10, 0x7

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v2

    .local v2, "highKey":Ljava/security/Key;
    const-string v10, "KGS!@#$%"

    const-string v11, "US-ASCII"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .local v8, "magicConstant":[B
    const-string v10, "DES/ECB/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "des":Ljavax/crypto/Cipher;
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .local v6, "lowHash":[B
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .local v1, "highHash":[B
    const/16 v10, 0x10

    new-array v5, v10, [B

    .local v5, "lmHash":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v6, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x8

    invoke-static {v1, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v5
.end method

.method private lmResponse([B[B)[B
    .locals 12
    .param p1, "hash"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x15

    new-array v3, v9, [B

    .local v3, "keyBytes":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static {p1, v9, v3, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v9, 0x0

    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v5

    .local v5, "lowKey":Ljava/security/Key;
    const/4 v9, 0x7

    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v7

    .local v7, "middleKey":Ljava/security/Key;
    const/16 v9, 0xe

    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v1

    .local v1, "highKey":Ljava/security/Key;
    const-string v9, "DES/ECB/NoPadding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "des":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .local v6, "lowResponse":[B
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .local v8, "middleResponse":[B
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .local v2, "highResponse":[B
    const/16 v9, 0x18

    new-array v4, v9, [B

    .local v4, "lmResponse":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v6, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x8

    invoke-static {v8, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v11, 0x8

    invoke-static {v2, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v4
.end method

.method private ntlmHash(Ljava/lang/String;)[B
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "unicodePassword":[B
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;

    invoke-direct {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;-><init>()V

    .local v0, "md4":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->update([B)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->digest()[B

    move-result-object v2

    return-object v2
.end method

.method private processParityForBytes([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget-byte v0, p1, v1

    .local v0, "b":B
    ushr-int/lit8 v3, v0, 0x7

    ushr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x1

    xor-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .local v2, "needsParity":Z
    :goto_1
    if-eqz v2, :cond_1

    aget-byte v3, p1, v1

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "needsParity":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "needsParity":Z
    :cond_1
    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    goto :goto_2

    .end local v0    # "b":B
    .end local v2    # "needsParity":Z
    :cond_2
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-object v3

    :cond_1
    iget v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmCompatibility:I

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/high16 v4, 0x80000

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x18

    new-array v1, v4, [B

    .local v1, "randomClientNonce":[B
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v4, 0x8

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createType3Message()[B

    move-result-object v2

    .local v2, "type3MessageBytes":[B
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->encode([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v1    # "randomClientNonce":[B
    .end local v2    # "type3MessageBytes":[B
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
