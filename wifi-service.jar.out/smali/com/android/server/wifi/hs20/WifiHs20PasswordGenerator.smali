.class public Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;
.super Ljava/lang/Object;
.source "WifiHs20PasswordGenerator.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private hashAlgo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->mContext:Landroid/content/Context;

    .line 17
    const-string v0, "SHA256"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->hashAlgo:Ljava/lang/String;

    .line 19
    const-string v0, "HS20PasswordGenerator"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->TAG:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->password:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 159
    const/16 v3, 0x10

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 162
    .local v1, "hexDigits":[C
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 163
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 164
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 159
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method


# virtual methods
.method public genID()I
    .locals 8

    .prologue
    .line 171
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 172
    .local v0, "dtNow":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 173
    const-string v3, "%Y%m%d%H%M"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "lsNow":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time stamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 176
    .local v2, "mRandom":Ljava/util/Random;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    long-to-int v3, v4

    return v3
.end method

.method public genPasswd()Ljava/lang/String;
    .locals 12

    .prologue
    .line 50
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->TAG:Ljava/lang/String;

    const-string v11, "genPasswd"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    .local v1, "devID":[B
    const/4 v8, 0x0

    .line 52
    .local v8, "macAdress":[B
    const/4 v5, 0x0

    .local v5, "l1":I
    const/4 v6, 0x0

    .local v6, "l2":I
    const/4 v7, 0x0

    .local v7, "mac":I
    const/4 v0, 0x0

    .line 53
    .local v0, "dev":I
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getDevID()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 54
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getDevID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 55
    array-length v5, v1

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getmacAdress()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getmacAdress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 60
    array-length v6, v8

    .line 62
    :cond_0
    add-int v10, v5, v6

    new-array v9, v10, [B

    .line 63
    .local v9, "pass":[B
    const/4 v3, 0x0

    .line 64
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_1
    add-int v10, v5, v6

    if-ge v3, v10, :cond_2

    .line 65
    div-int/lit8 v10, v3, 0x4

    rem-int/lit8 v10, v10, 0x2

    if-lez v10, :cond_6

    .line 66
    if-ge v7, v6, :cond_1

    .line 67
    aget-byte v10, v8, v7

    aput-byte v10, v9, v3

    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 76
    :cond_1
    :goto_2
    if-eq v7, v6, :cond_2

    if-ne v0, v5, :cond_7

    .line 79
    :cond_2
    move v4, v3

    .local v4, "j":I
    :goto_3
    add-int v10, v5, v6

    if-ge v4, v10, :cond_8

    .line 80
    if-ge v0, v5, :cond_3

    .line 81
    aget-byte v10, v1, v0

    aput-byte v10, v9, v4

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    :cond_3
    if-ge v7, v6, :cond_4

    .line 85
    aget-byte v10, v8, v7

    aput-byte v10, v9, v4

    .line 86
    add-int/lit8 v7, v7, 0x1

    .line 79
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 57
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v9    # "pass":[B
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->TAG:Ljava/lang/String;

    const-string v11, "devID is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .restart local v3    # "i":I
    .restart local v9    # "pass":[B
    :cond_6
    if-ge v0, v5, :cond_1

    .line 72
    aget-byte v10, v1, v0

    aput-byte v10, v9, v3

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .restart local v4    # "j":I
    :cond_8
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getHash([B)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->password:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_4
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->password:Ljava/lang/String;

    return-object v10

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public genPasswd1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getmacAdress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getHash([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->password:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->password:Ljava/lang/String;

    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public genPasswd2()Ljava/lang/String;
    .locals 12

    .prologue
    .line 107
    const/4 v1, 0x0

    .local v1, "devID":[B
    const/4 v8, 0x0

    .line 108
    .local v8, "macAdress":[B
    const/4 v5, 0x0

    .local v5, "l1":I
    const/4 v6, 0x0

    .local v6, "l2":I
    const/4 v7, 0x0

    .local v7, "mac":I
    const/4 v0, 0x0

    .line 109
    .local v0, "dev":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genID()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 110
    array-length v5, v1

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getmacAdress()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getmacAdress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 113
    array-length v6, v8

    .line 115
    :cond_0
    add-int v10, v5, v6

    new-array v9, v10, [B

    .line 116
    .local v9, "pass":[B
    const/4 v3, 0x0

    .line 117
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    add-int v10, v5, v6

    if-ge v3, v10, :cond_2

    .line 118
    div-int/lit8 v10, v3, 0x4

    rem-int/lit8 v10, v10, 0x2

    if-lez v10, :cond_5

    .line 119
    if-ge v7, v6, :cond_1

    .line 120
    aget-byte v10, v8, v7

    aput-byte v10, v9, v3

    .line 121
    add-int/lit8 v7, v7, 0x1

    .line 129
    :cond_1
    :goto_1
    if-eq v7, v6, :cond_2

    if-ne v0, v5, :cond_6

    .line 132
    :cond_2
    move v4, v3

    .local v4, "j":I
    :goto_2
    add-int v10, v5, v6

    if-ge v4, v10, :cond_7

    .line 133
    if-ge v0, v5, :cond_3

    .line 134
    aget-byte v10, v1, v0

    aput-byte v10, v9, v4

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 137
    :cond_3
    if-ge v7, v6, :cond_4

    .line 138
    aget-byte v10, v8, v7

    aput-byte v10, v9, v4

    .line 139
    add-int/lit8 v7, v7, 0x1

    .line 132
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 124
    .end local v4    # "j":I
    :cond_5
    if-ge v0, v5, :cond_1

    .line 125
    aget-byte v10, v1, v0

    aput-byte v10, v9, v3

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .restart local v4    # "j":I
    :cond_7
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->getHash([B)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->password:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_3
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->password:Ljava/lang/String;

    return-object v10

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public getDevID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 46
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHash([B)Ljava/lang/String;
    .locals 4
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->hashAlgo:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 152
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->TAG:Ljava/lang/String;

    const-string v3, " getHash:digest complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 155
    .local v0, "fpSHA256":[B
    invoke-static {v0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->hexify([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getmacAdress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "macAdress":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 35
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 36
    .local v2, "wInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    .end local v2    # "wInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setHashAlgo(Ljava/lang/String;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->hashAlgo:Ljava/lang/String;

    .line 29
    return-void
.end method
