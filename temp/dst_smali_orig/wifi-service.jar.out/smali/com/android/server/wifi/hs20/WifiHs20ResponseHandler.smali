.class public Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "WifiHs20ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Hs20ResponseHandler"


# instance fields
.field currentElement:Ljava/lang/String;

.field responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    new-instance v0, Lcom/android/server/wifi/hs20/SppResponseObj;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/SppResponseObj;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "sppError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppError:Ljava/lang/String;

    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseObj.sppError  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->sppError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "launchBrowserToURI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->launchBrowserToURI:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/execObj;->launchBrowserToURI:Ljava/lang/String;

    :goto_1
    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseObj.exec.launchBrowserToURI  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->launchBrowserToURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->launchBrowserToURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/execObj;->launchBrowserToURI:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "enrollmentServerURI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    :goto_2
    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseObj.exec.getCertificate.enrollmentServerURI  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "secureToken"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->secureToken:Ljava/lang/String;

    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseObj.exec.getCertificate.secureToken  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/getCertificateObj;->secureToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "caCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->CACertificate:Ljava/lang/String;

    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseObj.exec.getCertificate.CACertificate  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/getCertificateObj;->CACertificate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "estUserID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestUseriD:Ljava/lang/String;

    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseObj.exec.getCertificate.enrollDigestUseriD  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestUseriD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "estPassword"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " new String(ch, start, length);  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    :goto_3
    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseObj.exec.getCertificate.enrollDigestPWD  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "addMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/addMoObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/addMoObj;->mgmtTree:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/addMoObj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/addMoObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/addMoObj;->mgmtTree:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/addMoObj;->mgmtTree:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/addMoObj;

    iput-object v0, v1, Lcom/android/server/wifi/hs20/addMoObj;->mgmtTree:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0    # "temp":Ljava/lang/String;
    :cond_c
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v2, "updateNode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .restart local v0    # "temp":Ljava/lang/String;
    const-string v1, "Hs20ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseObj.updateNode.mgmtTree  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/updateNodeObj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hs20/updateNodeObj;

    iput-object v0, v1, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v0, "Hs20ResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End Element :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getResponseObj()Lcom/android/server/wifi/hs20/SppResponseObj;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "element"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Element :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->currentElement:Ljava/lang/String;

    const-string v3, "sppPostDevDataResponse"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .local v1, "length":I
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    const-string v4, "sppPostDevDataResponse"

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->soapMethod:Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sppVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->sppVersion:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " responseObj.sppVersion  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->sppVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sppStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " responseObj.sppStatus  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sessionID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->sessionID:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " responseObj.sessionID  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->sessionID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "moreCommands"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->moreCommands:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " responseObj.moreCommands  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->moreCommands:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4
    const-string v3, "sppExchangeComplete"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .restart local v1    # "length":I
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    const-string v4, "sppExchangeComplete"

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->soapMethod:Ljava/lang/String;

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sppVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->sppVersion:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " responseObj.sppVersion  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->sppVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sppStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " responseObj.sppStatus  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sessionID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->sessionID:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " responseObj.sessionID  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->sessionID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_8
    const-string v3, "noMOUpdate"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->noMoUpdate:Z

    :cond_9
    :goto_4
    return-void

    :cond_a
    const-string v3, "exec"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .restart local v1    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v1, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "moreCommands"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/execObj;->moreCommands:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.exec.moreCommands   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/execObj;->moreCommands:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_c
    const-string v3, "getCertificate"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .restart local v1    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v1, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enrollmentProtocol"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentProtocol:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.exec.getCertificate.enrollmentProtocol   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentProtocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_e
    const-string v3, "useClientCertTLS"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .restart local v1    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v1, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "acceptMfgCerts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->acceptMfgCerts:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.exec.useClientCertTLS.acceptMfgCerts   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->acceptMfgCerts:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "acceptProviderCerts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->acceptProviderCerts:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.exec.useClientCertTLS.acceptProviderCerts   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->acceptProviderCerts:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_11
    const-string v3, "providerIssuerName"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .restart local v1    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    if-ge v0, v1, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.exec.useClientCertTLS.providerIssuerName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "temp":Ljava/lang/String;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_13
    const-string v3, "uploadMO"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .restart local v1    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    if-ge v0, v1, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "moURN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v2, Lcom/android/server/wifi/hs20/uploadMoObj;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/uploadMoObj;-><init>()V

    .local v2, "temp":Lcom/android/server/wifi/hs20/uploadMoObj;
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/hs20/uploadMoObj;->moURN:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/execObj;->uploadMo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.exec.uploadMo  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wifi/hs20/uploadMoObj;->moURN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "temp":Lcom/android/server/wifi/hs20/uploadMoObj;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_15
    const-string v3, "addMO"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .restart local v1    # "length":I
    new-instance v2, Lcom/android/server/wifi/hs20/addMoObj;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/addMoObj;-><init>()V

    .local v2, "temp":Lcom/android/server/wifi/hs20/addMoObj;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    if-ge v0, v1, :cond_18

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "moURN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/hs20/addMoObj;->moURN:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.addMo.mourn  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wifi/hs20/addMoObj;->moURN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "managementTreeURI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/hs20/addMoObj;->managementTreeURI:Ljava/lang/String;

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.addMo.managementTreeURI  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wifi/hs20/addMoObj;->managementTreeURI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_18
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "temp":Lcom/android/server/wifi/hs20/addMoObj;
    :cond_19
    const-string v3, "updateNode"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .restart local v1    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    if-ge v0, v1, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "managementTreeURI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v2, Lcom/android/server/wifi/hs20/updateNodeObj;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/updateNodeObj;-><init>()V

    .local v2, "temp":Lcom/android/server/wifi/hs20/updateNodeObj;
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Hs20ResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj.updateNode  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "temp":Lcom/android/server/wifi/hs20/updateNodeObj;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method
