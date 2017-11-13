.class public Lcom/android/server/wifi/p2p/common/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# static fields
.field private static final CONTACT_NUMBER:[Ljava/lang/String;

.field static LONG_BYTES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Hash"

.field static checksum:Ljava/util/zip/Checksum;

.field static final key:[B

.field private static m:J

.field private static mV0:J

.field private static final mV0_init:J

.field private static mV1:J

.field private static final mV1_init:J

.field private static mV2:J

.field private static final mV2_init:J

.field private static mV3:J

.field private static final mV3_init:J

.field private static m_idx:I

.field private static msg_byte_counter:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    sput v5, Lcom/android/server/wifi/p2p/common/Hash;->LONG_BYTES:I

    sput-byte v4, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    sput v4, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    const-string v0, "2309851Cdgewlk3E"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    const-wide v0, 0x736f6d6570736575L    # 1.0986868386607877E248

    sget-object v2, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    invoke-static {v2, v4}, Lcom/android/server/wifi/p2p/common/Hash;->bytesLEtoLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0_init:J

    const-wide v0, 0x646f72616e646f6dL    # 6.222199573468475E175

    sget-object v2, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    invoke-static {v2, v5}, Lcom/android/server/wifi/p2p/common/Hash;->bytesLEtoLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1_init:J

    const-wide v0, 0x6c7967656e657261L    # 3.4208747916531402E214

    sget-object v2, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    invoke-static {v2, v4}, Lcom/android/server/wifi/p2p/common/Hash;->bytesLEtoLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2_init:J

    const-wide v0, 0x7465646279746573L    # 4.901176695720602E252

    sget-object v2, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    invoke-static {v2, v5}, Lcom/android/server/wifi/p2p/common/Hash;->bytesLEtoLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3_init:J

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wifi/p2p/common/Hash;->CONTACT_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesLEtoLong([BI)J
    .locals 9
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v8, 0x8

    array-length v1, p0

    sub-int/2addr v1, p1

    if-ge v1, v8, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Less then 8 bytes starting from offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-wide/16 v2, 0x0

    .local v2, "m":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    add-int v1, v0, p1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static finish()J
    .locals 6

    .prologue
    sget-byte v0, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    .local v0, "msgLenMod256":B
    :goto_0
    sget v1, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    sget v2, Lcom/android/server/wifi/p2p/common/Hash;->LONG_BYTES:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wifi/p2p/common/Hash;->updateHash(B)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/Hash;->updateHash(B)V

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    const-wide/16 v4, 0xff

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v4, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    xor-long/2addr v2, v4

    sget-wide v4, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    xor-long/2addr v2, v4

    sget-wide v4, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    return-wide v2
.end method

.method public static getDataCheckByte(Ljava/lang/String;)[B
    .locals 10
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0xff

    const/4 v6, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .local v0, "b":[B
    const-string v4, "00000000"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .local v1, "byteArray":[B
    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    array-length v5, v1

    invoke-interface {v4, v1, v6, v5}, Ljava/util/zip/Checksum;->update([BII)V

    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    .local v2, "csValue":J
    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->reset()V

    const/16 v4, 0x8

    ushr-long v4, v2, v4

    and-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    const/4 v4, 0x1

    and-long v6, v2, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .end local v1    # "byteArray":[B
    .end local v2    # "csValue":J
    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static getDataCheckString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const-string v4, "00000000"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "0000"

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "byteArray":[B
    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-interface {v4, v0, v5, v6}, Ljava/util/zip/Checksum;->update([BII)V

    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    .local v2, "csValue":J
    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->reset()V

    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/common/Hash;->longToString(J)Ljava/lang/String;

    move-result-object v1

    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getSipHashByte(Ljava/lang/String;)[B
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/Hash;->hash([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Hash;->longToBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSipHashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/Hash;->hash([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Hash;->longToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hash([B)J
    .locals 4
    .param p0, "data"    # [B

    .prologue
    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->initialize()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/android/server/wifi/p2p/common/Hash;->updateHash(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->finish()J

    move-result-wide v2

    return-wide v2
.end method

.method private static initialize()V
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0_init:J

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1_init:J

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2_init:J

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3_init:J

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    const/4 v0, 0x0

    sput-byte v0, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    return-void
.end method

.method private static longToBytes(J)[B
    .locals 6
    .param p0, "m"    # J

    .prologue
    const-wide/16 v4, 0xff

    const/4 v1, 0x3

    new-array v0, v1, [B

    .local v0, "b":[B
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static longToString(J)Ljava/lang/String;
    .locals 10
    .param p0, "m"    # J

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    mul-int/lit8 v5, v0, 0x8

    ushr-long v6, p0, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "numberhash"    # Ljava/lang/String;
    .param p2, "crc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, "clsInputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .local v11, "findContact":Ljava/lang/String;
    const-string v0, "Hash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hash retrieveDB hash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/server/wifi/p2p/common/Hash;->CONTACT_NUMBER:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data12 LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "data":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/p2p/common/Util;->cutNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/Hash;->getDataCheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "crcValue":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Hash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hash retrieveDB - CHECK  : true  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v9

    goto :goto_0

    :cond_0
    const-string v0, "Hash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hash retrieveDB - CHECK  : false  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v8    # "crcValue":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v11

    :cond_3
    :try_start_3
    const-string v0, "Hash"

    const-string v1, " hash retrieveDB - failed to cursor moveToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v7, :cond_2

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v10    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_5
    const-string v0, "Hash"

    const-string v1, " hash retrieveDB - CHECK :false - cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v7, :cond_7

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_3
    throw v0

    .local v10, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private static rotateLeft(JI)J
    .locals 4
    .param p0, "l"    # J
    .param p2, "shift"    # I

    .prologue
    shl-long v0, p0, p2

    rsub-int/lit8 v2, p2, 0x40

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static siphash_round()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    invoke-static {v0, v1, v4}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    invoke-static {v0, v1, v4}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    return-void
.end method

.method private static updateHash(B)V
    .locals 6
    .param p0, "b"    # B

    .prologue
    sget-byte v0, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    int-to-long v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    sget v4, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    mul-int/lit8 v4, v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    sget v0, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    sget v0, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    sget v1, Lcom/android/server/wifi/p2p/common/Hash;->LONG_BYTES:I

    if-lt v0, v1, :cond_0

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    :cond_0
    return-void
.end method
