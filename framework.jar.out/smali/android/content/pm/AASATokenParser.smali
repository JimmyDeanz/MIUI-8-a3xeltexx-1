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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 58
    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    .line 64
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_INTER_1.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCACertName:Ljava/lang/String;

    .line 65
    const-string v0, "/system/etc/ASKS_ROOT_1.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mRootCertName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mRootKeyIndex:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    .line 70
    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    .line 71
    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    .line 72
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

    .line 1041
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v3, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 1045
    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1046
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1049
    :try_start_1
    const-string v5, "PACKAGE"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1051
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 1052
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1053
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1059
    const-string v5, "SERIALNUMBER"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1061
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 1062
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1063
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1081
    if-eqz v3, :cond_0

    .line 1082
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1083
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

    .line 1084
    const/4 v4, 0x1

    .line 1087
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_0
    return v4

    .line 1069
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .line 1071
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

    .line 1075
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .line 1077
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

    .line 1093
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v3, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 1098
    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1099
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1102
    :try_start_1
    const-string v5, "DEVIEID"

    invoke-direct {p0, v1, v5, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1104
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 1105
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1106
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1124
    if-eqz v3, :cond_0

    .line 1128
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1129
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

    .line 1130
    const/4 v4, 0x1

    .line 1134
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_0
    return v4

    .line 1112
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .line 1114
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

    .line 1118
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .line 1120
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
    .line 706
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
    .line 123
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 124
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 125
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 126
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
    .line 115
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 116
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 117
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 118
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
    .line 106
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 107
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

    .line 108
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 109
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 110
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
    .line 1783
    .local p1, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v10, ""

    .line 1784
    .local v10, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1785
    .local v4, "features":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1787
    .local v11, "size":I
    const-string v10, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    .line 1788
    const/4 v11, 0x2

    .line 1789
    new-array v4, v11, [Ljava/lang/String;

    .line 1790
    const/4 v13, 0x0

    const-string v14, "CERT"

    aput-object v14, v4, v13

    .line 1791
    const/4 v13, 0x1

    const-string v14, "NUM"

    aput-object v14, v4, v13

    .line 1793
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1794
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1795
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 1796
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1798
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1875
    :goto_0
    return-void

    .line 1804
    :cond_1
    const/4 v6, 0x0

    .line 1806
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    .end local v6    # "fileReader":Ljava/io/FileReader;
    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 1815
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1817
    const-string v7, ""

    .line 1818
    .local v7, "keyName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1819
    .local v12, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 1821
    .local v1, "date":Ljava/lang/String;
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 1822
    .local v3, "eventType":I
    :goto_1
    const/4 v13, 0x1

    if-eq v3, v13, :cond_6

    .line 1823
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1824
    .local v8, "name":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 1852
    :cond_2
    :goto_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 1853
    goto :goto_1

    .line 1808
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "keyName":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1809
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1826
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

    .line 1827
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 1828
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 1830
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    .restart local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1833
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 1834
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    :cond_5
    const-string v13, "DATE"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1838
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1839
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1843
    :pswitch_1
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1844
    if-eqz p1, :cond_2

    .line 1846
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1856
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v7    # "keyName":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 1858
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1862
    :goto_3
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .line 1854
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

    .line 1865
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v7    # "keyName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2
    move-exception v2

    .line 1867
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1871
    :goto_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1860
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v13

    goto :goto_3

    .line 1869
    .local v2, "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    goto :goto_4

    .line 1824
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
    .line 182
    .local p1, "readBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 183
    .local v0, "buf":[B
    array-length v2, v0

    .line 184
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 185
    aget-byte v3, v0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method private advancedCheckHash()Ljava/lang/String;
    .locals 27

    .prologue
    .line 832
    const/16 v18, 0x0

    .line 834
    .local v18, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string v24, "SHA-1"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 839
    :goto_0
    const/16 v16, 0x0

    .line 841
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

    .line 842
    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v17, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v17, :cond_9

    .line 844
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v5, "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 847
    .local v13, "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 848
    .local v14, "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 850
    .local v8, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    const/4 v9, 0x0

    .line 851
    .local v9, "i":I
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 853
    add-int/lit8 v9, v9, 0x1

    .line 854
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/jar/JarEntry;

    .line 855
    .local v11, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v20

    .line 856
    .local v20, "name":Ljava/lang/String;
    const-string v24, "META-INF/"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 858
    const-string v24, "SEC-INF/"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 860
    const-string/jumbo v24, "token/"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;

    .line 863
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const v24, 0xc350

    move/from16 v0, v24

    if-lt v9, v0, :cond_0

    .line 865
    const/4 v9, 0x0

    .line 866
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v14, Ljava/util/LinkedHashMap;

    .line 867
    .restart local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 915
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

    .line 917
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

    .line 923
    if-eqz v16, :cond_1

    .line 924
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 931
    .end local v15    # "m":Ljava/io/IOException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    :goto_4
    return-object v4

    .line 835
    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v7

    .line 837
    .local v7, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_0

    .line 871
    .end local v7    # "e1":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v9    # "i":I
    .restart local v13    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_2
    if-eqz v9, :cond_3

    .line 873
    :try_start_5
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v14, Ljava/util/LinkedHashMap;

    .line 874
    .restart local v14    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->clear()V

    .line 878
    :cond_3
    if-eqz v17, :cond_4

    .line 879
    invoke-virtual/range {v17 .. v17}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 881
    :cond_4
    const/16 v19, 0x0

    .line 883
    .local v19, "mdsha256":Ljava/security/MessageDigest;
    :try_start_6
    const-string v24, "SHA-256"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v19

    .line 889
    :goto_5
    const/4 v10, 0x0

    .local v10, "ii":I
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_7

    .line 890
    new-instance v21, Ljava/util/TreeMap;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 891
    .local v21, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 894
    .local v22, "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 895
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 896
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 899
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

    .line 900
    :catch_2
    move-exception v6

    .line 902
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .line 921
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

    .line 923
    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_8
    if-eqz v16, :cond_5

    .line 924
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 929
    :cond_5
    :goto_9
    throw v24

    .line 884
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

    .line 886
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_b
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_5

    .line 889
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v10    # "ii":I
    .restart local v21    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 906
    .end local v21    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 907
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

    .line 923
    if-eqz v17, :cond_8

    .line 924
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/jar/JarFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_8
    :goto_a
    move-object/from16 v16, v17

    .line 929
    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_4

    .line 926
    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_4
    move-exception v6

    .line 928
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 923
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

    .line 924
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_a
    move-object/from16 v16, v17

    .line 929
    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_3

    .line 926
    .end local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_5
    move-exception v6

    .line 928
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v16, v17

    .line 930
    .end local v17    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v16    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_3

    .line 926
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v15    # "m":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 928
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 926
    .end local v6    # "e":Ljava/io/IOException;
    .end local v15    # "m":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 928
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 921
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v24

    goto :goto_8

    .line 915
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
    .line 147
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    .line 149
    const-string v3, ""

    .line 158
    :goto_0
    return-object v3

    .line 151
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 153
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

    .line 155
    .local v1, "current":Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 158
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

    .line 231
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 232
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v2, :cond_1

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "name":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 258
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 259
    goto :goto_0

    .line 238
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    .end local v1    # "name":Ljava/lang/String;
    :goto_2
    return v2

    .line 248
    .restart local v1    # "name":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    const/4 v0, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 235
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
    .line 937
    const/4 v11, 0x0

    .line 939
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

    .line 940
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v12, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v12, :cond_9

    .line 943
    :try_start_1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 944
    .local v14, "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 945
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 947
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .line 948
    .local v7, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 949
    .local v13, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v3, "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const-string v19, "META-INF/"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 953
    const-string/jumbo v19, "token"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "Token.xml"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 956
    :cond_1
    invoke-static {v12, v7, v3}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;

    .line 957
    invoke-virtual {v14, v13, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1020
    .end local v3    # "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    :catch_0
    move-exception v10

    move-object v11, v12

    .line 1022
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

    .line 1023
    const/16 v19, 0x0

    .line 1025
    .end local v10    # "m":Ljava/io/IOException;
    :goto_2
    return v19

    .line 961
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    :cond_2
    if-eqz v12, :cond_3

    .line 962
    :try_start_2
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 965
    :cond_3
    new-instance v16, Ljava/util/TreeMap;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 966
    .local v16, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 967
    .local v17, "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v15, "totalBuf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 969
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 970
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 971
    .local v18, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .local v6, "iii":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 972
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 975
    .end local v6    # "iii":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_5
    const-string v2, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 977
    .local v2, "HASH":Ljava/lang/String;
    :try_start_3
    invoke-static {v15}, Landroid/content/pm/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 986
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

    .line 987
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 989
    const/16 v19, 0x1

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 979
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v4

    .line 981
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

    .line 982
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 983
    const/16 v19, 0x0

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 992
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 993
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 994
    .local v9, "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 995
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 996
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 997
    .restart local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .restart local v6    # "iii":I
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    .line 999
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 997
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1004
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

    .line 1012
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

    .line 1013
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1015
    const/16 v19, 0x1

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 1006
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_2
    move-exception v4

    .line 1008
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

    .line 1009
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1010
    const/16 v19, 0x0

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 1025
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

    .line 1020
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

    .line 1879
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1881
    :cond_0
    const-string v8, "AASATokenParser"

    const-string v9, "ERROR: checkTokenTarget input is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 1987
    :cond_1
    :goto_0
    return v2

    .line 1884
    :cond_2
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1885
    .local v4, "rule_model":[Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1887
    .local v3, "rule_carrier":[Ljava/lang/String;
    const-string/jumbo v8, "ro.product.model"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1888
    .local v6, "target_model":Ljava/lang/String;
    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1890
    .local v5, "target_carrier":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1892
    .local v2, "result":Z
    const-string v8, "ALL"

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1893
    array-length v8, v4

    if-ne v8, v10, :cond_7

    .line 1894
    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1895
    array-length v7, v3

    if-ne v7, v10, :cond_3

    .line 1896
    const/4 v2, 0x1

    goto :goto_0

    .line 1898
    :cond_3
    const/4 v2, 0x1

    .line 1899
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1900
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1901
    const/4 v2, 0x0

    .line 1902
    goto :goto_0

    .line 1899
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1906
    .end local v0    # "i":I
    :cond_5
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1907
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1908
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1909
    const/4 v2, 0x1

    .line 1910
    goto :goto_0

    .line 1907
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1915
    .end local v0    # "i":I
    :cond_7
    const/4 v2, 0x1

    .line 1918
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_3
    array-length v8, v4

    if-ge v0, v8, :cond_8

    .line 1919
    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1920
    const/4 v2, 0x0

    .line 1925
    :cond_8
    if-ne v2, v10, :cond_1

    .line 1926
    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1927
    array-length v7, v3

    if-ne v7, v10, :cond_a

    .line 1928
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1918
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1930
    :cond_a
    const/4 v0, 0x1

    :goto_4
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1931
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1932
    const/4 v2, 0x0

    .line 1933
    goto/16 :goto_0

    .line 1930
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1937
    :cond_c
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1938
    const/4 v2, 0x0

    .line 1939
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 1940
    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1941
    const/4 v2, 0x1

    .line 1942
    goto/16 :goto_0

    .line 1939
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1948
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_e
    const-string v8, "ALL"

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1951
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v8, v4

    if-ge v0, v8, :cond_f

    .line 1952
    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1953
    const/4 v2, 0x1

    .line 1958
    :cond_f
    if-ne v2, v10, :cond_1

    .line 1959
    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1960
    array-length v7, v3

    if-ne v7, v10, :cond_12

    .line 1961
    const/4 v2, 0x0

    .line 1962
    const/4 v0, 0x0

    :goto_7
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 1963
    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1964
    const/4 v2, 0x1

    .line 1965
    goto/16 :goto_0

    .line 1951
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1962
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1969
    :cond_12
    const/4 v0, 0x1

    :goto_8
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1970
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1971
    const/4 v2, 0x0

    .line 1972
    goto/16 :goto_0

    .line 1969
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1976
    :cond_14
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1977
    const/4 v2, 0x0

    .line 1978
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_9
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 1979
    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1980
    const/4 v2, 0x1

    .line 1981
    goto/16 :goto_0

    .line 1978
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
    .line 711
    if-gez p4, :cond_0

    const/4 v4, 0x0

    .line 719
    :goto_0
    return-object v4

    .line 712
    :cond_0
    mul-int/lit8 v4, p4, 0x4

    add-int/2addr v4, p2

    invoke-direct {p0, p1, v4}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v4

    add-int v3, p3, v4

    .line 713
    .local v3, "strOff":I
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 714
    .local v2, "strLen":I
    new-array v0, v2, [B

    .line 715
    .local v0, "chars":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 717
    add-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v0, v1

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 719
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B

    .prologue
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
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

    .line 133
    .local v1, "b":B
    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v3, v8, 0xf

    .line 134
    .local v3, "halfbyte":I
    const/4 v6, 0x0

    .local v6, "two_halfs":I
    move v7, v6

    .line 137
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

    .line 138
    and-int/lit8 v3, v1, 0xf

    .line 140
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "two_halfs":I
    .restart local v6    # "two_halfs":I
    const/4 v8, 0x1

    if-lt v7, v8, :cond_2

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    :cond_0
    add-int/lit8 v8, v3, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    goto :goto_2

    .line 142
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
    .line 94
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
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

    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, "is":Ljava/io/InputStream;
    if-nez p2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v4

    .line 196
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "size":I
    const/16 v5, 0x1000

    new-array v2, v5, [B

    .line 199
    .local v2, "localBuf":[B
    if-eqz v1, :cond_3

    .line 200
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v1, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 201
    const/4 v5, 0x0

    invoke-virtual {p3, v2, v5, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 208
    .end local v2    # "localBuf":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 209
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

    .line 210
    if-eqz v1, :cond_0

    .line 212
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 213
    :catch_1
    move-exception v5

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "localBuf":[B
    .restart local v3    # "size":I
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 206
    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    goto :goto_0

    .line 217
    .end local v2    # "localBuf":[B
    .end local v3    # "size":I
    :catch_2
    move-exception v0

    .line 218
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

    .line 219
    if-eqz v1, :cond_0

    .line 221
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 222
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
    .line 267
    .local p2, "readBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .line 269
    .local v2, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_3

    .line 270
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 271
    const/4 v4, 0x0

    .line 272
    .local v4, "size":I
    const/16 v5, 0x400

    new-array v3, v5, [B

    .line 273
    .local v3, "localBuf":[B
    if-eqz v2, :cond_2

    .line 274
    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v2, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 275
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 276
    aget-byte v5, v3, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "ii":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 280
    :cond_2
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 301
    .end local v3    # "localBuf":[B
    .end local v4    # "size":I
    :goto_1
    return-object v5

    .line 283
    :catch_0
    move-exception v0

    .line 284
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

    .line 285
    if-eqz v2, :cond_3

    .line 287
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 292
    :catch_1
    move-exception v0

    .line 293
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

    .line 294
    if-eqz v2, :cond_3

    .line 296
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 297
    :catch_2
    move-exception v5

    goto :goto_2

    .line 288
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
    .line 306
    const/4 v1, 0x0

    .line 308
    .local v1, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_2

    .line 309
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_1

    .line 311
    :cond_0
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 313
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 315
    :cond_1
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 336
    :goto_0
    return-object v2

    .line 318
    :catch_0
    move-exception v0

    .line 319
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

    .line 320
    if-eqz v1, :cond_2

    .line 322
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    .line 328
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

    .line 329
    if-eqz v1, :cond_2

    .line 331
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 332
    :catch_2
    move-exception v2

    goto :goto_1

    .line 323
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

    .line 341
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 342
    .local v2, "eventType":I
    const/4 v1, 0x0

    .line 343
    .local v1, "depth":I
    :goto_0
    if-eq v2, v4, :cond_1

    .line 345
    const/4 v3, 0x0

    .line 346
    .local v3, "name":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 373
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 374
    goto :goto_0

    .line 349
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 350
    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 354
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 356
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 363
    .end local v0    # "a":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 364
    if-eqz v3, :cond_0

    .line 365
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    const/4 v2, 0x1

    goto :goto_1

    .line 376
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    const/4 v4, 0x0

    :cond_2
    return v4

    .line 346
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

    .line 163
    move-object v4, p0

    .line 164
    .local v4, "sig":[B
    array-length v0, v4

    .line 165
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 166
    .local v1, "N2":I
    new-array v5, v1, [C

    .line 168
    .local v5, "text":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 170
    aget-byte v6, v4, v3

    .line 171
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 172
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 173
    and-int/lit8 v2, v6, 0xf

    .line 174
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    .line 174
    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .line 177
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
    .line 724
    const/4 v6, 0x0

    .line 725
    .local v6, "ret":Z
    const/4 v3, 0x0

    .line 728
    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_1

    .line 731
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 732
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 734
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 735
    .local v1, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 736
    .local v5, "name":Ljava/lang/String;
    const-string v7, "SEC-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "buildinfo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 738
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 739
    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    .line 740
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

    .line 741
    const/4 v6, 0x1

    .line 762
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_6

    .line 763
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    move-object v3, v4

    .line 766
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 767
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    .line 769
    :cond_3
    return v6

    .line 743
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

    .line 745
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 746
    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    .line 747
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

    .line 748
    const/4 v6, 0x1

    .line 749
    goto :goto_0

    .line 756
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v2

    .line 758
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

    .line 762
    if-eqz v3, :cond_2

    .line 763
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1

    .line 762
    .end local v2    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_5

    .line 763
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_5
    throw v7

    .line 762
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_3

    .line 756
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
    .line 790
    const/4 v6, 0x0

    .line 791
    .local v6, "ret":Z
    const/4 v3, 0x0

    .line 794
    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_1

    .line 797
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 798
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 800
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 801
    .local v1, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 802
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v7, "token"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Token.xml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 805
    const-string v7, ""

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    .line 806
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 807
    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 808
    const/4 v6, 0x1

    .line 821
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_4

    .line 822
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    move-object v3, v4

    .line 825
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_2
    :goto_0
    return v6

    .line 815
    :catch_0
    move-exception v2

    .line 817
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

    .line 821
    if-eqz v3, :cond_2

    .line 822
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .line 821
    .end local v2    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_3

    .line 822
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v7

    .line 821
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_2

    .line 815
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
    .line 1030
    invoke-virtual {p0, p1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v0

    .line 1031
    .local v0, "mj":[B
    if-eqz v0, :cond_0

    .line 1035
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
    .line 1196
    const-string v33, "AASATokenParser"

    const-string v34, " AASA_VerifyToken START"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    move/from16 v17, v0

    .line 1200
    .local v17, "mIsSKA":Z
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    .line 1202
    const/16 v19, 0x0

    .line 1203
    .local v19, "mTokenFile":Ljava/util/jar/JarFile;
    const/16 v18, 0x0

    .line 1204
    .local v18, "mTokenEntry":Ljava/util/jar/JarEntry;
    const/4 v4, 0x0

    .line 1207
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

    .line 1208
    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v20, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v20, :cond_0

    .line 1210
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v18

    .line 1211
    if-eqz v18, :cond_0

    .line 1213
    invoke-virtual/range {v18 .. v18}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 1214
    .local v27, "signedData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 1215
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

    .line 1226
    .end local v27    # "signedData":[B
    :cond_0
    if-eqz v20, :cond_36

    .line 1227
    invoke-virtual/range {v20 .. v20}, Ljava/util/jar/JarFile;->close()V

    move-object/from16 v19, v20

    .line 1233
    .end local v20    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    if-nez v4, :cond_4

    .line 1235
    :cond_2
    const-string v33, "AASATokenParser"

    const-string v34, " ERROR: plz check certification in the device"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/16 v33, 0x0

    .line 1658
    :goto_1
    return v33

    .line 1220
    :catch_0
    move-exception v16

    .line 1222
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

    .line 1226
    if-eqz v19, :cond_1

    .line 1227
    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .line 1226
    .end local v16    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v33

    :goto_3
    if-eqz v19, :cond_3

    .line 1227
    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v33

    .line 1239
    :cond_4
    const/16 v19, 0x0

    .line 1240
    const/16 v18, 0x0

    .line 1244
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1245
    .local v26, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1246
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

    .line 1247
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1250
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

    .line 1252
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1253
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1254
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

    .line 1260
    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1261
    .local v21, "mode":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/content/pm/AASATokenParser;->isInteger(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_6

    .line 1263
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1257
    .end local v21    # "mode":Ljava/lang/String;
    :cond_5
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1265
    .restart local v21    # "mode":Ljava/lang/String;
    :cond_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1267
    .local v32, "which":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 1269
    const/16 v33, 0xff

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 1270
    const-string v33, "AASATokenParser"

    const-string v34, " Ship mode device does not support MODE 255"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1274
    :cond_7
    const/4 v11, 0x0

    .line 1275
    .local v11, "isCheckUID":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .local v6, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sparse-switch v32, :sswitch_data_0

    .line 1409
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1281
    :sswitch_0
    if-eqz v17, :cond_a

    .line 1282
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

    .line 1283
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1286
    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    :goto_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1291
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1292
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

    .line 1412
    :cond_8
    :goto_5
    :sswitch_1
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 1413
    const/4 v10, 0x0

    .local v10, "ii":I
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v10, v0, :cond_16

    .line 1415
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

    .line 1417
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1418
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1419
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

    .line 1413
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1288
    .end local v10    # "ii":I
    :cond_9
    const-string v33, "DIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1644
    .end local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "isCheckUID":Z
    .end local v21    # "mode":Ljava/lang/String;
    .end local v32    # "which":I
    :catch_1
    move-exception v8

    .line 1647
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

    .line 1648
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1649
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1296
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

    .line 1297
    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_b

    .line 1299
    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 1300
    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    :goto_7
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1305
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1306
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

    .line 1308
    :cond_b
    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_5

    .line 1653
    .end local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "isCheckUID":Z
    .end local v21    # "mode":Ljava/lang/String;
    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v31    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32    # "which":I
    :catch_2
    move-exception v8

    .line 1655
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

    .line 1656
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1302
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

    .line 1314
    :sswitch_2
    if-eqz v17, :cond_11

    .line 1315
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    const-string v33, "DIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    const-string v33, "CREATE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    const-string v33, "VERSION"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    const-string v33, "INDEX"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    const-string v33, "MODELS"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 1323
    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    :cond_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1326
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1327
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

    .line 1328
    const-string v33, "CARRIERS"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 1329
    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    :cond_e
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1332
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1333
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

    .line 1334
    const-string v33, "EXPIRED"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1335
    const-string v33, "EXPIRED"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    :cond_f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1338
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1339
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

    .line 1340
    const-string v33, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_10

    .line 1341
    const-string v33, "SERIALNUMBER"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    :cond_10
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1344
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1345
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

    .line 1350
    :cond_11
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_8

    .line 1354
    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 1355
    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    :cond_12
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1360
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1361
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

    .line 1368
    :sswitch_3
    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1371
    :sswitch_4
    const-string v33, "UUID"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1375
    :sswitch_5
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1379
    :sswitch_6
    const-string v33, "UUID"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    const-string v33, "ACCOUNT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1383
    :sswitch_7
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1387
    :sswitch_8
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_13

    const-string v33, "DIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    :cond_13
    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    const/4 v11, 0x1

    .line 1393
    goto/16 :goto_5

    .line 1395
    :sswitch_9
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1399
    :sswitch_a
    const-string v33, "PACKAGE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    const-string v33, "CERT"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_14

    const-string v33, "ADVANCEDDIGEST"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    :cond_14
    const-string v33, "MODELS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    const-string v33, "CARRIERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1423
    .restart local v10    # "ii":I
    :cond_15
    const-string v33, "AASATokenParser"

    const-string v34, " Token does not have value"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1429
    :cond_16
    const/16 v28, 0x0

    .line 1430
    .local v28, "success_check_count":I
    const/4 v12, 0x0

    .line 1432
    .local v12, "isModelChecked":Z
    const/4 v13, 0x0

    .line 1433
    .local v13, "isValidDate":Z
    const/4 v7, 0x0

    .line 1434
    .local v7, "createDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1435
    .local v9, "expiredDate":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1437
    .local v15, "keyValue":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1438
    .local v23, "mymodel":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1439
    .local v22, "mycarrier":Ljava/lang/String;
    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v10, v0, :cond_30

    .line 1441
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "PACKAGE"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_18

    .line 1443
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

    .line 1445
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

    .line 1446
    add-int/lit8 v28, v28, 0x1

    .line 1439
    :cond_17
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1450
    :cond_18
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "CERT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1a

    .line 1452
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_a
    array-length v0, v4

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_17

    .line 1454
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

    .line 1456
    add-int/lit8 v28, v28, 0x1

    .line 1457
    const-string v33, "AASATokenParser"

    const-string v34, "OK:CERT"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_19
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 1462
    .end local v14    # "j":I
    :cond_1a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "UUID"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1b

    .line 1464
    const-string v33, "AASATokenParser"

    const-string v34, "OK:UUID"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    if-eqz p2, :cond_17

    .line 1467
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1469
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 1473
    :cond_1b
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "ACCOUNT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 1475
    const-string v33, "AASATokenParser"

    const-string v34, "OK:ACCOUNT"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1478
    :cond_1c
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "DIGEST"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 1481
    if-eqz v17, :cond_1e

    .line 1482
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v5

    .line 1483
    .local v5, "checkHash":Ljava/lang/String;
    if-eqz v5, :cond_1d

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1d

    .line 1485
    const-string v33, "AASATokenParser"

    const-string v34, "OK:AdvancedHASH"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1488
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

    .line 1491
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

    .line 1493
    const-string v33, "AASATokenParser"

    const-string v34, "OK:HASH"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1497
    :cond_1f
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "ADVANCEDDIGEST"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_21

    .line 1499
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v5

    .line 1500
    .restart local v5    # "checkHash":Ljava/lang/String;
    if-eqz v5, :cond_20

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_20

    .line 1502
    const-string v33, "AASATokenParser"

    const-string v34, "OK:AdvancedHASH"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1505
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

    .line 1508
    .end local v5    # "checkHash":Ljava/lang/String;
    :cond_21
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "MODELS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_23

    .line 1510
    if-nez v12, :cond_22

    .line 1512
    const/4 v12, 0x1

    .line 1513
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "mymodel":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .restart local v23    # "mymodel":Ljava/lang/String;
    goto/16 :goto_9

    .line 1516
    :cond_22
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "mymodel":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 1517
    .restart local v23    # "mymodel":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1519
    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1523
    :cond_23
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "CARRIERS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_25

    .line 1525
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v12, v0, :cond_24

    .line 1526
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "mycarrier":Ljava/lang/String;
    check-cast v22, Ljava/lang/String;

    .line 1527
    .restart local v22    # "mycarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1529
    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1534
    :cond_24
    const/4 v12, 0x1

    .line 1535
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "mycarrier":Ljava/lang/String;
    check-cast v22, Ljava/lang/String;

    .restart local v22    # "mycarrier":Ljava/lang/String;
    goto/16 :goto_9

    .line 1538
    :cond_25
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "CREATE"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_29

    .line 1540
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

    .line 1541
    if-eqz v13, :cond_28

    .line 1543
    :try_start_8
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 1544
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_26

    .line 1545
    const-string v33, "AASATokenParser"

    const-string v34, "createDate is bigger than expiredDate."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1548
    :cond_26
    new-instance v33, Ljava/text/SimpleDateFormat;

    const-string/jumbo v34, "yyyyMMdd"

    invoke-direct/range {v33 .. v34}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v33 .. v34}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    .line 1549
    .local v29, "today":Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v33

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_27

    .line 1550
    const-string v33, "AASATokenParser"

    const-string/jumbo v34, "today Date is bigger than expiredDate."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1551
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1553
    :cond_27
    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1554
    .end local v29    # "today":Ljava/lang/Integer;
    :catch_3
    move-exception v24

    .line 1555
    .local v24, "ne":Ljava/lang/NumberFormatException;
    :try_start_9
    const-string v33, "AASATokenParser"

    const-string v34, "CREATE : NumberFormatException"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1559
    .end local v24    # "ne":Ljava/lang/NumberFormatException;
    :cond_28
    const/4 v13, 0x1

    .line 1560
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "createDate":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 1561
    .restart local v7    # "createDate":Ljava/lang/String;
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1565
    :cond_29
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "EXPIRED"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2d

    .line 1567
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

    .line 1568
    if-eqz v13, :cond_2c

    .line 1570
    :try_start_a
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 1571
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2a

    .line 1572
    const-string v33, "AASATokenParser"

    const-string v34, "createDate is bigger than expiredDate."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1575
    :cond_2a
    new-instance v33, Ljava/text/SimpleDateFormat;

    const-string/jumbo v34, "yyyyMMdd"

    invoke-direct/range {v33 .. v34}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v33 .. v34}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    .line 1576
    .restart local v29    # "today":Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v33

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2b

    .line 1577
    const-string v33, "AASATokenParser"

    const-string/jumbo v34, "today Date is bigger than expiredDate."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2

    .line 1578
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1580
    :cond_2b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1582
    .end local v29    # "today":Ljava/lang/Integer;
    :catch_4
    move-exception v24

    .line 1583
    .restart local v24    # "ne":Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v33, "AASATokenParser"

    const-string v34, "EXPIRED : NumberFormatException"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1587
    .end local v24    # "ne":Ljava/lang/NumberFormatException;
    :cond_2c
    const/4 v13, 0x1

    .line 1588
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "expiredDate":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "expiredDate":Ljava/lang/String;
    goto/16 :goto_9

    .line 1591
    :cond_2d
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "VERSION"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2e

    .line 1593
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

    .line 1594
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1597
    :cond_2e
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "INDEX"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2f

    .line 1599
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "keyValue":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1600
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

    .line 1601
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1602
    :cond_2f
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "SERIALNUMBER"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1604
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

    .line 1605
    const/4 v11, 0x1

    .line 1606
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1611
    :cond_30
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    .line 1612
    if-nez v11, :cond_31

    .line 1613
    const-string v33, "AASATokenParser"

    const-string v34, " Pass ALL"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 1617
    :cond_31
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    .local v30, "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v33, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v33

    if-eqz v33, :cond_32

    .line 1620
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v26

    .line 1621
    invoke-virtual/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v25

    .line 1622
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

    .line 1624
    :cond_32
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-nez v33, :cond_33

    .line 1626
    const-string v33, "AASATokenParser"

    const-string v34, " Fail:uuidList"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1630
    :cond_33
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_34

    .line 1631
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

    .line 1632
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 1634
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

    .line 1635
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1641
    .end local v30    # "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_35
    const-string v33, "AASATokenParser"

    const-string v34, " Fail: auth"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2

    .line 1658
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1226
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

    .line 1220
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

    .line 1276
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
    .line 606
    const/16 v17, 0x0

    .line 607
    .local v17, "mVersionCode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 608
    .local v4, "apkFile":Ljava/util/jar/JarFile;
    const/16 v16, 0x0

    .line 611
    .local v16, "is":Ljava/io/InputStream;
    const v13, 0x100101

    .line 612
    .local v13, "endDocTag":I
    const v20, 0x100102

    .line 613
    .local v20, "startTag":I
    const v14, 0x100103

    .line 614
    .local v14, "endTag":I
    const/16 v21, 0x24

    .line 615
    .local v21, "stringIndexOff":I
    const/16 v22, 0x0

    .line 616
    .local v22, "stringTableOff":I
    const/16 v25, 0x0

    .line 618
    .local v25, "xmlTagOff":I
    const/4 v15, 0x0

    .line 619
    .local v15, "i":I
    const/16 v19, 0x0

    .line 621
    .local v19, "off":I
    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
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

    .line 623
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 624
    .local v24, "xml":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 625
    const/16 v26, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v26

    mul-int/lit8 v26, v26, 0x4

    add-int v22, v21, v26

    .line 626
    const/16 v26, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v25

    .line 627
    move/from16 v15, v25

    :goto_0
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    if-ge v15, v0, :cond_0

    .line 629
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v26

    const v27, 0x100102

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 631
    move/from16 v25, v15

    .line 635
    :cond_0
    move/from16 v19, v25

    .line 637
    :cond_1
    :goto_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 639
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v23

    .line 640
    .local v23, "tag0":I
    const v26, 0x100102

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 642
    add-int/lit8 v26, v19, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v18

    .line 643
    .local v18, "numbAttrs":I
    add-int/lit8 v19, v19, 0x24

    .line 644
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    .line 646
    add-int/lit8 v26, v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v7

    .line 647
    .local v7, "attrNameSi":I
    add-int/lit8 v26, v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v10

    .line 648
    .local v10, "attrValueSi":I
    add-int/lit8 v26, v19, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v8

    .line 649
    .local v8, "attrResId":I
    const/4 v6, 0x0

    .line 650
    .local v6, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/content/pm/AASATokenParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v6

    .line 651
    const-string/jumbo v26, "versionCode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 653
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v10, v0, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v10}, Landroid/content/pm/AASATokenParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v9

    .line 656
    .local v9, "attrValue":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 658
    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v19, v19, 0x14

    .line 644
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 627
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v7    # "attrNameSi":I
    .end local v8    # "attrResId":I
    .end local v10    # "attrValueSi":I
    .end local v18    # "numbAttrs":I
    .end local v23    # "tag0":I
    :cond_3
    add-int/lit8 v15, v15, 0x4

    goto/16 :goto_0

    .line 653
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

    .line 661
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

    .line 663
    add-int/lit8 v19, v19, 0x18

    goto/16 :goto_1

    .line 665
    :cond_6
    const v26, 0x100101

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 685
    .end local v23    # "tag0":I
    :cond_7
    if-eqz v16, :cond_8

    .line 686
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 688
    :cond_8
    if-eqz v5, :cond_9

    .line 689
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 696
    :cond_9
    :goto_4
    if-nez v17, :cond_a

    .line 698
    const-string v17, "MAYBEOTA"

    .line 699
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "WARNING: Package Name can not be found, Maybe It is OTA"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    move-object v4, v5

    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    move-object/from16 v26, v17

    .line 701
    .end local v24    # "xml":[B
    :cond_b
    :goto_5
    return-object v26

    .line 691
    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v5    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v24    # "xml":[B
    :catch_0
    move-exception v12

    .line 693
    .local v12, "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 676
    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .end local v12    # "e1":Ljava/io/IOException;
    .end local v24    # "xml":[B
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v11

    .line 678
    .local v11, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_3
    const-string v26, "AASATokenParser"

    const-string v27, "Exception on getpackageinfo"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 679
    const/16 v26, 0x0

    .line 685
    if-eqz v16, :cond_c

    .line 686
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 688
    :cond_c
    if-eqz v4, :cond_b

    .line 689
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 691
    :catch_2
    move-exception v12

    .line 693
    .restart local v12    # "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 683
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    .line 685
    :goto_7
    if-eqz v16, :cond_d

    .line 686
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 688
    :cond_d
    if-eqz v4, :cond_e

    .line 689
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 694
    :cond_e
    :goto_8
    throw v26

    .line 691
    :catch_3
    move-exception v12

    .line 693
    .restart local v12    # "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 683
    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    .end local v12    # "e1":Ljava/io/IOException;
    .restart local v5    # "apkFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v26

    move-object v4, v5

    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    goto :goto_7

    .line 676
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
    .line 775
    const-string v0, ""

    .line 776
    .local v0, "Hash":Ljava/lang/String;
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 777
    invoke-direct {p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 779
    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 783
    .end local v0    # "Hash":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 782
    .restart local v0    # "Hash":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 783
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AASA_getTokenContent()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1666
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    .line 1669
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 1670
    .local v5, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1671
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1674
    :try_start_1
    const-string v7, "PACKAGE"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1675
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 1676
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1677
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1681
    const-string v7, "DATE"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1683
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 1684
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1685
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1689
    const-string v7, "VERSION"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1691
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 1692
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1693
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1716
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    .local v2, "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "SharedAllowPM"

    invoke-direct {p0, v4, v7, v2}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1719
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 1720
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1721
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1723
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .local v3, "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "PERMISSION"

    invoke-direct {p0, v4, v7, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1728
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 1729
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1730
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 1758
    .end local v2    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_1
    return v6

    .line 1695
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_1
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 1698
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1699
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1748
    :catch_0
    move-exception v0

    .line 1750
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

    .line 1753
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .line 1755
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

    .line 1735
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

    .line 1737
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 1738
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 1739
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1742
    .end local v1    # "ii":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1743
    const/4 v1, 0x0

    .restart local v1    # "ii":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 1744
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1743
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1758
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
    .line 1762
    const/4 v2, 0x0

    .line 1764
    .local v2, "result":Z
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1765
    .local v0, "checkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    .local v1, "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Landroid/content/pm/AASATokenParser;->SKA_GetDataFromXml(Ljava/util/HashMap;)V

    .line 1768
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1769
    if-nez p2, :cond_1

    .line 1770
    const/4 v2, 0x1

    .line 1778
    :cond_0
    :goto_0
    return v2

    .line 1772
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 1773
    .restart local v1    # "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1774
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public aasaDevToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "targetPackage"    # Ljava/lang/String;

    .prologue
    .line 1139
    const/4 v8, 0x0

    .line 1140
    .local v8, "result":Z
    const/4 v5, 0x0

    .line 1141
    .local v5, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    .restart local v5    # "file":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 1143
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1144
    const/4 v9, 0x0

    .line 1190
    :goto_0
    return v9

    .line 1146
    :cond_0
    const/4 v6, 0x0

    .line 1147
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1149
    .local v2, "count":I
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1150
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    move-object v6, v7

    .line 1159
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v2, :cond_1

    .line 1160
    new-array v0, v2, [B

    .line 1162
    .local v0, "buffer":[B
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1163
    invoke-virtual {p0, v0}, Landroid/content/pm/AASATokenParser;->AASA_VerifyFile([B)[B

    move-result-object v1

    .line 1164
    .local v1, "contents":[B
    if-eqz v1, :cond_1

    .line 1165
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    iput-object v9, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 1166
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

    .line 1167
    invoke-direct {p0, p3, p2}, Landroid/content/pm/AASATokenParser;->AASA_isTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1168
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

    .line 1169
    const/4 v8, 0x1

    .line 1181
    .end local v0    # "buffer":[B
    .end local v1    # "contents":[B
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 1182
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v2    # "count":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_3
    move v9, v8

    .line 1190
    goto :goto_0

    .line 1152
    .restart local v2    # "count":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 1153
    .local v4, "e1":Ljava/io/FileNotFoundException;
    :goto_4
    const/4 v2, 0x0

    .line 1157
    goto :goto_1

    .line 1155
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1156
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1172
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

    .line 1176
    .end local v1    # "contents":[B
    :catch_2
    move-exception v9

    goto :goto_2

    .line 1185
    .end local v0    # "buffer":[B
    :catch_3
    move-exception v3

    .line 1187
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1155
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1152
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
    .line 381
    const/4 v15, 0x0

    .line 382
    .local v15, "isSKA":Z
    const/16 v17, 0x200

    .line 383
    .local v17, "keySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 384
    const/4 v15, 0x1

    .line 386
    :cond_0
    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 387
    const-string v30, "AASATokenParser"

    const-string v31, "AASA Token change key 256"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v17, 0x100

    .line 390
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 391
    const/16 v30, 0x0

    .line 598
    :goto_0
    return-object v30

    .line 395
    :cond_2
    :try_start_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 397
    .local v23, "signData":[B
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v23

    move/from16 v3, v31

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 398
    const/16 v30, 0x7

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 400
    .local v27, "tempBuf":[B
    const/16 v19, 0x0

    .line 401
    .local v19, "numberIndex":I
    const/4 v14, 0x0

    .line 403
    .local v14, "isError":Z
    move/from16 v12, v17

    .local v12, "ii":I
    :goto_1
    aget-byte v30, p1, v12

    const/16 v31, 0x2c

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    .line 405
    const/16 v30, 0x7

    move/from16 v0, v19

    move/from16 v1, v30

    if-lt v0, v1, :cond_4

    .line 408
    const/4 v14, 0x1

    .line 414
    :cond_3
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v14, v0, :cond_7

    .line 415
    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 417
    const-string v30, "AASATokenParser"

    const-string v31, "AASA Token might be signed 256"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    .line 419
    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v30

    goto :goto_0

    .line 411
    :cond_4
    aget-byte v30, p1, v12

    aput-byte v30, v27, v19

    .line 403
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 421
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 422
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    .line 423
    :cond_6
    const/16 v30, 0x0

    goto :goto_0

    .line 426
    :cond_7
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 427
    .local v18, "number":[B
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v18

    move/from16 v3, v31

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 428
    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 429
    .local v26, "sizeOfcontents":I
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 430
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

    .line 431
    const-string v30, "SHA256WithRSAEncryption"

    invoke-static/range {v30 .. v30}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v24

    .line 432
    .local v24, "signature":Ljava/security/Signature;
    const-string/jumbo v30, "x.509"

    invoke-static/range {v30 .. v30}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    .line 433
    .local v8, "certfactory":Ljava/security/cert/CertificateFactory;
    const/4 v9, 0x0

    .line 434
    .local v9, "certificate":Ljava/io/InputStream;
    const/16 v25, 0x0

    .line 436
    .local v25, "signerCert":Ljava/security/cert/X509Certificate;
    if-eqz v15, :cond_14

    .line 437
    const/16 v28, 0x0

    .line 438
    .local v28, "tokenFile":Ljava/util/jar/JarFile;
    const/4 v7, 0x0

    .line 439
    .local v7, "certEntry":Ljava/util/jar/JarEntry;
    const/4 v11, 0x0

    .line 440
    .local v11, "fis":Ljava/io/InputStream;
    new-instance v28, Ljava/util/jar/JarFile;

    .end local v28    # "tokenFile":Ljava/util/jar/JarFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v28    # "tokenFile":Ljava/util/jar/JarFile;
    if-eqz v28, :cond_8

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v7

    .line 444
    if-eqz v7, :cond_e

    .line 445
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 446
    invoke-virtual {v8, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v25

    .end local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    check-cast v25, Ljava/security/cert/X509Certificate;

    .line 456
    .restart local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    :cond_8
    if-eqz v28, :cond_9

    .line 457
    invoke-virtual/range {v28 .. v28}, Ljava/util/jar/JarFile;->close()V

    .line 458
    :cond_9
    if-eqz v11, :cond_a

    .line 459
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 463
    :cond_a
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v21

    .line 464
    .local v21, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    .line 465
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

    .line 466
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 468
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

    .line 470
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v21

    .line 471
    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    .line 472
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

    .line 478
    :cond_b
    const/16 v30, 0x0

    :try_start_3
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 479
    .local v13, "index":Ljava/lang/String;
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "index : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v30, "0.0"

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 482
    const-string v30, "AASATokenParser"

    const-string v31, "ENG Cert Index"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 531
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

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 535
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 537
    const-string v30, "AASATokenParser"

    const-string v31, "Token is verificated in checkIntegrity!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    if-eqz v15, :cond_1b

    .line 540
    new-instance v9, Ljava/io/FileInputStream;

    .end local v9    # "certificate":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCACertName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 541
    .restart local v9    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 543
    .local v5, "CAcert":Ljava/security/cert/X509Certificate;
    :try_start_5
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 544
    const-string v30, "AASATokenParser"

    const-string/jumbo v31, "signerCert is verificated!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 553
    :try_start_6
    new-instance v9, Ljava/io/FileInputStream;

    .end local v9    # "certificate":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mRootCertName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 555
    .restart local v9    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v22

    check-cast v22, Ljava/security/cert/X509Certificate;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 558
    .local v22, "rootCert":Ljava/security/cert/X509Certificate;
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 559
    const-string v30, "AASATokenParser"

    const-string v31, "CAcert is verificated!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 569
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 570
    if-eqz v9, :cond_d

    .line 571
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 572
    :cond_d
    const-string v30, "AASATokenParser"

    const-string/jumbo v31, "rootCert is verificated!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v30, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 448
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

    .line 450
    if-eqz v28, :cond_f

    .line 451
    invoke-virtual/range {v28 .. v28}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 453
    :cond_f
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 474
    .restart local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v29    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 475
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

    .line 476
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 484
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v13    # "index":Ljava/lang/String;
    :cond_10
    const-string v30, "\\."

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 487
    .local v16, "keyIndex":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "[^0-9]"

    const-string v32, ""

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, "SignerVersion":Ljava/lang/String;
    const-string v30, "AASATokenParser"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "mTokenName : "

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

    .line 491
    const-string v30, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 492
    const-string v6, "1"

    .line 494
    :cond_11
    const/16 v30, 0x1

    aget-object v30, v16, v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_12

    .line 495
    const-string v30, "AASATokenParser"

    const-string v31, "Signer Cert File is not matched with index!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 498
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

    .line 499
    const-string v30, "AASATokenParser"

    const-string v31, "SIGNER is in CRL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 502
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

    .line 503
    const-string v30, "AASATokenParser"

    const-string v31, "INTER is in CRL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 504
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 508
    .end local v6    # "SignerVersion":Ljava/lang/String;
    .end local v13    # "index":Ljava/lang/String;
    .end local v16    # "keyIndex":[Ljava/lang/String;
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v29    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v10

    .line 509
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

    .line 510
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 514
    .end local v7    # "certEntry":Ljava/util/jar/JarEntry;
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v11    # "fis":Ljava/io/InputStream;
    .end local v28    # "tokenFile":Ljava/util/jar/JarFile;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v30, v0

    if-eqz v30, :cond_16

    .line 515
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    .line 516
    const-string v30, "/system/etc/aasa_real_crt2.crt"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 528
    :goto_3
    new-instance v9, Ljava/io/FileInputStream;

    .end local v9    # "certificate":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 529
    .restart local v9    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v25

    .end local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    check-cast v25, Ljava/security/cert/X509Certificate;

    .restart local v25    # "signerCert":Ljava/security/cert/X509Certificate;
    goto/16 :goto_2

    .line 518
    :cond_15
    const-string v30, "/data/aasa_test_crt2.crt"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3

    .line 595
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

    .line 597
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

    .line 598
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 521
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

    .line 522
    const-string v30, "/system/etc/aasa_real_crt.crt"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 526
    :goto_4
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    goto :goto_3

    .line 524
    :cond_17
    const-string v30, "/data/aasa_test_crt.crt"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_4

    .line 545
    .restart local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    :catch_3
    move-exception v10

    .line 546
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

    .line 547
    if-eqz v9, :cond_18

    .line 548
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 549
    :cond_18
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 560
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v22    # "rootCert":Ljava/security/cert/X509Certificate;
    :catch_4
    move-exception v10

    .line 561
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

    .line 562
    if-eqz v9, :cond_19

    .line 563
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 564
    :cond_19
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 574
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    .line 575
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

    .line 576
    if-eqz v9, :cond_1a

    .line 577
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 578
    :cond_1a
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 582
    .end local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v22    # "rootCert":Ljava/security/cert/X509Certificate;
    :cond_1b
    if-eqz v9, :cond_1c

    .line 583
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 584
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v30, v0

    goto/16 :goto_0

    .line 589
    :cond_1d
    const-string v30, "AASATokenParser"

    const-string v31, "Token is NOT verificated in checkIntegrity!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-eqz v9, :cond_1e

    .line 591
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 592
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
    .line 89
    iget-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCertPath(Z)V
    .locals 2
    .param p1, "isDeviceMode"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    .line 77
    iget-boolean v0, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    const-string v0, "/system/etc/aasa_real_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "/data/aasa_test_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSystemApp(Z)V
    .locals 0
    .param p1, "isAppSystem"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    .line 86
    return-void
.end method
