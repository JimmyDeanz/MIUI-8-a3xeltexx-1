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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->CERT_CREDTENTIAL:I

    const-string v1, "1.2"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DMV_VERSION:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DEFAULT_OPERATOR_LENGTH:I

    const-string v1, "8010002796"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

    const-string v1, "001010123456789"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DEFAULT_IMSI:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Hs20SoapClient"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    :try_start_0
    new-instance v1, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;

    invoke-direct {v1}, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;)[Ljavax/net/ssl/KeyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->keyManagers:[Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;)[Ljavax/net/ssl/TrustManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->trustManagers:[Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method private getIMSI()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

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

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, "moContainerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/moContainer;>;"
    new-instance v11, Lcom/android/server/wifi/hs20/moContainer;

    invoke-direct {v11}, Lcom/android/server/wifi/hs20/moContainer;-><init>()V

    .local v11, "devInfo":Lcom/android/server/wifi/hs20/moContainer;
    const-string v27, "urn:oma:mo:oma-dm-devinfo:1.0"

    move-object/from16 v0, v27

    iput-object v0, v11, Lcom/android/server/wifi/hs20/moContainer;->moURN:Ljava/lang/String;

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

    .local v25, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    .local v10, "devId":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "namespace":Ljava/lang/String;
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .local v26, "writer":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v24

    .local v24, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v27, "MgmtTree"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "VerDTD"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "VerDTD"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DevInfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "urn:oma:mo:oma-dm-devinfo:1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DevId"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->getMacAddress()Ljava/lang/String;

    move-result-object v10

    :cond_0
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "ro.product.manufacturer"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "manufacturer":Ljava/lang/String;
    if-eqz v17, :cond_1

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Man"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string v27, "ro.product.model"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "model":Ljava/lang/String;
    if-eqz v22, :cond_2

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Mod"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->DMV_VERSION:Ljava/lang/String;

    .local v13, "dmV":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DmV"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .local v8, "configuration":Landroid/content/res/Configuration;
    if-eqz v8, :cond_3

    iget-object v0, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    .local v16, "language":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Lang"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v16    # "language":Ljava/lang/String;
    :cond_3
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "MgmtTree"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v11, Lcom/android/server/wifi/hs20/moContainer;->mgmtTree:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/server/wifi/hs20/moContainer;

    invoke-direct {v9}, Lcom/android/server/wifi/hs20/moContainer;-><init>()V

    .local v9, "devDetail":Lcom/android/server/wifi/hs20/moContainer;
    const-string v27, "urn:oma:mo:oma-dm-devdetail:1.0"

    move-object/from16 v0, v27

    iput-object v0, v9, Lcom/android/server/wifi/hs20/moContainer;->moURN:Ljava/lang/String;

    new-instance v26, Ljava/io/StringWriter;

    .end local v26    # "writer":Ljava/io/StringWriter;
    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .restart local v26    # "writer":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    if-eqz v24, :cond_8

    const-string v27, "MgmtTree"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "VerDTD"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "1.2"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "VerDTD"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DevDetail"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "urn:oma:mo:oma-dm-devdetail:1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Ext"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "org.wi-fi"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "urn:oma:mo:oma-dm-devdetail:1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DDFName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "RTProperties"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Wi-Fi"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "EAPMethodList"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Method01"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "EAPType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "21"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "InnerMethod"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "MS-CHAP-V2"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Method02"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "EAPType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "13"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Method03"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "EAPType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "18"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Method04"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "EAPType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "23"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "ManufacturingCertificate"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "FALSE"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "IMSI"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->getIMSI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Wi-FiMACAddress"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->getMacAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Ops"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "launchBrowserToURI"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "negotiateClientCertTLS"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "getCertificate"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "URI"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v18, "32"

    .local v18, "maxDepth":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "MaxDepth"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v20, "2048"

    .local v20, "maxToLen":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "MaxTotLen"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v19, "64"

    .local v19, "maxSegLen":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "MaxSegLen"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, " Smartphone "

    .local v12, "devType":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "DevType"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "ro.product.OEM"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "OEM":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "OEM"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-string v27, "ro.product.PDA"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "FmV":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "FmV"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string v27, "ro.product.PDA"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "SmV":Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "SmV"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const-string v27, "ro.product.HW"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "HmV":Ljava/lang/String;
    if-eqz v4, :cond_7

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "HmV"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    const-string v5, "FALSE"

    .local v5, "LrgObj":Ljava/lang/String;
    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "LrgObj"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "NodeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Value"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "Node"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v27, "MgmtTree"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

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

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/io/File;

    const-string v27, "/data/misc/wifi/hs20/HotspotDebug/soapreq.xml"

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_9

    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    :cond_9
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v15, "fos":Ljava/io/FileOutputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

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

    const-string v5, "passPointSoapClient"

    const-string v6, "addMO "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x33

    .local v0, "addPPSmoSussess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/addMoObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/addMoObj;->mgmtTree:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->initPPSMOObj(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v3

    .local v3, "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/addMoObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/addMoObj;->managementTreeURI:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v8, :cond_0

    const/4 v5, 0x2

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addPPSMONode(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v0

    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    const-string v5, "passPointSoapClient"

    const-string v6, "tokens length <=2 error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v0, 0x37

    .end local v0    # "addPPSmoSussess":I
    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    return v0

    .restart local v0    # "addPPSmoSussess":I
    :catch_0
    move-exception v1

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

    const/16 v0, 0x33

    goto :goto_1

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

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

    const/16 v0, 0x33

    goto :goto_1
.end method

.method public disconnect(Ljava/net/URI;Z)V
    .locals 1
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "bFlag"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->sessionId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .local v4, "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v8, "utf-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const-string v8, "http.protocol.expect-continue"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .local v7, "truststore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;

    invoke-direct {v6, p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient$HS20SSLSocketFactory;-><init>(Lcom/android/server/wifi/hs20/WifiHs20SoapClient;Ljava/security/KeyStore;)V

    .local v6, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    new-instance v10, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v10}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .local v1, "manager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v5, "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v4, v5

    .end local v1    # "manager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "truststore":Ljava/security/KeyStore;
    .restart local v4    # "ret":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, "wimanager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

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
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const-string v5, "passPointSoapClient"

    const-string v6, " inside renegotiate tls connection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x190

    .local v4, "responseCode":I
    iget-object v5, p1, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p1, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    :try_start_0
    iget-object v5, p1, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "ProviderIssuerName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchKeyManFac(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .local v3, "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSession:Ljavax/net/ssl/SSLSession;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSocket:Ljavax/net/ssl/SSLSocket;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    if-nez v5, :cond_1

    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

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

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->urlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .end local v0    # "ProviderIssuerName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "keyManager":Ljavax/net/ssl/KeyManagerFactory;
    :cond_0
    return v4

    .restart local v2    # "i":I
    :catch_0
    move-exception v1

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
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    const-string v29, "Subscription registration"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->keyManagers:[Ljavax/net/ssl/KeyManager;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    .local v6, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    if-nez v6, :cond_2

    const/16 v29, 0x0

    :cond_1
    :goto_0
    return-object v29

    :cond_2
    new-instance v29, Lcom/android/server/wifi/hs20/sppPostReqObject;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/wifi/hs20/sppPostReqObject;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->soapMethod:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppStatus:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->errorCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->redirectUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    const-string v30, "1.0"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->sppVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->requestReason:Ljava/lang/String;

    if-eqz p2, :cond_3

    if-eqz p2, :cond_4

    const-string v29, "Subscription registration"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

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

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    const-string v30, "1.0"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedSPPVersions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    const-string v30, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0 urn:oma:mo:OMA DM-devinfo:1.0urn:oma:mo:OMA DM-devdetail:1.0urn:oma:mo:OMA DM-dmacc:1.0"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->supportedMOList:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->makeMoContainerArray()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->moContainerArray:Ljava/util/ArrayList;

    new-instance v22, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

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

    const-string v29, "Content-Type"

    const-string v30, "application/soap+xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "SOAPAction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->soapAction:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "Connection"

    const-string v30, "close"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v8}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->credentialId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v23

    .local v23, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    const-string v29, "upload"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_7

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppPostReqObject:Lcom/android/server/wifi/hs20/sppPostReqObject;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/server/wifi/hs20/addMoObj;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/wifi/hs20/addMoObj;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wifi/hs20/sppPostReqObject;->addMo:Lcom/android/server/wifi/hs20/addMoObj;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->makeXMLFromPPSMOobj(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    const/4 v3, 0x0

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

    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .local v27, "sb":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .local v18, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_10

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v18    # "line":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_6
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    if-eqz v23, :cond_8

    const-string v29, "Policy"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_12

    const-string v29, "passPointSoapClient"

    const-string v30, " Inside Policy"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v29, "passPointSoapClient"

    const-string v30, "Getting credentials from  Policy Update node"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

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

    new-instance v28, Lorg/apache/http/auth/AuthScope;

    sget-object v29, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/16 v30, -0x1

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

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

    .local v9, "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    new-instance v7, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    .local v7, "cp":Lorg/apache/http/client/CredentialsProvider;
    move-object/from16 v0, v28

    invoke-interface {v7, v0, v9}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    const-string v29, "http.auth.credentials-provider"

    move-object/from16 v0, v29

    invoke-interface {v8, v0, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

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

    new-instance v28, Lorg/apache/http/auth/AuthScope;

    sget-object v29, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/16 v30, -0x1

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

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

    .restart local v9    # "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    new-instance v7, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    .restart local v7    # "cp":Lorg/apache/http/client/CredentialsProvider;
    move-object/from16 v0, v28

    invoke-interface {v7, v0, v9}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    const-string v29, "http.auth.credentials-provider"

    move-object/from16 v0, v29

    invoke-interface {v8, v0, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

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

    new-instance v29, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

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

    new-instance v15, Ljava/io/File;

    const-string v29, "/data/misc/wifi/hs20/HotspotDebug/"

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v15, "fileDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_c

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

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

    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_d

    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    :cond_d
    const/16 v20, 0x0

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

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->reqIterator:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->reqIterator:I

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

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

    const/16 v24, 0x0

    .local v24, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->passWord:[B

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    :goto_6
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    .local v25, "resposeCode":I
    const/16 v29, 0xc8

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .local v11, "entity":Lorg/apache/http/HttpEntity;
    const/16 v17, 0x0

    .local v17, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

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

    .end local v13    # "file":Ljava/io/File;
    .local v14, "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    const/16 v29, 0x100

    :try_start_5
    move/from16 v0, v29

    new-array v5, v0, [B

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

    .end local v5    # "buffer":[B
    .end local v19    # "n":I
    :catch_1
    move-exception v10

    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

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

    invoke-virtual {v10}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v17, :cond_e

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_e
    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .end local v10    # "e":Ljava/net/UnknownHostException;
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v29, v0

    goto/16 :goto_0

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

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v18    # "line":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    const-string v29, "passPointSoapClient"

    const-string v30, " Policy Update is null. Get the credentials from Credential Object."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->userName:Ljava/lang/String;

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

    :cond_12
    const-string v29, "passPointSoapClient"

    const-string v30, "It is for subscription Update"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v29, "passPointSoapClient"

    const-string v30, "Getting credentials from  Subscription Update node"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .end local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "fileDir":Ljava/io/File;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .end local v10    # "e":Ljava/io/IOException;
    .restart local v24    # "response":Lorg/apache/http/HttpResponse;
    :cond_14
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    goto/16 :goto_6

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->resIterator:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->resIterator:I

    new-instance v16, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;-><init>()V

    .local v16, "handler":Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v12

    .local v12, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v26

    .local v26, "saxParser":Ljavax/xml/parsers/SAXParser;
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;->responseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

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

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSppResponseObj:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->sessionID:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->sessionId:Ljava/lang/String;

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

    const-string v29, "passPointSoapClient"

    const-string v30, " session id does not match"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/16 v29, 0x0

    if-eqz v17, :cond_16

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_16
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v10    # "e":Ljava/io/IOException;
    :cond_17
    if-eqz v17, :cond_18

    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_18
    if-eqz v21, :cond_19

    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_19
    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto/16 :goto_9

    .end local v13    # "file":Ljava/io/File;
    .end local v20    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v21    # "outStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v20, v21

    .end local v21    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "outStream":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    goto/16 :goto_9

    .end local v5    # "buffer":[B
    .end local v12    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v16    # "handler":Lcom/android/server/wifi/hs20/WifiHs20ResponseHandler;
    .end local v19    # "n":I
    .end local v26    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .local v10, "e":Ljava/net/UnknownHostException;
    :catch_5
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    :goto_a
    :try_start_c
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    const-string v29, "passPointSoapClient"

    const-string v30, "Does not have create file permission"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v17, :cond_1a

    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_1a
    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_9

    :catch_7
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .end local v10    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v10

    .local v10, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_b
    :try_start_e
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v17, :cond_1b

    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_1b
    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_9

    :catch_9
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .end local v10    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v10

    .local v10, "e":Lorg/xml/sax/SAXException;
    :goto_c
    :try_start_10
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v17, :cond_1c

    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_1c
    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_9

    :catch_b
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    :goto_d
    if-eqz v17, :cond_1d

    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_1d
    if-eqz v20, :cond_1e

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    :cond_1e
    :goto_e
    throw v29

    :catch_c
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

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

    const/16 v29, 0x0

    goto/16 :goto_0

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
    :try_start_0
    iput p2, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->credentialId:I

    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mServerUri:Ljava/net/URL;

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverUri:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "passpoint server should use https://"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->setParams(Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;)V

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->CERT_CREDTENTIAL:I

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchKeyManFac(ILjava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->keyManagers:[Ljavax/net/ssl/KeyManager;

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mCertificationManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->fetchTrustManagerFactory(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->trustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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

    const-string v5, "passPointSoapClient"

    const-string v7, "updateMO "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x33

    .local v0, "addPPSmoSussess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

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

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    const-string v7, "UpdateIdentifier"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "tokens":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->initPPSMOObj(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v3

    .local v3, "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    array-length v5, v4

    if-le v5, v10, :cond_2

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

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifierForFqdn(Ljava/lang/String;)I

    move-result v5

    iget v7, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    if-ne v5, v7, :cond_0

    const/16 v0, 0xa

    .end local v0    # "addPPSmoSussess":I
    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :goto_1
    return v0

    .restart local v0    # "addPPSmoSussess":I
    .restart local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    iget v8, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-virtual {v5, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setUpdateIdentifier(Ljava/lang/String;I)Z

    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .restart local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_2
    const-string v5, "passPointSoapClient"

    const-string v7, "tokens length <=2 error"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_1

    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mSoapXmlHelper:Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->mgmtTree:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/hs20/WifiHs20XmlHelper;->initPPSMOObj(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v3

    .restart local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/updateNodeObj;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/updateNodeObj;->managementTreeURI:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v11, :cond_4

    const/4 v5, 0x2

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    const/4 v5, 0x1

    iput v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->domainName:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->domainName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

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

    const/16 v0, 0x33

    goto/16 :goto_1

    :cond_4
    const-string v5, "passPointSoapClient"

    const-string v7, "tokens length <=4 error"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->mDbHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addPPSMONode(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto/16 :goto_2

    .end local v3    # "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v4    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v1

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

    const/16 v0, 0x33

    goto/16 :goto_2

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

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

    const/16 v0, 0x33

    goto/16 :goto_2

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
