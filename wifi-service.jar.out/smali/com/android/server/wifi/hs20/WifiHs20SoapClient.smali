.class public Lcom/android/server/wifi/hs20/WifiHs20SoapClient;
.super Ljava/lang/Object;
.source "WifiHs20SoapClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;
    }
.end annotation


# static fields
.field static final ACCEPTMFGCERTS:Ljava/lang/String; = "acceptMfgCerts"

.field static final ACCEPTPROVIDERCERTS:Ljava/lang/String; = "acceptProviderCerts"

.field static final ADDMO:Ljava/lang/String; = "addMO"

.field static final CACERTIFICATE:Ljava/lang/String; = "caCertificate"

.field static final EAPAKA:Ljava/lang/String; = "23"

.field static final EAPAKAPRIME:Ljava/lang/String; = "50"

.field static final EAPPEAP:Ljava/lang/String; = "25"

.field static final EAPSIM:Ljava/lang/String; = "18"

.field static final EAPTLS:Ljava/lang/String; = "13"

.field static final EAPTTLS:Ljava/lang/String; = "21"

.field static final ENROLLMENTPROTOCOL:Ljava/lang/String; = "enrollmentProtocol"

.field static final ENROLLMENTSERVERURI:Ljava/lang/String; = "enrollmentServerURI"

.field static final ERRORCODE:Ljava/lang/String; = "errorCode"

.field static final ESTPWD:Ljava/lang/String; = "estPassword"

.field static final ESTUSERID:Ljava/lang/String; = "estUserID"

.field static final EXEC:Ljava/lang/String; = "exec"

.field static final GETCERTIFICATE:Ljava/lang/String; = "getCertificate"

.field static final HOTSPOT_DEBUG_PATH:Ljava/lang/String; = "/data/misc/wifi/hs20/HotspotDebug/"

.field static final LAUNCHBROWSERTOURI:Ljava/lang/String; = "launchBrowserToURI"

.field static final MANAGEMENTTREEURI:Ljava/lang/String; = "managementTreeURI"

.field static final MOCONTAINER:Ljava/lang/String; = "moContainer "

.field static final MORECOMMANDS:Ljava/lang/String; = "moreCommands"

.field static final MOURN:Ljava/lang/String; = "moURN"

.field static final NAME:Ljava/lang/String; = "name"

.field static final NAMESPACE:Ljava/lang/String; = "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

.field static final NOMOUPDATE:Ljava/lang/String; = "noMOUpdate"

.field static final PROVIDERISSUERNAME:Ljava/lang/String; = "providerIssuerName"

.field static final REDIRECTURI:Ljava/lang/String; = "redirectURI"

.field static final REQUEST_REASON:Ljava/lang/String; = "requestReason"

.field static final SECURETOKEN:Ljava/lang/String; = "secureToken"

.field static final SESSIONID:Ljava/lang/String; = "sessionID"

.field static final SOAPENV:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-envelope"

.field static final SPPERROR:Ljava/lang/String; = "sppError"

.field static final SPPEXCHANGECOMPLETE:Ljava/lang/String; = "sppExchangeComplete"

.field static final SPPPOSTDEVDATA:Ljava/lang/String; = "sppPostDevData"

.field static final SPPPOSTDEVDATARESPONSE:Ljava/lang/String; = "sppPostDevDataResponse"

.field static final SPPSTATUS:Ljava/lang/String; = "sppStatus"

.field static final SPPUPDATERESPONSE:Ljava/lang/String; = "sppUpdateResponse"

.field static final SPPVERSION:Ljava/lang/String; = "sppVersion"

.field static final SUPPORTEDMOLIST:Ljava/lang/String; = "supportedMOList"

.field static final SUPPORTEDMOLISTVALUE:Ljava/lang/String; = "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0 urn:oma:mo:OMA DM-devinfo:1.0urn:oma:mo:OMA DM-devdetail:1.0urn:oma:mo:OMA DM-dmacc:1.0"

.field static final SUPPORTEDSPPVERSIONS:Ljava/lang/String; = "supportedSPPVersions"

.field private static final TAG:Ljava/lang/String; = "passPointSoapClient"

.field static final UPDATENODE:Ljava/lang/String; = "updateNode"

.field static final UPLOADMO:Ljava/lang/String; = "uploadMO"

.field static final USECLIENTCERTTLS:Ljava/lang/String; = "useClientCertTLS"


# instance fields
.field private CERT_CREDTENTIAL:I

.field private DEFAULT_IMSI:Ljava/lang/String;

.field private DEFAULT_OPERATOR_LENGTH:I

.field private DMV_VERSION:Ljava/lang/String;

.field private TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

.field credentialId:I

.field hs20ValidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

.field private keyManagers:[Ljavax/net/ssl/KeyManager;

.field mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

.field mContext:Landroid/content/Context;

.field private mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

.field mServerUri:Ljava/net/URL;

.field mSession:Ljavax/net/ssl/SSLSession;

.field mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

.field mSocket:Ljavax/net/ssl/SSLSocket;

.field private mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

.field private mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

.field mSslContext:Ljavax/net/ssl/SSLContext;

.field passWord:[B

.field private reqIterator:I

.field private resIterator:I

.field private sessionId:Ljava/lang/String;

.field soapAction:Ljava/lang/String;

.field private trustManagers:[Ljavax/net/ssl/TrustManager;

.field urlConnection:Ljavax/net/ssl/HttpsURLConnection;

.field userName:Ljava/lang/String;

.field xmlReq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 200
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->CERT_CREDTENTIAL:I

    .line 202
    const-string v1, "1.2"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DMV_VERSION:Ljava/lang/String;

    .line 204
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DEFAULT_OPERATOR_LENGTH:I

    .line 206
    const-string v1, "8010002796"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

    .line 208
    const-string v1, "001010123456789"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DEFAULT_IMSI:Ljava/lang/String;

    .line 527
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    .line 528
    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Hs20SoapClient"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    .line 531
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    .line 533
    :try_start_0
    new-instance v1, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;

    invoke-direct {v1}, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;)[Ljavax/net/ssl/KeyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->keyManagers:[Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;)[Ljavax/net/ssl/TrustManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->trustManagers:[Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method private getIMSI()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1012
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1014
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "networkOperator":Ljava/lang/String;
    const-string v2, "passPointSoapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1017
    const-string v2, "passPointSoapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1022
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DEFAULT_IMSI:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeMoContainerArray()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/moContainer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v21, "moContainerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/moContainer;>;"
    new-instance v11, Lcom/android/server/wifi/hs20/moContainer;

    invoke-direct {v11}, Lcom/android/server/wifi/hs20/moContainer;-><init>()V

    .line 657
    .local v11, "devInfo":Lcom/android/server/wifi/hs20/moContainer;
    const-string v27, "urn:oma:mo:oma-dm-devinfo:1.0"

    move-object/from16 v0, v27

    iput-object v0, v11, Lcom/android/server/wifi/hs20/moContainer;->moURN:Ljava/lang/String;

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v28, "phone"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/TelephonyManager;

    .line 660
    .local v25, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    .line 661
    .local v10, "devId":Ljava/lang/String;
    const/16 v23, 0x0

    .line 662
    .local v23, "namespace":Ljava/lang/String;
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 663
    .local v26, "writer":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v24

    .line 664
    .local v24, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 665
    const-string v27, "MgmtTree"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    const-string v27, "VerDTD"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 667
    const-string v27, "1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 668
    const-string v27, "VerDTD"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 669
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    const-string v27, "DevInfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 673
    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 674
    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    const-string v27, "urn:oma:mo:oma-dm-devinfo:1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 680
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    const-string v27, "DevId"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 683
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 684
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    if-nez v10, :cond_0

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->getMacAddress()Ljava/lang/String;

    move-result-object v10

    .line 687
    :cond_0
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 688
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 689
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 690
    const-string v27, "ro.product.manufacturer"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 691
    .local v17, "manufacturer":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 692
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 693
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 694
    const-string v27, "Man"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 695
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 696
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 697
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 698
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 699
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 701
    :cond_1
    const-string v27, "ro.product.model"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 702
    .local v22, "model":Ljava/lang/String;
    if-eqz v22, :cond_2

    .line 703
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 705
    const-string v27, "Mod"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 706
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 709
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DMV_VERSION:Ljava/lang/String;

    .line 713
    .local v13, "dmV":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    const-string v27, "DmV"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 717
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 719
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 722
    .local v8, "configuration":Landroid/content/res/Configuration;
    if-eqz v8, :cond_3

    .line 723
    iget-object v0, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    .line 724
    .local v16, "language":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    const-string v27, "Lang"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 727
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 729
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 730
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 731
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 733
    .end local v16    # "language":Ljava/lang/String;
    :cond_3
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    const-string v27, "MgmtTree"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 735
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 736
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 737
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v11, Lcom/android/server/wifi/hs20/moContainer;->mgmtTree:Ljava/lang/String;

    .line 738
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v9, Lcom/android/server/wifi/hs20/moContainer;

    invoke-direct {v9}, Lcom/android/server/wifi/hs20/moContainer;-><init>()V

    .line 740
    .local v9, "devDetail":Lcom/android/server/wifi/hs20/moContainer;
    const-string v27, "urn:oma:mo:oma-dm-devdetail:1.0"

    move-object/from16 v0, v27

    iput-object v0, v9, Lcom/android/server/wifi/hs20/moContainer;->moURN:Ljava/lang/String;

    .line 741
    new-instance v26, Ljava/io/StringWriter;

    .end local v26    # "writer":Ljava/io/StringWriter;
    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 742
    .restart local v26    # "writer":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v24

    .line 743
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 744
    if-eqz v24, :cond_8

    .line 745
    const-string v27, "MgmtTree"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    const-string v27, "VerDTD"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 747
    const-string v27, "1.2"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    const-string v27, "VerDTD"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 749
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    const-string v27, "DevDetail"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 752
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 755
    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    const-string v27, "urn:oma:mo:oma-dm-devdetail:1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 757
    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    const-string v27, "Ext"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    const-string v27, "org.wi-fi"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 770
    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 772
    const-string v27, "urn:oma:mo:oma-dm-devdetail:1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 776
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 778
    const-string v27, "Wi-Fi"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 779
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 780
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 781
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    const-string v27, "EAPMethodList"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 783
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 784
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 785
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    const-string v27, "Method01"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 787
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 788
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 790
    const-string v27, "EAPType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 791
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 792
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 793
    const-string v27, "21"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 797
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    const-string v27, "InnerMethod"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 799
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 800
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    const-string v27, "MS-CHAP-V2"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 803
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 806
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    const-string v27, "Method02"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 809
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 811
    const-string v27, "EAPType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 812
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 813
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 814
    const-string v27, "13"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 817
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 819
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 820
    const-string v27, "Method03"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 821
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 824
    const-string v27, "EAPType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 827
    const-string v27, "18"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 828
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 829
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 830
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    const-string v27, "Method04"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 834
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 835
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    const-string v27, "EAPType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 838
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    const-string v27, "23"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 843
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 844
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 845
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 846
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 847
    const-string v27, "ManufacturingCertificate"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 848
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 850
    const-string v27, "FALSE"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 853
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    const-string v27, "IMSI"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 857
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->getIMSI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 862
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    const-string v27, "Wi-FiMACAddress"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->getMacAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 868
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 870
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    const-string v27, "Ops"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 872
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 874
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    const-string v27, "launchBrowserToURI"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 877
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 882
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 883
    const-string v27, "negotiateClientCertTLS"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 887
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 889
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    const-string v27, "getCertificate"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 893
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 898
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 899
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 900
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 901
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 903
    const-string v27, "URI"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 905
    const-string v18, "32"

    .line 906
    .local v18, "maxDepth":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 907
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 908
    const-string v27, "MaxDepth"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 909
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 911
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 913
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    const-string v20, "2048"

    .line 915
    .local v20, "maxToLen":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 916
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 917
    const-string v27, "MaxTotLen"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 918
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 919
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 920
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 921
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 922
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 923
    const-string v19, "64"

    .line 924
    .local v19, "maxSegLen":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 925
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 926
    const-string v27, "MaxSegLen"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 927
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 928
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 929
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 930
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 931
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 932
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 933
    const-string v12, " Smartphone "

    .line 934
    .local v12, "devType":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 935
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 936
    const-string v27, "DevType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 937
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 939
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 940
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 941
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 942
    const-string v27, "ro.product.OEM"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 943
    .local v6, "OEM":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 944
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 945
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 946
    const-string v27, "OEM"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 947
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 948
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 949
    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 950
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 951
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 953
    :cond_4
    const-string v27, "ro.product.PDA"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "FmV":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 955
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 956
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 957
    const-string v27, "FmV"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 958
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 959
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 960
    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 961
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 962
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    :cond_5
    const-string v27, "ro.product.PDA"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 965
    .local v7, "SmV":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 966
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 967
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 968
    const-string v27, "SmV"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 969
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 970
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 971
    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 972
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 973
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 975
    :cond_6
    const-string v27, "ro.product.HW"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 976
    .local v4, "HmV":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 977
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 979
    const-string v27, "HmV"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 980
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 981
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 982
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 983
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 984
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 986
    :cond_7
    const-string v5, "FALSE"

    .line 987
    .local v5, "LrgObj":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 989
    const-string v27, "LrgObj"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 990
    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 992
    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 994
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 995
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 996
    const-string v27, "MgmtTree"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 997
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 998
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 1000
    .end local v3    # "FmV":Ljava/lang/String;
    .end local v4    # "HmV":Ljava/lang/String;
    .end local v5    # "LrgObj":Ljava/lang/String;
    .end local v6    # "OEM":Ljava/lang/String;
    .end local v7    # "SmV":Ljava/lang/String;
    .end local v12    # "devType":Ljava/lang/String;
    .end local v18    # "maxDepth":Ljava/lang/String;
    .end local v19    # "maxSegLen":Ljava/lang/String;
    .end local v20    # "maxToLen":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v9, Lcom/android/server/wifi/hs20/moContainer;->mgmtTree:Ljava/lang/String;

    .line 1001
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    new-instance v14, Ljava/io/File;

    const-string v27, "/data/misc/wifi/hs20/HotspotDebug/soapreq.xml"

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_9

    .line 1004
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 1005
    :cond_9
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1006
    .local v15, "fos":Ljava/io/FileOutputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1007
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 1008
    return-object v21
.end method


# virtual methods
.method public addMO(Ljava/util/ArrayList;I)I
    .locals 9
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/addMoObj;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "addMoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/addMoObj;>;"
    const/4 v8, 0x2

    .line 575
    const-string v5, "passPointSoapClient"

    const-string v6, "addMO "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/16 v0, 0x33

    .line 577
    .local v0, "addPPSmoSussess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 579
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/addMoObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/addMoObj;->mgmtTree:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->initPPSMOObj(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v3

    .line 580
    .local v3, "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/addMoObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/addMoObj;->managementTreeURI:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v8, :cond_0

    .line 582
    const/4 v5, 0x2

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    .line 587
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    .line 588
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addPPSMONode(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v0

    .line 577
    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .restart local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    const-string v5, "passPointSoapClient"

    const-string v6, "tokens length <=2 error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    const/16 v0, 0x37

    .line 597
    .end local v0    # "addPPSmoSussess":I
    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    return v0

    .line 589
    .restart local v0    # "addPPSmoSussess":I
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "passPointSoapClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XmlPullParserException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v0, 0x33

    .line 595
    goto :goto_1

    .line 592
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 593
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "passPointSoapClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v0, 0x33

    goto :goto_1
.end method

.method public disconnect(Ljava/net/URI;Z)V
    .locals 1
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "bFlag"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 296
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->sessionId:Ljava/lang/String;

    .line 299
    :cond_1
    return-void
.end method

.method public getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 12

    .prologue
    .line 270
    const/4 v4, 0x0

    .line 272
    .local v4, "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 273
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 274
    const-string v8, "utf-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 275
    const-string v8, "http.protocol.expect-continue"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 276
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 277
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 278
    .local v7, "truststore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 279
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;

    invoke-direct {v6, p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;-><init>(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;Ljava/security/KeyStore;)V

    .line 281
    .local v6, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 283
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 284
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    new-instance v10, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v10}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 285
    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 286
    .local v1, "manager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v5, "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v4, v5

    .line 290
    .end local v1    # "manager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "truststore":Ljava/security/KeyStore;
    .restart local v4    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_0
    return-object v4

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1026
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1027
    .local v1, "wimanager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "macAddr":Ljava/lang/String;
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public renegotiateTLSUsingCert(Lcom/android/server/wifi/hs20/useClientCertTLSObj;Ljava/net/URI;)I
    .locals 9
    .param p1, "clientcCrtTls"    # Lcom/android/server/wifi/hs20/useClientCertTLSObj;
    .param p2, "serverUri"    # Ljava/net/URI;

    .prologue
    .line 541
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 542
    const-string v5, "passPointSoapClient"

    const-string v6, " inside renegotiate tls connection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/16 v4, 0x190

    .line 544
    .local v4, "responseCode":I
    iget-object v5, p1, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 545
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p1, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 547
    :try_start_0
    iget-object v5, p1, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 548
    .local v0, "ProviderIssuerName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchKeyManFac(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .line 550
    .local v3, "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    if-eqz v3, :cond_1

    .line 551
    invoke-virtual {p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    .line 552
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 553
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSession:Ljavax/net/ssl/SSLSession;

    .line 554
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSocket:Ljavax/net/ssl/SSLSocket;

    .line 555
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    if-nez v5, :cond_1

    .line 556
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 557
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 558
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 559
    const-string v5, "passPointSoapClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 561
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 571
    .end local v0    # "ProviderIssuerName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    :cond_0
    return v4

    .line 566
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "passPointSoapClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public sendSOAPRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hs20/SppResponseObj;
    .locals 33
    .param p1, "soapMethod"    # Ljava/lang/String;
    .param p2, "requestReason"    # Ljava/lang/String;
    .param p3, "Status"    # Ljava/lang/String;
    .param p4, "ErrorCode"    # Ljava/lang/String;
    .param p5, "redirectUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 320
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    .line 321
    const-string v29, "Subscription registration"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 322
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 323
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    .line 324
    .local v6, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    if-nez v6, :cond_2

    .line 325
    const/16 v29, 0x0

    .line 522
    :cond_1
    :goto_0
    return-object v29

    .line 326
    :cond_2
    new-instance v29, Lcom/android/server/wifi/hs20/sppPostReqObject;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/wifi/hs20/sppPostReqObject;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->soapMethod:Ljava/lang/String;

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppStatus:Ljava/lang/String;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->errorCode:Ljava/lang/String;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->redirectUri:Ljava/lang/String;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    const-string v30, "1.0"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppVersion:Ljava/lang/String;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->requestReason:Ljava/lang/String;

    .line 333
    if-eqz p2, :cond_3

    if-eqz p2, :cond_4

    const-string v29, "Subscription registration"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 335
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->sessionId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sessionID:Ljava/lang/String;

    .line 337
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    const-string v30, "1.0"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedSPPVersions:Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    const-string v30, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0 urn:oma:mo:OMA DM-devinfo:1.0urn:oma:mo:OMA DM-devdetail:1.0urn:oma:mo:OMA DM-dmacc:1.0"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedMOList:Ljava/lang/String;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->makeMoContainerArray()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->moContainerArray:Ljava/util/ArrayList;

    .line 340
    new-instance v22, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 341
    .local v22, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v29, "HOST"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v29, "Content-Type"

    const-string v30, "application/soap+xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v29, "SOAPAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->soapAction:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v29, "Connection"

    const-string v30, "close"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v8, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v8}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 346
    .local v8, "credContext":Lorg/apache/http/protocol/HttpContext;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->credentialId:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_9

    if-eqz p2, :cond_9

    const-string v29, "Policy"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "remediation"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "upload"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 350
    :cond_5
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " Doing "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->credentialId:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->credentialId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v23

    .line 352
    .local v23, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    const-string v29, "upload"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 353
    if-eqz v23, :cond_7

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/server/wifi/hs20/addMoObj;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/wifi/hs20/addMoObj;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->addMo:Lcom/android/server/wifi/hs20/addMoObj;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/sppPostReqObject;->addMo:Lcom/android/server/wifi/hs20/addMoObj;

    move-object/from16 v29, v0

    const-string v30, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/addMoObj;->managementTreeURI:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/sppPostReqObject;->addMo:Lcom/android/server/wifi/hs20/addMoObj;

    move-object/from16 v29, v0

    const-string v30, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/addMoObj;->moURN:Ljava/lang/String;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->makeXMLFromPPSMOobj(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 358
    const/4 v3, 0x0

    .line 360
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v29, Ljava/io/FileReader;

    const-string v30, "/data/misc/wifi/hs20/xmlFile.xml"

    invoke-direct/range {v29 .. v30}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15

    .line 362
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v27, "sb":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .line 364
    .local v18, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_10

    .line 365
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 369
    .end local v18    # "line":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    move-object v3, v4

    .line 370
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_6

    .line 371
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 373
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    if-eqz v23, :cond_8

    .line 378
    const-string v29, "Policy"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 379
    const-string v29, "passPointSoapClient"

    const-string v30, " Inside Policy"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    .line 383
    const-string v29, "passPointSoapClient"

    const-string v30, "Getting credentials from  Policy Update node"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    .line 385
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    .line 416
    :cond_8
    :goto_4
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "username: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " pwd: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 418
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Got credential details Username"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "Password"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v28, Lorg/apache/http/auth/AuthScope;

    sget-object v29, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/16 v30, -0x1

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 421
    .local v28, "scope":Lorg/apache/http/auth/AuthScope;
    new-instance v9, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v9, v0, v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .local v9, "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    new-instance v7, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    .line 424
    .local v7, "cp":Lorg/apache/http/client/CredentialsProvider;
    move-object/from16 v0, v28

    invoke-interface {v7, v0, v9}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 425
    const-string v29, "http.auth.credentials-provider"

    move-object/from16 v0, v29

    invoke-interface {v8, v0, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    .end local v7    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .end local v9    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v28    # "scope":Lorg/apache/http/auth/AuthScope;
    :cond_9
    if-eqz p2, :cond_a

    const-string v29, "User input completed"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    .line 430
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "doing digest before sending every SOAP request if digest was used before "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v28, Lorg/apache/http/auth/AuthScope;

    sget-object v29, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/16 v30, -0x1

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 433
    .restart local v28    # "scope":Lorg/apache/http/auth/AuthScope;
    new-instance v9, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v9, v0, v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .restart local v9    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    new-instance v7, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    .line 436
    .restart local v7    # "cp":Lorg/apache/http/client/CredentialsProvider;
    move-object/from16 v0, v28

    invoke-interface {v7, v0, v9}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 437
    const-string v29, "http.auth.credentials-provider"

    move-object/from16 v0, v29

    invoke-interface {v8, v0, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    .end local v7    # "cp":Lorg/apache/http/client/CredentialsProvider;
    .end local v9    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v28    # "scope":Lorg/apache/http/auth/AuthScope;
    :cond_b
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SOAPObject: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/hs20/sppPostReqObject;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v29, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->createSoapRequestXmlString(Lcom/android/server/wifi/hs20/sppPostReqObject;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->xmlReq:Ljava/lang/String;

    .line 442
    new-instance v15, Ljava/io/File;

    const-string v29, "/data/misc/wifi/hs20/HotspotDebug/"

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v15, "fileDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_c

    .line 444
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 445
    :cond_c
    new-instance v13, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SoapReq"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->reqIterator:I

    move/from16 v30, v0

    rem-int/lit8 v30, v30, 0x32

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".xml"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v13, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_d

    .line 447
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 448
    :cond_d
    const/16 v20, 0x0

    .line 450
    .local v20, "outStream":Ljava/io/OutputStream;
    :try_start_2
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v20    # "outStream":Ljava/io/OutputStream;
    .local v21, "outStream":Ljava/io/OutputStream;
    move-object/from16 v20, v21

    .line 454
    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->xmlReq:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 455
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->reqIterator:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->reqIterator:I

    .line 457
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 458
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wifi/hs20/sppPostReqObject;->soapMethod:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->soapAction:Ljava/lang/String;

    .line 459
    new-instance v29, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->xmlReq:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 460
    const/16 v24, 0x0

    .line 461
    .local v24, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    .line 462
    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 466
    :goto_6
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    .line 467
    .local v25, "resposeCode":I
    const/16 v29, 0xc8

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    .line 468
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 469
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    const/16 v17, 0x0

    .line 471
    .local v17, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 472
    new-instance v14, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "/data/misc/wifi/hs20/HotspotDebug/SoapRes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->resIterator:I

    move/from16 v30, v0

    rem-int/lit8 v30, v30, 0x32

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".xml"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 473
    .end local v13    # "file":Ljava/io/File;
    .local v14, "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 474
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 475
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 476
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    const/16 v29, 0x100

    :try_start_5
    move/from16 v0, v29

    new-array v5, v0, [B

    .line 477
    .local v5, "buffer":[B
    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .local v19, "n":I
    const/16 v29, -0x1

    move/from16 v0, v19

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    .line 478
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    .line 496
    .end local v5    # "buffer":[B
    .end local v19    # "n":I
    :catch_1
    move-exception v10

    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .line 497
    .end local v14    # "file":Ljava/io/File;
    .local v10, "e":Ljava/net/UnknownHostException;
    .restart local v13    # "file":Ljava/io/File;
    :goto_8
    :try_start_6
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "UnknownHostException"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v10}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v10}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 508
    if-eqz v17, :cond_e

    .line 509
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 511
    :cond_e
    if-eqz v20, :cond_f

    .line 512
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 522
    .end local v10    # "e":Ljava/net/UnknownHostException;
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v29, v0

    goto/16 :goto_0

    .line 367
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "fileDir":Ljava/io/File;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    .end local v25    # "resposeCode":I
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_10
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/sppPostReqObject;->addMo:Lcom/android/server/wifi/hs20/addMoObj;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/addMoObj;->mgmtTree:Ljava/lang/String;

    .line 368
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 387
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v18    # "line":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    const-string v29, "passPointSoapClient"

    const-string v30, " Policy Update is null. Get the credentials from Credential Object."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 391
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    .line 392
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    goto/16 :goto_4

    .line 396
    :cond_12
    const-string v29, "passPointSoapClient"

    const-string v30, "It is for subscription Update"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13

    .line 400
    const-string v29, "passPointSoapClient"

    const-string v30, "Getting credentials from  Subscription Update node"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    .line 402
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    goto/16 :goto_4

    .line 404
    :cond_13
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " Subscription Update is null. Get the credentials from Credential Object. update identifier :"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 410
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    .line 411
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    goto/16 :goto_4

    .line 451
    .end local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "fileDir":Ljava/io/File;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v10

    .line 452
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 464
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v24    # "response":Lorg/apache/http/HttpResponse;
    :cond_14
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    goto/16 :goto_6

    .line 480
    .end local v13    # "file":Ljava/io/File;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v5    # "buffer":[B
    .restart local v11    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v19    # "n":I
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v25    # "resposeCode":I
    :cond_15
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->resIterator:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->resIterator:I

    .line 483
    new-instance v16, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;-><init>()V

    .line 484
    .local v16, "handler":Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v12

    .line 485
    .local v12, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v26

    .line 486
    .local v26, "saxParser":Ljavax/xml/parsers/SAXParser;
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 487
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    .line 488
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " objject ************************"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->sessionID:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->sessionId:Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/sppPostReqObject;->sessionID:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/sppPostReqObject;->sessionID:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->sessionID:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17

    .line 493
    const-string v29, "passPointSoapClient"

    const-string v30, " session id does not match"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 494
    const/16 v29, 0x0

    .line 508
    if-eqz v17, :cond_16

    .line 509
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 511
    :cond_16
    if-eqz v21, :cond_1

    .line 512
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 514
    :catch_3
    move-exception v10

    .line 515
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 508
    .end local v10    # "e":Ljava/io/IOException;
    :cond_17
    if-eqz v17, :cond_18

    .line 509
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 511
    :cond_18
    if-eqz v21, :cond_19

    .line 512
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_19
    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .line 516
    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto/16 :goto_9

    .line 514
    .end local v13    # "file":Ljava/io/File;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v10

    .line 515
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .line 517
    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto/16 :goto_9

    .line 514
    .end local v5    # "buffer":[B
    .end local v12    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v16    # "handler":Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;
    .end local v19    # "n":I
    .end local v26    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .local v10, "e":Ljava/net/UnknownHostException;
    :catch_5
    move-exception v10

    .line 515
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 499
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 500
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_a
    :try_start_c
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 501
    const-string v29, "passPointSoapClient"

    const-string v30, "Does not have create file permission"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 508
    if-eqz v17, :cond_1a

    .line 509
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 511
    :cond_1a
    if-eqz v20, :cond_f

    .line 512
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_9

    .line 514
    :catch_7
    move-exception v10

    .line 515
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 502
    .end local v10    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v10

    .line 503
    .local v10, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_b
    :try_start_e
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 508
    if-eqz v17, :cond_1b

    .line 509
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 511
    :cond_1b
    if-eqz v20, :cond_f

    .line 512
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_9

    .line 514
    :catch_9
    move-exception v10

    .line 515
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 504
    .end local v10    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v10

    .line 505
    .local v10, "e":Lorg/xml/sax/SAXException;
    :goto_c
    :try_start_10
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 508
    if-eqz v17, :cond_1c

    .line 509
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 511
    :cond_1c
    if-eqz v20, :cond_f

    .line 512
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_9

    .line 514
    :catch_b
    move-exception v10

    .line 515
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 507
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    .line 508
    :goto_d
    if-eqz v17, :cond_1d

    .line 509
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 511
    :cond_1d
    if-eqz v20, :cond_1e

    .line 512
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 516
    :cond_1e
    :goto_e
    throw v29

    .line 514
    :catch_c
    move-exception v10

    .line 515
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 519
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .end local v17    # "is":Ljava/io/InputStream;
    :cond_1f
    const-string v29, "passPointSoapClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "HTTPRESPONSECODE: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 507
    .end local v13    # "file":Ljava/io/File;
    .restart local v11    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v17    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v29

    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto :goto_d

    .end local v13    # "file":Ljava/io/File;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v29

    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto :goto_d

    .line 504
    .end local v13    # "file":Ljava/io/File;
    .restart local v14    # "file":Ljava/io/File;
    :catch_d
    move-exception v10

    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto :goto_c

    .end local v13    # "file":Ljava/io/File;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    :catch_e
    move-exception v10

    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto :goto_c

    .line 502
    .end local v13    # "file":Ljava/io/File;
    .restart local v14    # "file":Ljava/io/File;
    :catch_f
    move-exception v10

    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto :goto_b

    .end local v13    # "file":Ljava/io/File;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    :catch_10
    move-exception v10

    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto :goto_b

    .line 499
    .end local v13    # "file":Ljava/io/File;
    .restart local v14    # "file":Ljava/io/File;
    :catch_11
    move-exception v10

    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto/16 :goto_a

    .end local v13    # "file":Ljava/io/File;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    :catch_12
    move-exception v10

    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto/16 :goto_a

    .line 496
    :catch_13
    move-exception v10

    goto/16 :goto_8

    .end local v13    # "file":Ljava/io/File;
    .restart local v14    # "file":Ljava/io/File;
    :catch_14
    move-exception v10

    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto/16 :goto_8

    .line 369
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "fileDir":Ljava/io/File;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    .end local v25    # "resposeCode":I
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :catch_15
    move-exception v10

    goto/16 :goto_2
.end method

.method public setHS20TLSParam(Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;II)Z
    .locals 3
    .param p1, "validationParam"    # Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;
    .param p2, "credential_id"    # I
    .param p3, "credType"    # I

    .prologue
    .line 225
    :try_start_0
    iput p2, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->credentialId:I

    .line 226
    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    .line 227
    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverUri:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "passpoint server should use https://"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    const/4 v1, 0x0

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 229
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->setParams(Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;)V

    .line 230
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->CERT_CREDTENTIAL:I

    if-ne p3, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchKeyManFac(ILjava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchTrustManagerFactory(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->trustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateMO(Ljava/util/ArrayList;I)I
    .locals 12
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/updateNodeObj;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "updateNodeArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/updateNodeObj;>;"
    const/16 v6, 0x37

    const/4 v11, 0x4

    const/4 v10, 0x2

    .line 601
    const-string v5, "passPointSoapClient"

    const-string v7, "updateMO "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/16 v0, 0x33

    .line 603
    .local v0, "addPPSmoSussess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 605
    :try_start_0
    const-string v7, "passPointSoapClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uupdateNodeArray.get(i).managementTreeURI "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    const-string v7, "UpdateIdentifier"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 608
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, "tokens":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->initPPSMOObj(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v3

    .line 610
    .local v3, "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    array-length v5, v4

    if-le v5, v10, :cond_2

    .line 611
    const-string v5, "passPointSoapClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDbHandler.getUpdateIdentifierForFqdn(tokens[2]) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifierForFqdn(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifierForFqdn(Ljava/lang/String;)I

    move-result v5

    iget v7, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    if-ne v5, v7, :cond_0

    .line 615
    const/16 v0, 0xa

    .line 650
    .end local v0    # "addPPSmoSussess":I
    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :goto_1
    return v0

    .line 616
    .restart local v0    # "addPPSmoSussess":I
    .restart local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    iget v8, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-virtual {v5, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setUpdateIdentifier(Ljava/lang/String;I)Z

    .line 603
    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 618
    .restart local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_2
    const-string v5, "passPointSoapClient"

    const-string v7, "tokens length <=2 error"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 619
    goto :goto_1

    .line 621
    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 622
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->initPPSMOObj(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v3

    .line 623
    .restart local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 624
    .restart local v4    # "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v11, :cond_4

    .line 625
    const/4 v5, 0x2

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    .line 626
    const/4 v5, 0x4

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 631
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    .line 632
    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->domainName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 633
    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->domainName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 634
    const-string v5, "passPointSoapClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid domain Name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->domainName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Access is denied"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Actual domain name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->domainName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v0, 0x33

    goto/16 :goto_1

    .line 628
    :cond_4
    const-string v5, "passPointSoapClient"

    const-string v7, "tokens length <=4 error"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 629
    goto/16 :goto_1

    .line 639
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addPPSMONode(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto/16 :goto_2

    .line 641
    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "passPointSoapClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XmlPullParserException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/16 v0, 0x33

    .line 647
    goto/16 :goto_2

    .line 644
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 645
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "passPointSoapClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/16 v0, 0x33

    goto/16 :goto_2

    .line 649
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    const-string v5, "passPointSoapClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMO ret: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
