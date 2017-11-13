.class public Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final CC_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field private static final CC_PROPERTY_ENFORCING_VALUE:Ljava/lang/String; = "Enforcing"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCKDOWN_OK:I = 0x0

.field public static final REQUIRED_DNS:I = 0x1

.field public static final REQUIRED_USERNAME_PW:I = 0x2

.field private static final SEC_PRODUCT_FEATURE_SECURITY_SUPPORT_VPN_STRONG_SWAN:Z = true

.field private static final TAG:Ljava/lang/String; = "VpnProfile"

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x3

.field public static final TYPE_IPSEC_IKEV2_PSK:I = 0x6

.field public static final TYPE_IPSEC_IKEV2_RSA:I = 0x7

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x4

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x5

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x7

.field public static final TYPE_PPTP:I


# instance fields
.field public dnsServers:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public isPFS:Z

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public ocspServerUrl:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 109
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v0, v2

    .line 107
    goto :goto_1

    :cond_2
    move v1, v2

    .line 108
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 66
    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 86
    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 147
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 148
    .local v1, "shift":I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method private copyStringToByteArray([BILjava/lang/String;)V
    .locals 4
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 291
    .local v1, "value":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 292
    add-int v2, v0, p2

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    .line 293
    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .locals 18
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .prologue
    .line 154
    const/4 v12, 0x0

    .line 155
    .local v12, "valueString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 158
    .local v7, "newFormatProfile":I
    if-nez p0, :cond_1

    .line 159
    const/4 v9, 0x0

    .line 287
    :cond_0
    :goto_0
    return-object v9

    .line 162
    :cond_1
    const/4 v15, 0x0

    :try_start_0
    aget-byte v15, p1, v15

    if-nez v15, :cond_3

    const/4 v15, 0x1

    aget-byte v15, p1, v15

    const/16 v16, 0xf

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 164
    const/4 v15, 0x4

    new-array v11, v15, [B

    .line 165
    .local v11, "size_byte":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v15, 0x4

    if-ge v6, v15, :cond_2

    .line 167
    add-int/lit8 v15, v6, 0x2

    aget-byte v15, p1, v15

    aput-byte v15, v11, v6

    .line 165
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 169
    :cond_2
    invoke-static {v11}, Lcom/android/internal/net/VpnProfile;->byteArrayToInt([B)I

    move-result v10

    .line 171
    .local v10, "size":I
    move-object/from16 v0, p1

    array-length v15, v0

    if-ne v10, v15, :cond_4

    .line 173
    const/4 v7, 0x1

    .line 185
    .end local v6    # "i":I
    .end local v10    # "size":I
    .end local v11    # "size_byte":[B
    :cond_3
    :goto_2
    const/4 v15, 0x1

    if-ne v7, v15, :cond_8

    .line 187
    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x7

    new-array v8, v15, [B

    .line 189
    .local v8, "new_value":[B
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    array-length v15, v8

    if-ge v6, v15, :cond_6

    .line 191
    add-int/lit8 v15, v6, 0x7

    aget-byte v15, p1, v15

    aput-byte v15, v8, v6

    .line 192
    add-int/lit8 v15, v6, 0x7

    const/16 v16, 0x0

    aput-byte v16, p1, v15

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 177
    .end local v8    # "new_value":[B
    .restart local v10    # "size":I
    .restart local v11    # "size_byte":[B
    :cond_4
    const-string v15, "VpnProfile"

    const-string v16, "This profile does not match the new format profile!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 281
    .end local v6    # "i":I
    .end local v10    # "size":I
    .end local v11    # "size_byte":[B
    :catch_0
    move-exception v15

    .line 284
    if-eqz v12, :cond_5

    .line 285
    invoke-virtual {v12}, Ljava/lang/String;->clear()V

    .line 287
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 194
    .restart local v6    # "i":I
    .restart local v8    # "new_value":[B
    :cond_6
    :try_start_1
    new-instance v13, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v8, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .end local v12    # "valueString":Ljava/lang/String;
    .local v13, "valueString":Ljava/lang/String;
    move-object v12, v13

    .line 201
    .end local v6    # "i":I
    .end local v8    # "new_value":[B
    .end local v13    # "valueString":Ljava/lang/String;
    .restart local v12    # "valueString":Ljava/lang/String;
    :goto_4
    const-string v15, "\u0000"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "values":[Ljava/lang/String;
    array-length v15, v14

    const/16 v16, 0xf

    move/from16 v0, v16

    if-lt v15, v0, :cond_7

    array-length v15, v14

    const/16 v16, 0x11

    move/from16 v0, v16

    if-le v15, v0, :cond_9

    .line 205
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->clear()V

    .line 206
    const-string v15, "VpnProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "values.length("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v14

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") is not normal "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 198
    .end local v14    # "values":[Ljava/lang/String;
    :cond_8
    new-instance v13, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .end local v12    # "valueString":Ljava/lang/String;
    .restart local v13    # "valueString":Ljava/lang/String;
    move-object v12, v13

    .end local v13    # "valueString":Ljava/lang/String;
    .restart local v12    # "valueString":Ljava/lang/String;
    goto :goto_4

    .line 210
    .restart local v14    # "values":[Ljava/lang/String;
    :cond_9
    new-instance v9, Lcom/android/internal/net/VpnProfile;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 211
    .local v9, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 212
    const/4 v15, 0x1

    aget-object v15, v14, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iput v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    .line 214
    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    if-ltz v15, :cond_a

    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-le v15, v0, :cond_b

    .line 215
    :cond_a
    invoke-virtual {v12}, Ljava/lang/String;->clear()V

    .line 216
    const-string v15, "VpnProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "profile.type("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v9, Lcom/android/internal/net/VpnProfile;->type:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") is not normal"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 220
    :cond_b
    const-string/jumbo v15, "security.mdpp"

    const-string v16, "Disabled"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "ccModePropertyValue":Ljava/lang/String;
    if-eqz v5, :cond_e

    const-string v15, "Enabled"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string v15, "Enforcing"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 227
    :cond_c
    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_d

    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-le v15, v0, :cond_e

    .line 229
    :cond_d
    invoke-virtual {v12}, Ljava/lang/String;->clear()V

    .line 230
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 234
    :cond_e
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 235
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x3

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 236
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x4

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 237
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x5

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 238
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x6

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 239
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x7

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 240
    const/16 v15, 0x8

    aget-object v15, v14, v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    iput-boolean v15, v9, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 241
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x9

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 242
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0xa

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 243
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0xb

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 244
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0xc

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 245
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0xd

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 246
    array-length v15, v14

    const/16 v16, 0xe

    move/from16 v0, v16

    if-le v15, v0, :cond_10

    new-instance v15, Ljava/lang/String;

    const/16 v16, 0xe

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 247
    array-length v15, v14

    const/16 v16, 0xf

    move/from16 v0, v16

    if-le v15, v0, :cond_11

    new-instance v15, Ljava/lang/String;

    const/16 v16, 0xf

    aget-object v16, v14, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    iput-object v15, v9, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 248
    array-length v15, v14

    const/16 v16, 0x10

    move/from16 v0, v16

    if-le v15, v0, :cond_12

    const/16 v15, 0x10

    aget-object v15, v14, v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    :goto_7
    iput-boolean v15, v9, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 250
    iget-object v15, v9, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

    iget-object v15, v9, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_13

    :cond_f
    const/4 v15, 0x1

    :goto_8
    iput-boolean v15, v9, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 251
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_9
    array-length v15, v14

    if-ge v6, v15, :cond_14

    .line 252
    aget-object v15, v14, v6

    invoke-virtual {v15}, Ljava/lang/String;->clear()V

    .line 251
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 246
    .end local v6    # "i":I
    :cond_10
    const-string v15, ""

    goto :goto_5

    .line 247
    :cond_11
    const-string v15, ""

    goto :goto_6

    .line 248
    :cond_12
    const/4 v15, 0x0

    goto :goto_7

    .line 250
    :cond_13
    const/4 v15, 0x0

    goto :goto_8

    .line 254
    .restart local v6    # "i":I
    :cond_14
    invoke-virtual {v12}, Ljava/lang/String;->clear()V

    .line 256
    const/4 v15, 0x1

    if-ne v7, v15, :cond_17

    .line 257
    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    iget-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_15

    .line 258
    const/4 v15, 0x4

    iput v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    goto/16 :goto_0

    .line 259
    :cond_15
    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    iget-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_16

    .line 260
    const/4 v15, 0x5

    iput v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    goto/16 :goto_0

    .line 261
    :cond_16
    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    iget-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    iget-object v15, v9, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 263
    const/4 v15, 0x3

    iput v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    goto/16 :goto_0

    .line 266
    :cond_17
    const-string/jumbo v15, "ro.security.vpnpp.release"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "VPNPPRelease":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 268
    .local v2, "ReleaseNum":D
    const-string v15, "VpnProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ro.security.vpnpp.release -> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    cmpl-double v15, v2, v16

    if-lez v15, :cond_0

    .line 271
    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 272
    const/4 v15, 0x4

    iput v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    goto/16 :goto_0

    .line 273
    :cond_18
    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 274
    const/4 v15, 0x5

    iput v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    goto/16 :goto_0

    .line 275
    :cond_19
    iget v15, v9, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 276
    const/4 v15, 0x3

    iput v15, v9, Lcom/android/internal/net/VpnProfile;->type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "integer"    # I

    .prologue
    .line 136
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 139
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 14

    .prologue
    .line 299
    const/4 v4, 0x0

    .line 301
    .local v4, "length":I
    new-instance v11, Ljava/lang/Integer;

    iget v12, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 302
    .local v10, "typeString":Ljava/lang/String;
    new-instance v11, Ljava/lang/Boolean;

    iget-boolean v12, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v11}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "mppeString":Ljava/lang/String;
    new-instance v11, Ljava/lang/Boolean;

    iget-boolean v12, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v11}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "isPFSString":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v4, v11

    .line 306
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 307
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 308
    iget-boolean v11, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    :goto_0
    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 309
    iget-boolean v11, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    :goto_1
    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 310
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 311
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 312
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 313
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 314
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 315
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 316
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 317
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 318
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 319
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 320
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 321
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 323
    new-array v0, v4, [B

    .line 324
    .local v0, "encodedProfile":[B
    const/4 v6, 0x0

    .line 326
    .local v6, "offset":I
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 327
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v6, v11

    .line 329
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 330
    invoke-direct {p0, v0, v7, v10}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 331
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 333
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 334
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 335
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 337
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    iget-boolean v11, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v11, :cond_2

    .line 338
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 339
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 340
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 342
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 343
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 344
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 350
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :goto_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 351
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 352
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 354
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 355
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 356
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 358
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 359
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 360
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 362
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 363
    invoke-direct {p0, v0, v7, v5}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 364
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 366
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 367
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 368
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 370
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 371
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 372
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 374
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 375
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 376
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 378
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 379
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 380
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 382
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 383
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 384
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 386
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 387
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 388
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 390
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 391
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 392
    iget-object v11, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v11, v11

    add-int v6, v7, v11

    .line 394
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 395
    invoke-direct {p0, v0, v7, v3}, Lcom/android/internal/net/VpnProfile;->copyStringToByteArray([BILjava/lang/String;)V

    .line 397
    add-int/lit8 v9, v4, 0x7

    .line 398
    .local v9, "total_size":I
    const-string v11, "VpnProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile total size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-array v1, v9, [B

    .line 400
    .local v1, "encodedProfile_newformat":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v1, v11

    .line 401
    const/4 v11, 0x1

    const/16 v12, 0xf

    aput-byte v12, v1, v11

    .line 403
    const/4 v11, 0x4

    new-array v8, v11, [B

    .line 404
    .local v8, "size":[B
    invoke-static {v9}, Lcom/android/internal/net/VpnProfile;->intToByteArray(I)[B

    move-result-object v8

    .line 405
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    const/4 v11, 0x4

    if-ge v2, v11, :cond_3

    .line 407
    add-int/lit8 v11, v2, 0x2

    aget-byte v12, v8, v2

    aput-byte v12, v1, v11

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 308
    .end local v0    # "encodedProfile":[B
    .end local v1    # "encodedProfile_newformat":[B
    .end local v2    # "i":I
    .end local v7    # "offset":I
    .end local v8    # "size":[B
    .end local v9    # "total_size":I
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 309
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 346
    .restart local v0    # "encodedProfile":[B
    .restart local v6    # "offset":I
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v6

    .line 347
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    const/4 v11, 0x0

    aput-byte v11, v0, v7

    goto/16 :goto_2

    .line 409
    .end local v6    # "offset":I
    .restart local v1    # "encodedProfile_newformat":[B
    .restart local v2    # "i":I
    .restart local v7    # "offset":I
    .restart local v8    # "size":[B
    .restart local v9    # "total_size":I
    :cond_3
    const/4 v11, 0x6

    const/4 v12, 0x0

    aput-byte v12, v1, v11

    .line 414
    const/4 v2, 0x0

    :goto_4
    array-length v11, v0

    if-ge v2, v11, :cond_4

    .line 416
    add-int/lit8 v11, v2, 0x7

    aget-byte v12, v0, v2

    aput-byte v12, v1, v11

    .line 417
    const/4 v11, 0x0

    aput-byte v11, v0, v2

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 420
    :cond_4
    return-object v1
.end method

.method public isValidLockdownProfile()I
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 430
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 432
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v8, " +"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 433
    .local v1, "dnsServer":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    .end local v1    # "dnsServer":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 436
    const-string v6, "VpnProfile"

    const-string v7, "DNS required"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 439
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    iget v7, p0, Lcom/android/internal/net/VpnProfile;->type:I

    if-eq v7, v6, :cond_2

    iget v7, p0, Lcom/android/internal/net/VpnProfile;->type:I

    if-eq v7, v5, :cond_2

    iget v7, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 444
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-nez v7, :cond_3

    .line 445
    const-string v7, "VpnProfile"

    const-string v8, "Username and password required"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 446
    goto :goto_1

    .line 450
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 452
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "VpnProfile"

    const-string v7, "Invalid address"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public wipe()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 476
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 477
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 478
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 479
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 480
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 481
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 482
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 483
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 484
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 485
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 486
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 487
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 488
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 489
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    :cond_1
    move v0, v2

    .line 130
    goto :goto_1

    :cond_2
    move v1, v2

    .line 131
    goto :goto_2
.end method
