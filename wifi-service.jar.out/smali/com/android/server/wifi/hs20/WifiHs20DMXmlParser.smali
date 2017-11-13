.class public Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;
.super Ljava/lang/Object;
.source "WifiHs20DMXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "Hs20DMXmlParser"

.field private static final nameSpace:Ljava/lang/String;


# instance fields
.field responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method private readCertificate(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 66
    const-string v1, "Hs20DMXmlParser"

    const-string v2, " inside readCertificate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    const-string v2, "getCertificate"

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    new-instance v2, Lcom/android/server/wifi/hs20/getCertificateObj;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/getCertificateObj;-><init>()V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    .line 69
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    const-string v3, "enrollmentProtocol"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentProtocol:Ljava/lang/String;

    .line 71
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "propName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "enrollmentServerURI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->readEnrollmentServerURI(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 78
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "estUserID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->readEnrollmentESTUserName(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 80
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "estPassword"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->readEnrollmentESTPasswd(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 86
    .end local v0    # "propName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readEnrollmentESTPasswd(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x2

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    const-string v2, "estPassword"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    .line 100
    const-string v0, "Hs20DMXmlParser"

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x3

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    const-string v2, "estPassword"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "Hs20DMXmlParser"

    const-string v1, "done will return "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method private readEnrollmentESTUserName(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x2

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    const-string v2, "estUserID"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestUseriD:Ljava/lang/String;

    .line 92
    const-string v0, "Hs20DMXmlParser"

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestUseriD:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x3

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    const-string v2, "estUserID"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private readEnrollmentServerURI(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x2

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    const-string v2, "enrollmentServerURI"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    .line 110
    const-string v0, "Hs20DMXmlParser"

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x3

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->nameSpace:Ljava/lang/String;

    const-string v2, "enrollmentServerURI"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, ""

    .line 117
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 121
    :cond_0
    return-object v0
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 129
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 133
    goto :goto_0

    .line 139
    :cond_1
    return-void

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v3, 0x0

    .line 27
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    invoke-direct {v5}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    .line 29
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 30
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 31
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 32
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->readResponse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 34
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    move-object v3, v4

    .line 41
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->responseObj:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    return-object v5

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v5

    .line 38
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_2

    .line 35
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_1

    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public readResponse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const-string v1, "Hs20DMXmlParser"

    const-string v2, " inside readresponse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 48
    const-string v1, "Hs20DMXmlParser"

    const-string v2, " startTag"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "propName":Ljava/lang/String;
    const-string v1, "Hs20DMXmlParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " prop name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz v0, :cond_2

    const-string v1, "getCertificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->readCertificate(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 59
    :cond_1
    :goto_1
    const-string v1, "Hs20DMXmlParser"

    const-string v2, "1 while"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "propName":Ljava/lang/String;
    :goto_2
    return-void

    .line 55
    .restart local v0    # "propName":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 62
    .end local v0    # "propName":Ljava/lang/String;
    :cond_4
    const-string v1, "Hs20DMXmlParser"

    const-string v2, "1 while retrun"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
