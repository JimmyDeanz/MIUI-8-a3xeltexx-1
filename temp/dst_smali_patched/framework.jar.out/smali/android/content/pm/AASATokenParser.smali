.class public Landroid/content/pm/AASATokenParser;
.super Ljava/lang/Object;
.source "AASATokenParser.java"


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mCACertName:Ljava/lang/String;

.field private mCAKeyIndex:Ljava/lang/String;

.field private mCertName:Ljava/lang/String;

.field private mCertPath:Ljava/lang/String;

.field private mIsCalledBySKA:Z

.field private mIsSigned512:Z

.field private mRootCertName:Ljava/lang/String;

.field private mRootKeyIndex:Ljava/lang/String;

.field private mTokenContents:[B

.field private mTokenName:Ljava/lang/String;

.field private mTokenValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private misAppSystem:Z

.field private misDeviceMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_INTER_1.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCACertName:Ljava/lang/String;

    const-string v0, "/system/etc/ASKS_ROOT_1.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mRootCertName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mRootKeyIndex:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    return-void
.end method

.method private AASA_isTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "PACKAGE"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v5, "SERIALNUMBER"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " pass all with devtoken :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice er"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private AASA_verifyDevice(Ljava/lang/String;)Z
    .locals 8
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "DEVIEID"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AASA_verifyDevice OK with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice er"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private LEW([BI)I
    .locals 3
    .param p1, "arr"    # [B
    .param p2, "off"    # I

    .prologue
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static SHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .local v1, "sha1hash":[B
    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .local v1, "sha1hash":[B
    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static SHA256_FOR_PACKAGE(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AASAASKS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .local v1, "sha1hash":[B
    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private SKA_GetDataFromXml(Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v10, ""

    .local v10, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "features":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "size":I
    const-string v10, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    const/4 v11, 0x2

    new-array v4, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "CERT"

    aput-object v14, v4, v13

    const/4 v13, 0x1

    const-string v14, "NUM"

    aput-object v14, v4, v13

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    .end local v6    # "fileReader":Ljava/io/FileReader;
    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v7, ""

    .local v7, "keyName":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .local v1, "date":Ljava/lang/String;
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .local v3, "eventType":I
    :goto_1
    const/4 v13, 0x1

    if-eq v3, v13, :cond_6

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    goto :goto_1

    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "keyName":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v3    # "eventType":I
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "keyName":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    const/4 v13, 0x0

    :try_start_2
    aget-object v13, v4, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .restart local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v13, "DATE"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_1
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v7    # "keyName":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v3    # "eventType":I
    .restart local v7    # "keyName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v7    # "keyName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v13

    goto :goto_3

    .local v2, "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static StringToByteArray(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "readBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "buf":[B
    array-length v2, v0

    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, v0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private advancedCheckHash()Ljava/lang/String;
    .locals 27

    .prologue
    const/16 v18, 0x0

    .local v18, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string v24, "SHA-1"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    :goto_0
    const/16 v16, 0x0

    .local v16, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_1
    new-instance v17, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v17, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v17, :cond_9

    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .local v13, "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .local v8, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v24

    if-eqz v24, :cond_2

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/jar/JarEntry;

    .local v11, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v20

    .local v20, "name":Ljava/lang/String;
    const-string v24, "META-INF/"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "SEC-INF/"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "token/"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;

    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v24, 0xc350

    move/from16 v0, v24

    if-lt v9, v0, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v14, Ljava/util/LinkedHashMap;

    .restart local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "i":I
    .end local v11    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v13    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "name":Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object/from16 v16, v17

    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v15, "m":Ljava/io/IOException;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_2
    :try_start_3
    const-string v24, "AASATokenParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v16, :cond_1

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .end local v15    # "m":Ljava/io/IOException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    :goto_4
    return-object v4

    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v7

    .local v7, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_0

    .end local v7    # "e1":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v9    # "i":I
    .restart local v13    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_2
    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v14, Ljava/util/LinkedHashMap;

    .restart local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clear()V

    :cond_3
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    const/16 v19, 0x0

    .local v19, "mdsha256":Ljava/security/MessageDigest;
    :try_start_6
    const-string v24, "SHA-256"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v19

    :goto_5
    const/4 v10, 0x0

    .local v10, "ii":I
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_7

    new-instance v21, Ljava/util/TreeMap;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .local v21, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .local v23, "value":Ljava/lang/String;
    :try_start_8
    const-string v24, "ISO-8859-1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v6

    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .end local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "i":I
    .end local v10    # "ii":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "mdsha256":Ljava/security/MessageDigest;
    .end local v21    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v23    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v24

    move-object/from16 v16, v17

    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_8
    if-eqz v16, :cond_5

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_5
    :goto_9
    throw v24

    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v9    # "i":I
    .restart local v13    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v19    # "mdsha256":Ljava/security/MessageDigest;
    :catch_3
    move-exception v6

    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_b
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_5

    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v10    # "ii":I
    .restart local v21    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .end local v21    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v4

    .local v4, "HASH":Ljava/lang/String;
    const-string v24, "AASATokenParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " advanced hash::"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v17, :cond_8

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/jar/JarFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_8
    :goto_a
    move-object/from16 v16, v17

    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_4

    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_4
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .end local v4    # "HASH":Ljava/lang/String;
    .end local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "i":I
    .end local v10    # "ii":I
    .end local v13    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "mdsha256":Ljava/security/MessageDigest;
    :cond_9
    if-eqz v17, :cond_a

    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_a
    move-object/from16 v16, v17

    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_3

    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v16, v17

    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_3

    .end local v6    # "e":Ljava/io/IOException;
    .restart local v15    # "m":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .end local v6    # "e":Ljava/io/IOException;
    .end local v15    # "m":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v24

    goto :goto_8

    :catch_8
    move-exception v15

    goto/16 :goto_2
.end method

.method public static byteListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .local v1, "current":Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .end local v1    # "current":Ljava/lang/Byte;
    :cond_1
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .local v0, "eventType":I
    :goto_0
    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v1    # "name":Ljava/lang/String;
    :goto_2
    return v2

    .restart local v1    # "name":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkHash(Ljava/lang/String;)Z
    .locals 22
    .param p1, "comp"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .local v11, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v12, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v12, :cond_9

    :try_start_1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .local v14, "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .local v7, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .local v13, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const-string v19, "META-INF/"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "token"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "Token.xml"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    :cond_1
    invoke-static {v12, v7, v3}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;

    invoke-virtual {v14, v13, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v3    # "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    :catch_0
    move-exception v10

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v10, "m":Ljava/io/IOException;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_1
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    .end local v10    # "m":Ljava/io/IOException;
    :goto_2
    return v19

    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    :cond_2
    if-eqz v12, :cond_3

    :try_start_2
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    new-instance v16, Ljava/util/TreeMap;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .local v16, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, "totalBuf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .local v18, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .local v6, "iii":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v6    # "iii":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_5
    const-string v2, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .local v2, "HASH":Ljava/lang/String;
    :try_start_3
    invoke-static {v15}, Landroid/content/pm/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    :try_start_4
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ascending hash::"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  comp from token:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " SHA1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/16 v19, 0x0

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->clear()V

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .restart local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .restart local v6    # "iii":I
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v6    # "iii":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_8
    :try_start_5
    invoke-static {v15}, Landroid/content/pm/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    :try_start_6
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " insertion hash::"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  comp from token:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " SHA1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v19, 0x0

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .end local v2    # "HASH":Ljava/lang/String;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    .end local v15    # "totalBuf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v16    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    .end local v17    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_9
    const/16 v19, 0x0

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    :catch_3
    move-exception v10

    goto/16 :goto_1
.end method

.method private checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "carrier"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v8, "AASATokenParser"

    const-string v9, "ERROR: checkTokenTarget input is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "rule_model":[Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "rule_carrier":[Ljava/lang/String;
    const-string v8, "ro.product.model"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "target_model":Ljava/lang/String;
    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "target_carrier":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "result":Z
    const-string v8, "ALL"

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    array-length v8, v4

    if-ne v8, v10, :cond_7

    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    array-length v7, v3

    if-ne v7, v10, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_1

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_5
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_1

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_7
    const/4 v2, 0x1

    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_3
    array-length v8, v4

    if-ge v0, v8, :cond_8

    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v2, 0x0

    :cond_8
    if-ne v2, v10, :cond_1

    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    array-length v7, v3

    if-ne v7, v10, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x1

    :goto_4
    array-length v7, v3

    if-ge v0, v7, :cond_1

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    array-length v7, v3

    if-ge v1, v7, :cond_1

    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_e
    const-string v8, "ALL"

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v8, v4

    if-ge v0, v8, :cond_f

    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v2, 0x1

    :cond_f
    if-ne v2, v10, :cond_1

    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    array-length v7, v3

    if-ne v7, v10, :cond_12

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_7
    array-length v7, v4

    if-ge v0, v7, :cond_1

    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    const/4 v0, 0x1

    :goto_8
    array-length v7, v3

    if-ge v0, v7, :cond_1

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_9
    array-length v7, v3

    if-ge v1, v7, :cond_1

    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private compXmlString([BIII)Ljava/lang/String;
    .locals 6
    .param p1, "xml"    # [B
    .param p2, "sitOff"    # I
    .param p3, "stOff"    # I
    .param p4, "strInd"    # I

    .prologue
    if-gez p4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    mul-int/lit8 v4, p4, 0x4

    add-int/2addr v4, p2

    invoke-direct {p0, p1, v4}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v4

    add-int v3, p3, v4

    .local v3, "strOff":I
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .local v2, "strLen":I
    new-array v0, v2, [B

    .local v0, "chars":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v2, :cond_1

    add-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v1, v0, v4

    .local v1, "b":B
    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v3, v8, 0xf

    .local v3, "halfbyte":I
    const/4 v6, 0x0

    .local v6, "two_halfs":I
    move v7, v6

    .end local v6    # "two_halfs":I
    .local v7, "two_halfs":I
    :goto_1
    if-ltz v3, :cond_0

    const/16 v8, 0x9

    if-gt v3, v8, :cond_0

    add-int/lit8 v8, v3, 0x30

    int-to-char v8, v8

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v1, 0xf

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "two_halfs":I
    .restart local v6    # "two_halfs":I
    const/4 v8, 0x1

    if-lt v7, v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    :cond_0
    add-int/lit8 v8, v3, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    goto :goto_2

    .end local v1    # "b":B
    .end local v3    # "halfbyte":I
    .end local v7    # "two_halfs":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .restart local v1    # "b":B
    .restart local v3    # "halfbyte":I
    .restart local v6    # "two_halfs":I
    :cond_2
    move v7, v6

    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    goto :goto_1
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;
    .locals 8
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "md"    # Ljava/security/MessageDigest;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "is":Ljava/io/InputStream;
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    .local v3, "size":I
    const/16 v5, 0x1000

    new-array v2, v5, [B

    .local v2, "localBuf":[B
    if-eqz v1, :cond_3

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v1, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {p3, v2, v5, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .end local v2    # "localBuf":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TinyAASA + No IO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "localBuf":[B
    .restart local v3    # "size":I
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    goto :goto_0

    .end local v2    # "localBuf":[B
    .end local v3    # "size":I
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TinyAASA + No RUN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    .locals 8
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)[",
            "Ljava/security/cert/Certificate;"
        }
    .end annotation

    .prologue
    .local p2, "readBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    .local v4, "size":I
    const/16 v5, 0x400

    new-array v3, v5, [B

    .local v3, "localBuf":[B
    if-eqz v2, :cond_2

    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v2, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v5, v3, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "ii":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .end local v3    # "localBuf":[B
    .end local v4    # "size":I
    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No IO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No RUN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_2

    .local v0, "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "readBuffer"    # [B

    .prologue
    const/4 v1, 0x0

    .local v1, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No IO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No RUN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    .local v0, "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "arrayValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, "eventType":I
    const/4 v1, 0x0

    .local v1, "depth":I
    :goto_0
    if-eq v2, v4, :cond_1

    const/4 v3, 0x0

    .local v3, "name":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "a":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    const/4 v4, 0x0

    :cond_2
    return v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toChars([B)[C
    .locals 10
    .param p0, "mSignature"    # [B

    .prologue
    const/16 v9, 0xa

    move-object v4, p0

    .local v4, "sig":[B
    array-length v0, v4

    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .local v1, "N2":I
    new-array v5, v1, [C

    .local v5, "text":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_2

    aget-byte v6, v4, v3

    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    and-int/lit8 v2, v6, 0xf

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_2
    return-object v5
.end method


# virtual methods
.method public AASA_IsSKAToken(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .local v6, "ret":Z
    const/4 v3, 0x0

    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .local v1, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    const-string v7, "SEC-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "buildinfo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SEC-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "buildConfirm.crt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    :cond_3
    return v6

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v7, "META-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "SEC-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "buildinfo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "META-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SEC-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "buildConfirm.crt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v2

    .local v2, "m":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ERROR: AASA_SKAIsToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1

    .end local v2    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_5
    throw v7

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_3

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_2

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_6
    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_1
.end method

.method public AASA_IsToken(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .local v6, "ret":Z
    const/4 v3, 0x0

    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .local v1, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    const-string v7, "token"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Token.xml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_2
    :goto_0
    return v6

    :catch_0
    move-exception v2

    .local v2, "m":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ERROR: AASA_IsToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .end local v2    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v7

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_2

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_1

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_4
    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_0
.end method

.method public AASA_VerifyFile([B)[B
    .locals 1
    .param p1, "contents"    # [B

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v0

    .local v0, "mj":[B
    if-eqz v0, :cond_0

    .end local v0    # "mj":[B
    :goto_0
    return-object v0

    .restart local v0    # "mj":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 36
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v33, "AASATokenParser"

    const-string v34, " AASA_VerifyToken START"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    move/from16 v17, v0

    .local v17, "mIsSKA":Z
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    const/16 v19, 0x0

    .local v19, "mTokenFile":Ljava/util/jar/JarFile;
    const/16 v18, 0x0

    .local v18, "mTokenEntry":Ljava/util/jar/JarEntry;
    const/4 v4, 0x0

    .local v4, "certs":[Ljava/security/cert/Certificate;
    :try_start_0
    new-instance v20, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v20, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v20, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .local v27, "signedData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mTokenContents:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v27    # "signedData":[B
    :cond_0
    if-eqz v20, :cond_36

    invoke-virtual/range {v20 .. v20}, Ljava/util/jar/JarFile;->close()V

    move-object/from16 v19, v20

    .end local v20    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    if-nez v4, :cond_4

    :cond_2
    const-string v33, "AASATokenParser"

    const-string v34, " ERROR: plz check certification in the device"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    :goto_1
    return v33

    :catch_0
    move-exception v16

    .local v16, "m":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string v33, "AASATokenParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " ERROR: AASA_VerifyToken "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .end local v16    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v33

    :goto_3
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v33

    :cond_4
    const/16 v19, 0x0

    const/16 v18, 0x0

    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .local v26, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .local v25, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .local v31, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_4
    const-string v33, "MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v33

    if-eqz v33, :cond_5

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .local v21, "mode":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/content/pm/AASATokenParser;->isInteger(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_6

    const/16 v33, 0x0

    goto/16 :goto_1

    .end local v21    # "mode":Ljava/lang/String;
    :cond_5
    const/16 v33, 0x0

    goto/16 :goto_1

    .restart local v21    # "mode":Ljava/lang/String;
    :cond_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .local v32, "which":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    const/16 v33, 0xff

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    const-string v33, "AASATokenParser"

    const-string v34, " Ship mode device does not support MODE 255"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v11, 0x0

    .local v11, "isCheckUID":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sparse-switch v32, :sswitch_data_0

    const/16 v33, 0x0

    goto/16 :goto_1

    :sswitch_0
    if-eqz v17, :cond_a

    const-string v33, "AASATokenParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " Token 0:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_8
    :goto_5
    :sswitch_1
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    .local v10, "ii":I
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v10, v0, :cond_16

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v33

    if-eqz v33, :cond_15

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .end local v10    # "ii":I
    :cond_9
    const-string v33, "DIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .end local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "isCheckUID":Z
    .end local v21    # "mode":Ljava/lang/String;
    .end local v32    # "which":I
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    const-string v33, "AASATokenParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v33, 0x0

    goto/16 :goto_1

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "isCheckUID":Z
    .restart local v21    # "mode":Ljava/lang/String;
    .restart local v32    # "which":I
    :cond_a
    :try_start_6
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_b

    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_c

    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_b
    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_5

    .end local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "isCheckUID":Z
    .end local v21    # "mode":Ljava/lang/String;
    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v31    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32    # "which":I
    :catch_2
    move-exception v8

    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v33, "AASATokenParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "isCheckUID":Z
    .restart local v21    # "mode":Ljava/lang/String;
    .restart local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v31    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v32    # "which":I
    :cond_c
    :try_start_7
    const-string v33, "DIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :sswitch_2
    if-eqz v17, :cond_11

    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "DIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CREATE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "VERSION"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "INDEX"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "MODELS"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_d

    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v33, "CARRIERS"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_e

    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v33, "EXPIRED"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    const-string v33, "EXPIRED"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v33, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_10

    const-string v33, "SERIALNUMBER"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_8

    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_12

    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_3
    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_4
    const-string v33, "UUID"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_5
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_6
    const-string v33, "UUID"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "ACCOUNT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_7
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_8
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_13

    const-string v33, "DIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto/16 :goto_5

    :sswitch_9
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_a
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_14

    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .restart local v10    # "ii":I
    :cond_15
    const-string v33, "AASATokenParser"

    const-string v34, " Token does not have value"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_16
    const/16 v28, 0x0

    .local v28, "success_check_count":I
    const/4 v12, 0x0

    .local v12, "isModelChecked":Z
    const/4 v13, 0x0

    .local v13, "isValidDate":Z
    const/4 v7, 0x0

    .local v7, "createDate":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "expiredDate":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "keyValue":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "mymodel":Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, "mycarrier":Ljava/lang/String;
    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v10, v0, :cond_30

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "PACKAGE"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_18

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_17

    const-string v33, "AASATokenParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "OK:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v28, v28, 0x1

    :cond_17
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_18
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "CERT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1a

    const/4 v14, 0x0

    .local v14, "j":I
    :goto_a
    array-length v0, v4

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_17

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    new-instance v34, Ljava/lang/String;

    aget-object v35, v4, v14

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/content/pm/AASATokenParser;->toChars([B)[C

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_19

    add-int/lit8 v28, v28, 0x1

    const-string v33, "AASATokenParser"

    const-string v34, "OK:CERT"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .end local v14    # "j":I
    :cond_1a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "UUID"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1b

    const-string v33, "AASATokenParser"

    const-string v34, "OK:UUID"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_17

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    :cond_1b
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "ACCOUNT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1c

    const-string v33, "AASATokenParser"

    const-string v34, "OK:ACCOUNT"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_1c
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "DIGEST"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1f

    if-eqz v17, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v5

    .local v5, "checkHash":Ljava/lang/String;
    if-eqz v5, :cond_1d

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1d

    const-string v33, "AASATokenParser"

    const-string v34, "OK:AdvancedHASH"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_1d
    const-string v34, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NOT OK:AdvancedHASH : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, " comp : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v5    # "checkHash":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/pm/AASATokenParser;->checkHash(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_17

    const-string v33, "AASATokenParser"

    const-string v34, "OK:HASH"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_1f
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "ADVANCEDDIGEST"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_21

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "checkHash":Ljava/lang/String;
    if-eqz v5, :cond_20

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "AASATokenParser"

    const-string v34, "OK:AdvancedHASH"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_20
    const-string v34, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NOT OK:AdvancedHASH : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, " comp : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v5    # "checkHash":Ljava/lang/String;
    :cond_21
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "MODELS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_23

    if-nez v12, :cond_22

    const/4 v12, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "mymodel":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .restart local v23    # "mymodel":Ljava/lang/String;
    goto/16 :goto_9

    :cond_22
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "mymodel":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .restart local v23    # "mymodel":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_17

    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_23
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "CARRIERS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_25

    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v12, v0, :cond_24

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "mycarrier":Ljava/lang/String;
    check-cast v22, Ljava/lang/String;

    .restart local v22    # "mycarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_17

    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_24
    const/4 v12, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "mycarrier":Ljava/lang/String;
    check-cast v22, Ljava/lang/String;

    .restart local v22    # "mycarrier":Ljava/lang/String;
    goto/16 :goto_9

    :cond_25
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "CREATE"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_29

    const-string v34, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "CREATE : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v13, :cond_28

    :try_start_8
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_26

    const-string v33, "AASATokenParser"

    const-string v34, "createDate is bigger than expiredDate."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_26
    new-instance v33, Ljava/text/SimpleDateFormat;

    const-string v34, "yyyyMMdd"

    invoke-direct/range {v33 .. v34}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v33 .. v34}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    .local v29, "today":Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v33

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_27

    const-string v33, "AASATokenParser"

    const-string v34, "today Date is bigger than expiredDate."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2

    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_27
    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .end local v29    # "today":Ljava/lang/Integer;
    :catch_3
    move-exception v24

    .local v24, "ne":Ljava/lang/NumberFormatException;
    :try_start_9
    const-string v33, "AASATokenParser"

    const-string v34, "CREATE : NumberFormatException"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    .end local v24    # "ne":Ljava/lang/NumberFormatException;
    :cond_28
    const/4 v13, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "createDate":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "createDate":Ljava/lang/String;
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_29
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "EXPIRED"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2d

    const-string v34, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "EXPIRED : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2

    if-eqz v13, :cond_2c

    :try_start_a
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2a

    const-string v33, "AASATokenParser"

    const-string v34, "createDate is bigger than expiredDate."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_2a
    new-instance v33, Ljava/text/SimpleDateFormat;

    const-string v34, "yyyyMMdd"

    invoke-direct/range {v33 .. v34}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v33 .. v34}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    .restart local v29    # "today":Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v33

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2b

    const-string v33, "AASATokenParser"

    const-string v34, "today Date is bigger than expiredDate."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2

    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_2b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .end local v29    # "today":Ljava/lang/Integer;
    :catch_4
    move-exception v24

    .restart local v24    # "ne":Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v33, "AASATokenParser"

    const-string v34, "EXPIRED : NumberFormatException"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    .end local v24    # "ne":Ljava/lang/NumberFormatException;
    :cond_2c
    const/4 v13, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "expiredDate":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "expiredDate":Ljava/lang/String;
    goto/16 :goto_9

    :cond_2d
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "VERSION"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2e

    const-string v34, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "VERSION : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_2e
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "INDEX"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2f

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "keyValue":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .restart local v15    # "keyValue":Ljava/lang/String;
    const-string v33, "AASATokenParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "INDEX : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_2f
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "SERIALNUMBER"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    const-string v34, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "SERIALNUMBER : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    :cond_30
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    if-nez v11, :cond_31

    const-string v33, "AASATokenParser"

    const-string v34, " Pass ALL"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x1

    goto/16 :goto_1

    :cond_31
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .local v30, "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v33, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    new-instance v33, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_32
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-nez v33, :cond_33

    const-string v33, "AASATokenParser"

    const-string v34, " Fail:uuidList"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    :cond_33
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_34

    const-string v33, "AASATokenParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " PASS ALL with S/N:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x1

    goto/16 :goto_1

    :cond_34
    const-string v33, "AASATokenParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " FAIL only S/N:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    goto/16 :goto_1

    .end local v30    # "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_35
    const-string v33, "AASATokenParser"

    const-string v34, " Fail: auth"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2

    const/16 v33, 0x0

    goto/16 :goto_1

    .end local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "createDate":Ljava/lang/String;
    .end local v9    # "expiredDate":Ljava/lang/String;
    .end local v10    # "ii":I
    .end local v11    # "isCheckUID":Z
    .end local v12    # "isModelChecked":Z
    .end local v13    # "isValidDate":Z
    .end local v15    # "keyValue":Ljava/lang/String;
    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v21    # "mode":Ljava/lang/String;
    .end local v22    # "mycarrier":Ljava/lang/String;
    .end local v23    # "mymodel":Ljava/lang/String;
    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v28    # "success_check_count":I
    .end local v31    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32    # "which":I
    .restart local v20    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v33

    move-object/from16 v19, v20

    .end local v20    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_3

    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v20    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_5
    move-exception v16

    move-object/from16 v19, v20

    .end local v20    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v20    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_36
    move-object/from16 v19, v20

    .end local v20    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0xa -> :sswitch_a
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public AASA_getPackageInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p1, "inputFile"    # Ljava/lang/String;

    .prologue
    const/16 v17, 0x0

    .local v17, "mVersionCode":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "apkFile":Ljava/util/jar/JarFile;
    const/16 v16, 0x0

    .local v16, "is":Ljava/io/InputStream;
    const v13, 0x100101

    .local v13, "endDocTag":I
    const v20, 0x100102

    .local v20, "startTag":I
    const v14, 0x100103

    .local v14, "endTag":I
    const/16 v21, 0x24

    .local v21, "stringIndexOff":I
    const/16 v22, 0x0

    .local v22, "stringTableOff":I
    const/16 v25, 0x0

    .local v25, "xmlTagOff":I
    const/4 v15, 0x0

    .local v15, "i":I
    const/16 v19, 0x0

    .local v19, "off":I
    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    .local v5, "apkFile":Ljava/util/jar/JarFile;
    :try_start_1
    const-string v26, "AndroidManifest.xml"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .local v24, "xml":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    const/16 v26, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v26

    mul-int/lit8 v26, v26, 0x4

    add-int v22, v21, v26

    const/16 v26, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v25

    move/from16 v15, v25

    :goto_0
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    if-ge v15, v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v26

    const v27, 0x100102

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    move/from16 v25, v15

    :cond_0
    move/from16 v19, v25

    :cond_1
    :goto_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v23

    .local v23, "tag0":I
    const v26, 0x100102

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    add-int/lit8 v26, v19, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v18

    .local v18, "numbAttrs":I
    add-int/lit8 v19, v19, 0x24

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    add-int/lit8 v26, v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v7

    .local v7, "attrNameSi":I
    add-int/lit8 v26, v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v10

    .local v10, "attrValueSi":I
    add-int/lit8 v26, v19, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v8

    .local v8, "attrResId":I
    const/4 v6, 0x0

    .local v6, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/content/pm/AASATokenParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v6

    const-string v26, "versionCode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v10, v0, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v10}, Landroid/content/pm/AASATokenParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v9

    .local v9, "attrValue":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v19, v19, 0x14

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v6    # "attrName":Ljava/lang/String;
    .end local v7    # "attrNameSi":I
    .end local v8    # "attrResId":I
    .end local v10    # "attrValueSi":I
    .end local v18    # "numbAttrs":I
    .end local v23    # "tag0":I
    :cond_3
    add-int/lit8 v15, v15, 0x4

    goto/16 :goto_0

    .restart local v6    # "attrName":Ljava/lang/String;
    .restart local v7    # "attrNameSi":I
    .restart local v8    # "attrResId":I
    .restart local v10    # "attrValueSi":I
    .restart local v18    # "numbAttrs":I
    .restart local v23    # "tag0":I
    :cond_4
    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    goto :goto_3

    .end local v6    # "attrName":Ljava/lang/String;
    .end local v7    # "attrNameSi":I
    .end local v8    # "attrResId":I
    .end local v10    # "attrValueSi":I
    .end local v18    # "numbAttrs":I
    :cond_5
    const v26, 0x100103

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    add-int/lit8 v19, v19, 0x18

    goto/16 :goto_1

    :cond_6
    const v26, 0x100101

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .end local v23    # "tag0":I
    :cond_7
    if-eqz v16, :cond_8

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    :goto_4
    if-nez v17, :cond_a

    const-string v17, "MAYBEOTA"

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "WARNING: Package Name can not be found, Maybe It is OTA"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    move-object v4, v5

    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    move-object/from16 v26, v17

    .end local v24    # "xml":[B
    :cond_b
    :goto_5
    return-object v26

    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v5    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v24    # "xml":[B
    :catch_0
    move-exception v12

    .local v12, "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .end local v12    # "e1":Ljava/io/IOException;
    .end local v24    # "xml":[B
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_3
    const-string v26, "AASATokenParser"

    const-string v27, "Exception on getpackageinfo"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v26, 0x0

    if-eqz v16, :cond_c

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v12

    .restart local v12    # "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    :goto_7
    if-eqz v16, :cond_d

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_e
    :goto_8
    throw v26

    :catch_3
    move-exception v12

    .restart local v12    # "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    .end local v12    # "e1":Ljava/io/IOException;
    .restart local v5    # "apkFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v26

    move-object v4, v5

    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    goto :goto_7

    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v5    # "apkFile":Ljava/util/jar/JarFile;
    :catch_4
    move-exception v11

    move-object v4, v5

    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    goto :goto_6
.end method

.method public AASA_getSKAInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, ""

    .local v0, "Hash":Ljava/lang/String;
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .end local v0    # "Hash":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "Hash":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AASA_getTokenContent()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .local v5, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "PACKAGE"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v7, "DATE"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v7, "VERSION"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "SharedAllowPM"

    invoke-direct {p0, v4, v7, v2}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "PERMISSION"

    invoke-direct {p0, v4, v7, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .end local v2    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_1
    return v6

    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_1
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "er"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "er"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_2
    :try_start_3
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "ii":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    const/4 v1, 0x0

    .restart local v1    # "ii":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "ii":I
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method public SKA_CheckList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "checkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Landroid/content/pm/AASATokenParser;->SKA_GetDataFromXml(Ljava/util/HashMap;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .restart local v1    # "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public aasaDevToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .local v8, "result":Z
    const/4 v5, 0x0

    .local v5, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "file":Ljava/io/File;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    const/4 v6, 0x0

    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .local v2, "count":I
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v2, :cond_1

    new-array v0, v2, [B

    .local v0, "buffer":[B
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {p0, v0}, Landroid/content/pm/AASATokenParser;->AASA_VerifyFile([B)[B

    move-result-object v1

    .local v1, "contents":[B
    if-eqz v1, :cond_1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    iput-object v9, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    const-string v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " targetPackage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, p2}, Landroid/content/pm/AASATokenParser;->AASA_isTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " targetPackage: ok: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x1

    .end local v0    # "buffer":[B
    .end local v1    # "contents":[B
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v2    # "count":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_3
    move v9, v8

    goto :goto_0

    .restart local v2    # "count":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .local v4, "e1":Ljava/io/FileNotFoundException;
    :goto_4
    const/4 v2, 0x0

    goto :goto_1

    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const/4 v2, 0x0

    goto :goto_1

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "contents":[B
    :cond_3
    :try_start_4
    const-string v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " targetPackage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not DevTargert"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .end local v1    # "contents":[B
    :catch_2
    move-exception v9

    goto :goto_2

    .end local v0    # "buffer":[B
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method checkIntegrity([B)[B
    .locals 33
    .param p1, "contents"    # [B

    .prologue
    const/4 v15, 0x0

    .local v15, "isSKA":Z
    const/16 v17, 0x200

    .local v17, "keySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_0

    const/4 v15, 0x1

    :cond_0
    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    const-string v30, "AASATokenParser"

    const-string v31, "AASA Token change key 256"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x100

    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    const/16 v30, 0x0

    :goto_0
    return-object v30

    :cond_2
    :try_start_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .local v23, "signData":[B
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v23

    move/from16 v3, v31

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v30, 0x7

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .local v27, "tempBuf":[B
    const/16 v19, 0x0

    .local v19, "numberIndex":I
    const/4 v14, 0x0

    .local v14, "isError":Z
    move/from16 v12, v17

    .local v12, "ii":I
    :goto_1
    aget-byte v30, p1, v12

    const/16 v31, 0x2c

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    const/16 v30, 0x7

    move/from16 v0, v19

    move/from16 v1, v30

    if-lt v0, v1, :cond_4

    const/4 v14, 0x1

    :cond_3
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v14, v0, :cond_7

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    const-string v30, "AASATokenParser"

    const-string v31, "AASA Token might be signed 256"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v30

    goto :goto_0

    :cond_4
    aget-byte v30, p1, v12

    aput-byte v30, v27, v19

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    :cond_6
    const/16 v30, 0x0

    goto :goto_0

    :cond_7
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .local v18, "number":[B
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v18

    move/from16 v3, v31

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .local v26, "sizeOfcontents":I
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    add-int v30, v17, v19

    const-string v31, ","

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string v30, "SHA256WithRSAEncryption"

    invoke-static/range {v30 .. v30}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v24

    .local v24, "signature":Ljava/security/Signature;
    const-string v30, "x.509"

    invoke-static/range {v30 .. v30}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    .local v8, "certfactory":Ljava/security/cert/CertificateFactory;
    const/4 v9, 0x0

    .local v9, "certificate":Ljava/io/InputStream;
    const/16 v25, 0x0

    .local v25, "signerCert":Ljava/security/cert/X509Certificate;
    if-eqz v15, :cond_14

    const/16 v28, 0x0

    .local v28, "tokenFile":Ljava/util/jar/JarFile;
    const/4 v7, 0x0

    .local v7, "certEntry":Ljava/util/jar/JarEntry;
    const/4 v11, 0x0

    .local v11, "fis":Ljava/io/InputStream;
    new-instance v28, Ljava/util/jar/JarFile;

    .end local v28    # "tokenFile":Ljava/util/jar/JarFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .restart local v28    # "tokenFile":Ljava/util/jar/JarFile;
    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v7

    if-eqz v7, :cond_e

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v25

    .end local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    check-cast v25, Ljava/security/cert/X509Certificate;

    .restart local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    :cond_8
    if-eqz v28, :cond_9

    invoke-virtual/range {v28 .. v28}, Ljava/util/jar/JarFile;->close()V

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_a
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v21

    .local v21, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    .local v20, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v30, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .local v29, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    const-string v30, "INDEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    new-instance v30, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    const/16 v30, 0x0

    :try_start_3
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "index":Ljava/lang/String;
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "index : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v30, "0.0"

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    const-string v30, "AASATokenParser"

    const-string v31, "ENG Cert Index"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v7    # "certEntry":Ljava/util/jar/JarEntry;
    .end local v11    # "fis":Ljava/io/InputStream;
    .end local v13    # "index":Ljava/lang/String;
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v28    # "tokenFile":Ljava/util/jar/JarFile;
    .end local v29    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    :goto_2
    :try_start_4
    invoke-virtual/range {v24 .. v25}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v30

    if-eqz v30, :cond_1d

    const-string v30, "AASATokenParser"

    const-string v31, "Token is verificated in checkIntegrity!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_1b

    new-instance v9, Ljava/io/FileInputStream;

    .end local v9    # "certificate":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCACertName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .restart local v9    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .local v5, "CAcert":Ljava/security/cert/X509Certificate;
    :try_start_5
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v30, "AASATokenParser"

    const-string v31, "signerCert is verificated!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    new-instance v9, Ljava/io/FileInputStream;

    .end local v9    # "certificate":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mRootCertName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .restart local v9    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v22

    check-cast v22, Ljava/security/cert/X509Certificate;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .local v22, "rootCert":Ljava/security/cert/X509Certificate;
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v30, "AASATokenParser"

    const-string v31, "CAcert is verificated!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_d
    const-string v30, "AASATokenParser"

    const-string v31, "rootCert is verificated!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v30, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .end local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    .end local v22    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "certEntry":Ljava/util/jar/JarEntry;
    .restart local v11    # "fis":Ljava/io/InputStream;
    .restart local v28    # "tokenFile":Ljava/util/jar/JarFile;
    :cond_e
    :try_start_9
    const-string v30, "AASATokenParser"

    const-string v31, "Token Cert does not exist!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v28, :cond_f

    invoke-virtual/range {v28 .. v28}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_f
    const/16 v30, 0x0

    goto/16 :goto_0

    .restart local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v29    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    :try_start_a
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    goto/16 :goto_0

    .end local v10    # "e":Ljava/io/IOException;
    .restart local v13    # "index":Ljava/lang/String;
    :cond_10
    const-string v30, "\\."

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .local v16, "keyIndex":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "[^0-9]"

    const-string v32, ""

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "SignerVersion":Ljava/lang/String;
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mTokenName : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " SignerVersion : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v30, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    const-string v6, "1"

    :cond_11
    const/16 v30, 0x1

    aget-object v30, v16, v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_12

    const-string v30, "AASATokenParser"

    const-string v31, "Signer Cert File is not matched with index!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_12
    const-string v30, "SIGNER"

    const/16 v31, 0x1

    aget-object v31, v16, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->SKA_CheckList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_13

    const-string v30, "AASATokenParser"

    const-string v31, "SIGNER is in CRL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_13
    const-string v30, "INTER"

    const/16 v31, 0x0

    aget-object v31, v16, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->SKA_CheckList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_c

    const-string v30, "AASATokenParser"

    const-string v31, "INTER is in CRL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    const/16 v30, 0x0

    goto/16 :goto_0

    .end local v6    # "SignerVersion":Ljava/lang/String;
    .end local v13    # "index":Ljava/lang/String;
    .end local v16    # "keyIndex":[Ljava/lang/String;
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v29    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v10

    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    goto/16 :goto_0

    .end local v7    # "certEntry":Ljava/util/jar/JarEntry;
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v11    # "fis":Ljava/io/InputStream;
    .end local v28    # "tokenFile":Ljava/util/jar/JarFile;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v30, v0

    if-eqz v30, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    const-string v30, "/system/etc/aasa_real_crt2.crt"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    :goto_3
    new-instance v9, Ljava/io/FileInputStream;

    .end local v9    # "certificate":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .restart local v9    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v25

    .end local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    check-cast v25, Ljava/security/cert/X509Certificate;

    .restart local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    goto/16 :goto_2

    :cond_15
    const-string v30, "/data/aasa_test_crt2.crt"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3

    .end local v8    # "certfactory":Ljava/security/cert/CertificateFactory;
    .end local v9    # "certificate":Ljava/io/InputStream;
    .end local v12    # "ii":I
    .end local v14    # "isError":Z
    .end local v18    # "number":[B
    .end local v19    # "numberIndex":I
    .end local v23    # "signData":[B
    .end local v24    # "signature":Ljava/security/Signature;
    .end local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    .end local v26    # "sizeOfcontents":I
    .end local v27    # "tempBuf":[B
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ERROR: checkIntegrity "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "certfactory":Ljava/security/cert/CertificateFactory;
    .restart local v9    # "certificate":Ljava/io/InputStream;
    .restart local v12    # "ii":I
    .restart local v14    # "isError":Z
    .restart local v18    # "number":[B
    .restart local v19    # "numberIndex":I
    .restart local v23    # "signData":[B
    .restart local v24    # "signature":Ljava/security/Signature;
    .restart local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    .restart local v26    # "sizeOfcontents":I
    .restart local v27    # "tempBuf":[B
    :cond_16
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    const-string v30, "/system/etc/aasa_real_crt.crt"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    :goto_4
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    goto :goto_3

    :cond_17
    const-string v30, "/data/aasa_test_crt.crt"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_4

    .restart local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    :catch_3
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ERROR: SignerCert is not verified by CACert "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_18

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_18
    const/16 v30, 0x0

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v22    # "rootCert":Ljava/security/cert/X509Certificate;
    :catch_4
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ERROR: CACert is not verified by RootCert "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_19

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_19
    const/16 v30, 0x0

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ERROR: rootCert is not verified "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_1a
    const/16 v30, 0x0

    goto/16 :goto_0

    .end local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v22    # "rootCert":Ljava/security/cert/X509Certificate;
    :cond_1b
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v30, v0

    goto/16 :goto_0

    :cond_1d
    const-string v30, "AASATokenParser"

    const-string v31, "Token is NOT verificated in checkIntegrity!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :cond_1e
    const/16 v30, 0x0

    goto/16 :goto_0
.end method

.method public getValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCertPath(Z)V
    .locals 2
    .param p1, "isDeviceMode"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    iget-boolean v0, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "/system/etc/aasa_real_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "/data/aasa_test_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSystemApp(Z)V
    .locals 0
    .param p1, "isAppSystem"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    return-void
.end method
