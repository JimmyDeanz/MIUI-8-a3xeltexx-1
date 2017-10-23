.class public Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
.super Ljava/lang/Object;
.source "WifiHs20SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;,
        Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;
    }
.end annotation


# static fields
.field static final BASE:I = 0x4e20

.field static final CMD_ESTABLISH_TLS:I = 0x4e21

.field static final CMD_EXECUTE_COMMAND:I = 0x4e25

.field static final CMD_RELEASE_TLS:I = 0x4e24

.field static final CMD_SEND_SOAP_REQUEST:I = 0x1b5e

.field static final CMD_UPDATE_MO:I = 0x4e22

.field static final CMD_VERIFY_AAA:I = 0x4e23

.field protected static final DBG:Z = true

.field private static final HOTSPOT20_CERT_ENROLLMENT_STATUS:Ljava/lang/String; = "com.SAMSUNG.ACTION_ENROLLMENT_STATUS"

.field private static final HOTSPOT20_LBTU_INTENT:Ljava/lang/String; = "android.net.wifi.HS20_SEC_LAUNCH_SP_URL"

.field private static final HOTSPOT20_REDIRECT:Ljava/lang/String; = "com.samsung.action.REDIRECT_STATUS"

.field private static final HOTSPOT_ADD_MO_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_ADD_MO"

.field static final HOTSPOT_CMD_CETU:Ljava/lang/String; = "getCertificate"

.field static final HOTSPOT_CMD_LBTU:Ljava/lang/String; = "LaunchBrowsertoURI"

.field static final HOTSPOT_CMD_NCCT:Ljava/lang/String; = "negotiateClientCertTLS"

.field private static final HOTSPOT_END_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_END_SESSION"

.field private static final HOTSPOT_EXEC_COMMAND:Ljava/lang/String; = "com.samsung.action.HOTSPOT_EXEC_COMMAND"

.field private static final HOTSPOT_START_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_START_SESSION"

.field private static final HOTSPOT_UPDATE_MO_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_UPDATE_MO"

.field private static final HS20_REDIRECT_PORT:I = 0x3039

.field private static METHOD_TYPE_OMADM:I = 0x0

.field private static METHOD_TYPE_SOAPXML:I = 0x0

.field private static final SIM_CREDENTIALS:I = 0x3

.field private static START_EXTERNAL_NOTI:Ljava/lang/String; = null

.field private static STATUS:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HS20SubscriptionManager"

.field static final TEMP_FILE:Ljava/lang/String; = "/data/misc/wifi/hs20/HotspotDebug/tmp_test.xml"

.field private static mSMHandler:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;


# instance fields
.field public ARGS_DEFINED_LENGTH:I

.field private DEFAULT_RET_VALUE:I

.field private FAILURE:I

.field private INVALID_CRED_TYPE:I

.field private INVALID_RETURN:I

.field protected RELEASE_TLS:I

.field private SOAP_SUBSCRIPTION_REQUEST_REASON:Ljava/lang/String;

.field private SUCCESS:I

.field private credentialType:I

.field private dmxmlParser:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;

.field private httpContext:Lorg/apache/http/protocol/BasicHttpContext;

.field private httpService:Lorg/apache/http/protocol/HttpService;

.field private httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

.field private mCertId:I

.field private mCmdExtras:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

.field private mCredId:I

.field private mCredType:I

.field private mMethodType:I

.field private mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

.field private mRemediation:I

.field private mServerSock:Ljava/net/ServerSocket;

.field private mSubsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mbAbort:Z

.field private moCertManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

.field private moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

.field private mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

.field private mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

.field private mstrReason:Ljava/lang/String;

.field private mstrServerUri:Ljava/lang/String;

.field private mstrSppStatus:Ljava/lang/String;

.field private registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

.field private s1:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I

    .line 60
    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I

    .line 62
    const-string v0, "com.samsung.action.startExternalNotification"

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->START_EXTERNAL_NOTI:Ljava/lang/String;

    .line 64
    const-string v0, "com.samsung.action.STATUS"

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "psm"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget v2, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    .line 110
    iput-boolean v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mbAbort:Z

    .line 112
    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;

    invoke-direct {v2}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->dmxmlParser:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;

    .line 116
    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 118
    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    .line 144
    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 146
    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->httpContext:Lorg/apache/http/protocol/BasicHttpContext;

    .line 148
    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->httpService:Lorg/apache/http/protocol/HttpService;

    .line 150
    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    .line 158
    iput v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->RELEASE_TLS:I

    .line 214
    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$1;-><init>(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)V

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mSubsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->ARGS_DEFINED_LENGTH:I

    .line 348
    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->INVALID_CRED_TYPE:I

    .line 350
    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->DEFAULT_RET_VALUE:I

    .line 352
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->SUCCESS:I

    .line 354
    iput v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->FAILURE:I

    .line 356
    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->INVALID_RETURN:I

    .line 358
    const-string v2, "HS2.0SubscriptionCreation"

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->SOAP_SUBSCRIPTION_REQUEST_REASON:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    .line 196
    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.action.HOTSPOT_EXEC_COMMAND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v2, "com.samsung.action.HOTSPOT_START_SESSION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v2, "com.samsung.action.HOTSPOT_END_SESSION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "com.samsung.action.HOTSPOT_UPDATE_MO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v2, "com.samsung.action.HOTSPOT_ADD_MO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v2, "com.SAMSUNG.ACTION_ENROLLMENT_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "com.samsung.action.REDIRECT_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v2, "HS20.Test"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mSubsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HS20SubscriptionManagerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "mSMThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 209
    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;-><init>(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mSMHandler:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;

    .line 210
    iput-object p2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .line 211
    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moCertManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCmdExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrServerUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCmdExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredId:I

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrSppStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->credentialType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->credentialType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCertId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    return p1
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I

    return v0
.end method

.method private checkSppResponse(Lcom/android/server/wifi/hs20/SppResponseObj;)V
    .locals 10
    .param p1, "obj"    # Lcom/android/server/wifi/hs20/SppResponseObj;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x1b5f

    const/16 v7, 0x1b66

    const/16 v6, 0x1b61

    const/4 v5, 0x0

    .line 793
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    .line 794
    const-string v2, "HS20SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checksppResponse: sppStatus = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "Error occurred"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 796
    :cond_0
    const-string v2, "HS20SubscriptionManager"

    const-string v3, "checksppResponse: sppStatus 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 798
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x1b65

    iput v2, v0, Landroid/os/Message;->what:I

    .line 799
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 900
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 800
    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 801
    const-string v2, "HS20SubscriptionManager"

    const-string v3, "checksppResponse: sppStatus 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v1, 0x0

    .line 803
    .local v1, "nCmd":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 804
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/execObj;->launchBrowserToURI:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 805
    const/4 v1, 0x0

    .line 806
    iput v8, v0, Landroid/os/Message;->what:I

    .line 807
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 825
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 808
    :cond_4
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 809
    const-string v2, "HS20SubscriptionManager"

    const-string v3, "checksppResponse: Enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v1, 0x1

    .line 811
    iput v8, v0, Landroid/os/Message;->what:I

    .line 812
    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 813
    :cond_5
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 814
    iput v6, v0, Landroid/os/Message;->what:I

    .line 815
    const-string v2, "HS20SubscriptionManager"

    const-string v3, "checksppResponse: ADDMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 816
    :cond_6
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 817
    iput v6, v0, Landroid/os/Message;->what:I

    .line 818
    const-string v2, "HS20SubscriptionManager"

    const-string v3, "checksppResponse: UPDATENODE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 819
    :cond_7
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/execObj;->uploadMo:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 820
    const-string v2, "HS20SubscriptionManager"

    const-string v3, "checksppResponse: UploadMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v1, 0x4

    .line 822
    iput v8, v0, Landroid/os/Message;->what:I

    .line 823
    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 826
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "nCmd":I
    :cond_8
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "Exchange complete, release TLS connection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 827
    const-string v2, "HS20SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checksppResponse: sppStatus 3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->errorCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->errorCode:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 829
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->errorCode:Ljava/lang/String;

    const-string v3, "Credentials cannot be provisioned at this time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->errorCode:Ljava/lang/String;

    const-string v3, "Provisioning cannot be completed at this time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->errorCode:Ljava/lang/String;

    const-string v3, "Remediation cannot be completed at this time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 832
    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 833
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x1b65

    iput v2, v0, Landroid/os/Message;->what:I

    .line 834
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 835
    .end local v0    # "msg":Landroid/os/Message;
    :cond_a
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->errorCode:Ljava/lang/String;

    const-string v3, "Continue to use existing certificate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 836
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 837
    .restart local v0    # "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 838
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 839
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 841
    .end local v0    # "msg":Landroid/os/Message;
    :cond_b
    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I

    if-nez v2, :cond_c

    .line 842
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 843
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x1b62

    iput v2, v0, Landroid/os/Message;->what:I

    .line 844
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 846
    .end local v0    # "msg":Landroid/os/Message;
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 847
    .restart local v0    # "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 848
    iput v9, v0, Landroid/os/Message;->arg1:I

    .line 849
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 853
    .end local v0    # "msg":Landroid/os/Message;
    :cond_d
    const-string v2, "HS20SubscriptionManager"

    const-string v3, "checksppResponse: object error code is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I

    if-nez v2, :cond_e

    .line 855
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 856
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x1b62

    iput v2, v0, Landroid/os/Message;->what:I

    .line 857
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 859
    .end local v0    # "msg":Landroid/os/Message;
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 860
    .restart local v0    # "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 861
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 862
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 865
    .end local v0    # "msg":Landroid/os/Message;
    :cond_f
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "Provisioning complete, request sppUpdateResponse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 866
    const-string v2, "HS20SubscriptionManager"

    const-string v3, "checksppResponse: sppStatus 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 868
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 869
    iput v6, v0, Landroid/os/Message;->what:I

    .line 873
    :cond_10
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 870
    :cond_11
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    .line 871
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_2

    .line 874
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "Remediation complete, request sppUpdateResponse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 875
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 876
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 877
    iput v6, v0, Landroid/os/Message;->what:I

    .line 883
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 879
    :cond_13
    const/16 v2, 0x1b5e

    iput v2, v0, Landroid/os/Message;->what:I

    .line 880
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 881
    iput v5, v0, Landroid/os/Message;->arg2:I

    goto :goto_3

    .line 884
    .end local v0    # "msg":Landroid/os/Message;
    :cond_14
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "Update complete, request sppUpdateResponse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 885
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 886
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    .line 887
    iput v6, v0, Landroid/os/Message;->what:I

    .line 893
    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 889
    :cond_15
    const/16 v2, 0x1b5e

    iput v2, v0, Landroid/os/Message;->what:I

    .line 890
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 891
    iput v5, v0, Landroid/os/Message;->arg2:I

    goto :goto_4

    .line 894
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    iget-object v2, p1, Lcom/android/server/wifi/hs20/SppResponseObj;->sppStatus:Ljava/lang/String;

    const-string v3, "No update available at this time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 895
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 896
    .restart local v0    # "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 897
    iput v9, v0, Landroid/os/Message;->arg1:I

    .line 898
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private sendOMARequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "requestReason"    # Ljava/lang/String;
    .param p2, "strURI"    # Ljava/lang/String;
    .param p3, "credential_id"    # I
    .param p4, "redirectUri"    # Ljava/lang/String;
    .param p5, "credential_type"    # I

    .prologue
    .line 518
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->START_EXTERNAL_NOTI:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "Subscription_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v2, "Server_uri"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v2, "Credential_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string v2, "Redirect_uri"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v2, "Credential_type"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->SOAP_SUBSCRIPTION_REQUEST_REASON:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    if-nez v2, :cond_1

    .line 526
    const-string v2, "sim"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    const-string v2, "fqdn"

    invoke-virtual {v0, p3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getFqdn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v2, "HS20SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendOMARequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    return-void

    .line 528
    .end local v0    # "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    :cond_1
    const-string v2, "sim"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    const-string v2, "icon_hash"

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v2, "friendly_name"

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-virtual {v3}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getFriendlyNames()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method establishTLS(Ljava/lang/String;IIILjava/lang/String;I)Z
    .locals 11
    .param p1, "strOSU"    # Ljava/lang/String;
    .param p2, "nMethodType"    # I
    .param p3, "credentialType"    # I
    .param p4, "nRemediation"    # I
    .param p5, "requestReason"    # Ljava/lang/String;
    .param p6, "credential_id"    # I

    .prologue
    .line 469
    const/4 v7, 0x1

    .line 470
    .local v7, "bRet":Z
    iput p2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    .line 471
    iput p3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    .line 472
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrServerUri:Ljava/lang/String;

    .line 473
    iput p4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I

    .line 474
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrReason:Ljava/lang/String;

    .line 475
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredId:I

    .line 476
    const-string v1, "HS20SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "establishTLS, Server:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MethodType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", credType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Remediation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestReason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", credId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    sget v2, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I

    if-ne v1, v2, :cond_0

    .line 480
    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredId:I

    const-string v5, "http://127.0.0.1:12345"

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->sendOMARequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 513
    :goto_0
    return v7

    .line 482
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    sget v2, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I

    if-ne v1, v2, :cond_5

    .line 483
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 484
    .local v8, "msg":Landroid/os/Message;
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;-><init>()V

    .line 485
    .local v10, "validationParam":Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrServerUri:Ljava/lang/String;

    iput-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverUri:Ljava/lang/String;

    .line 486
    if-nez p4, :cond_2

    .line 487
    const-string v1, "OSU"

    iput-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    .line 488
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    if-nez v1, :cond_1

    .line 489
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->sim:Z

    .line 501
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredId:I

    invoke-virtual {v1, v10, v2, p3}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->setHS20TLSParam(Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;II)Z

    move-result v9

    .line 503
    .local v9, "setParam":Z
    if-eqz v9, :cond_4

    .line 504
    const/16 v1, 0x1b5e

    iput v1, v8, Landroid/os/Message;->what:I

    .line 505
    const/4 v1, 0x0

    iput v1, v8, Landroid/os/Message;->arg1:I

    .line 506
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v1, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 491
    .end local v9    # "setParam":Z
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->sim:Z

    .line 492
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-virtual {v1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getFriendlyNames()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->friendlyNames:Ljava/util/HashMap;

    .line 493
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->iconPath:Ljava/lang/String;

    goto :goto_1

    .line 496
    :cond_2
    const-string v1, "policy"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    const-string v1, "POLICY"

    iput-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    goto :goto_1

    .line 499
    :cond_3
    const-string v1, "REMEDIATION"

    iput-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;->serverType:Ljava/lang/String;

    goto :goto_1

    .line 508
    .restart local v9    # "setParam":Z
    :cond_4
    const/16 v1, 0x1b65

    iput v1, v8, Landroid/os/Message;->what:I

    .line 509
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v1, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 512
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "setParam":Z
    .end local v10    # "validationParam":Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method executeCommand(II)I
    .locals 20
    .param p1, "nCommand"    # I
    .param p2, "flag"    # I

    .prologue
    .line 542
    const/4 v15, 0x0

    .line 543
    .local v15, "strArgs":Ljava/lang/String;
    const-string v17, "HS20SubscriptionManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "executeCommand: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    move/from16 v17, v0

    sget v18, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCmdExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "execData"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 546
    const-string v17, "HS20SubscriptionManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "executeCommand: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    if-nez p1, :cond_4

    .line 549
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.net.wifi.HS20_SEC_LAUNCH_SP_URL"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    move/from16 v17, v0

    sget v18, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 551
    const-string v17, "HS20SubscriptionManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/execObj;->launchBrowserToURI:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v17, "osu_url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/hs20/execObj;->launchBrowserToURI:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->INVALID_CRED_TYPE:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 563
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    .line 668
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    const/16 v17, 0x0

    return v17

    .line 554
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v17, "&amp;"

    const-string v18, "&"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 555
    const-string v17, "RedirectURI=0"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 556
    const-string v17, "RedirectURI=0"

    const-string v18, "RedirectURI=http://127.0.0.1:12345"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 558
    :cond_3
    const-string v17, "osu_url"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v17, "HS20SubscriptionManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 565
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    move/from16 v17, v0

    sget v18, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 567
    const/4 v2, 0x1

    .line 568
    .local v2, "bFlag":Z
    if-nez p2, :cond_5

    .line 569
    const/4 v2, 0x0

    .line 570
    :cond_5
    new-instance v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v5}, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;-><init>()V

    .line 571
    .local v5, "enrollParams":Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    .line 572
    iput-boolean v2, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestPWD:Ljava/lang/String;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestUseriD:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestUserID:Ljava/lang/String;

    .line 575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->credentialID:I

    .line 576
    iget-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 577
    iget-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\n"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "\r"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    .line 581
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moCertManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->performEnrollment(Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;)Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    .line 583
    .local v7, "errorCode":I
    :goto_2
    const-string v17, "HS20SubscriptionManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 585
    .local v11, "msg":Landroid/os/Message;
    const/16 v17, 0x1b5e

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 586
    const/4 v13, 0x0

    .line 587
    .local v13, "nStatus":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_8

    .line 588
    const/4 v13, 0x1

    .line 592
    :goto_3
    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 593
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->arg2:I

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 595
    .end local v7    # "errorCode":I
    .end local v11    # "msg":Landroid/os/Message;
    .end local v13    # "nStatus":I
    :catch_0
    move-exception v4

    .line 596
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 582
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v7, -0x1

    goto :goto_2

    .line 590
    .restart local v7    # "errorCode":I
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v13    # "nStatus":I
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 599
    .end local v2    # "bFlag":Z
    .end local v5    # "enrollParams":Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    .end local v7    # "errorCode":I
    .end local v11    # "msg":Landroid/os/Message;
    .end local v13    # "nStatus":I
    :cond_9
    const/4 v2, 0x1

    .line 600
    .restart local v2    # "bFlag":Z
    if-nez p2, :cond_a

    .line 601
    const/4 v2, 0x0

    .line 603
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCmdExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "execData"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 604
    .local v16, "xmlData":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->parseXML(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    move-result-object v10

    .line 605
    .local v10, "m_ObjSppUserInput":Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
    if-eqz v10, :cond_e

    .line 606
    new-instance v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v5}, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;-><init>()V

    .line 607
    .restart local v5    # "enrollParams":Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    .line 608
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestUseriD:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestUserID:Ljava/lang/String;

    .line 609
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollDigestPWD:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->digestPWD:Ljava/lang/String;

    .line 610
    iput-boolean v2, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->credentialID:I

    .line 612
    iget-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 613
    iget-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\n"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "\r"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->serverUri:Ljava/lang/String;

    .line 616
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moCertManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->performEnrollment(Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;)Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    .line 619
    .local v6, "erroCode":I
    :goto_4
    new-instance v14, Landroid/content/Intent;

    sget-object v17, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v14, "newintent":Landroid/content/Intent;
    if-lez v6, :cond_d

    .line 621
    const-string v17, "Status"

    const-string v18, "Ok"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string v17, "Error Code"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 634
    .end local v5    # "enrollParams":Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    .end local v6    # "erroCode":I
    .end local v10    # "m_ObjSppUserInput":Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
    .end local v14    # "newintent":Landroid/content/Intent;
    .end local v16    # "xmlData":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 635
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v14, Landroid/content/Intent;

    sget-object v17, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .restart local v14    # "newintent":Landroid/content/Intent;
    const-string v17, "Status"

    const-string v18, "Failure"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string v17, "Error Code"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->DEFAULT_RET_VALUE:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 639
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 617
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v14    # "newintent":Landroid/content/Intent;
    .restart local v5    # "enrollParams":Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    .restart local v10    # "m_ObjSppUserInput":Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
    .restart local v16    # "xmlData":Ljava/lang/String;
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->DEFAULT_RET_VALUE:I

    goto :goto_4

    .line 624
    .restart local v6    # "erroCode":I
    .restart local v14    # "newintent":Landroid/content/Intent;
    :cond_d
    const-string v17, "Status"

    const-string v18, "Failure"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v17, "Error Code"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 629
    .end local v5    # "enrollParams":Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;
    .end local v6    # "erroCode":I
    .end local v14    # "newintent":Landroid/content/Intent;
    :cond_e
    new-instance v14, Landroid/content/Intent;

    sget-object v17, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->STATUS:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .restart local v14    # "newintent":Landroid/content/Intent;
    const-string v17, "Status"

    const-string v18, "Failure"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v17, "Error Code"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->DEFAULT_RET_VALUE:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 642
    .end local v2    # "bFlag":Z
    .end local v10    # "m_ObjSppUserInput":Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
    .end local v14    # "newintent":Landroid/content/Intent;
    .end local v16    # "xmlData":Ljava/lang/String;
    :cond_f
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->INVALID_CRED_TYPE:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 644
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    .line 645
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    move/from16 v17, v0

    sget v18, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 646
    new-instance v3, Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    invoke-direct {v3}, Lcom/android/server/wifi/hs20/useClientCertTLSObj;-><init>()V

    .line 647
    .local v3, "clientcCrtTls":Lcom/android/server/wifi/hs20/useClientCertTLSObj;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->acceptMfgCerts:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->acceptMfgCerts:Ljava/lang/String;

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->acceptProviderCerts:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->acceptProviderCerts:Ljava/lang/String;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/SppResponseObj;->exec:Lcom/android/server/wifi/hs20/execObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/server/wifi/hs20/useClientCertTLSObj;->providerIssuerName:Ljava/util/ArrayList;

    .line 651
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    move-object/from16 v17, v0

    new-instance v18, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrServerUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->renegotiateTLSUsingCert(Lcom/android/server/wifi/hs20/useClientCertTLSObj;Ljava/net/URI;)I

    move-result v12

    .line 653
    .local v12, "nRet":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 654
    .restart local v11    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->SUCCESS:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v12, v0, :cond_11

    .line 655
    const/16 v17, 0x1b5e

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 656
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 663
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "nRet":I
    :catch_2
    move-exception v8

    .line 664
    .local v8, "ex":Ljava/net/URISyntaxException;
    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 659
    .end local v8    # "ex":Ljava/net/URISyntaxException;
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v12    # "nRet":I
    :cond_11
    const/16 v17, 0x1b5e

    :try_start_4
    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->what:I

    .line 660
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mSMHandler:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$SubscriptionManagerHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method parseXML(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
    .locals 11
    .param p1, "strBuffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    const/4 v7, 0x0

    .line 904
    .local v7, "m_ObjSppUserInput":Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;
    const/4 v5, 0x0

    .line 905
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 906
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    .line 908
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/misc/wifi/hs20/HotspotDebug/tmp_test.xml"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 910
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 912
    :cond_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 913
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 914
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 915
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->dmxmlParser:Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;

    invoke-virtual {v8, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser;->parse(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;

    move-result-object v7

    .line 916
    if-eqz v7, :cond_3

    .line 917
    const-string v8, "HS20SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "guess it aint null lets check what null: certificate obj"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-string v8, "HS20SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enrollment uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v10, v10, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v8, "HS20SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parsed the m_ObjSppUserInput test:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wifi/hs20/WifiHs20DMXmlParser$SppUserInputResponse;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    iget-object v10, v10, Lcom/android/server/wifi/hs20/getCertificateObj;->enrollmentServerURI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 931
    :goto_0
    if-eqz v1, :cond_1

    .line 932
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 933
    :cond_1
    if-eqz v6, :cond_9

    .line 934
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 936
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_2
    :goto_1
    return-object v7

    .line 923
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :cond_3
    :try_start_4
    const-string v8, "HS20SubscriptionManager"

    const-string v9, "m_ObjSppUserInput is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 924
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 925
    .end local v6    # "fw":Ljava/io/FileWriter;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 931
    if-eqz v0, :cond_4

    .line 932
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 933
    :cond_4
    if-eqz v5, :cond_2

    .line 934
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    .line 926
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 927
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 931
    if-eqz v0, :cond_5

    .line 932
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 933
    :cond_5
    if-eqz v5, :cond_2

    .line 934
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    .line 928
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 929
    .local v2, "e":Ljava/lang/SecurityException;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 931
    if-eqz v0, :cond_6

    .line 932
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 933
    :cond_6
    if-eqz v5, :cond_2

    .line 934
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    .line 931
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v0, :cond_7

    .line 932
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 933
    :cond_7
    if-eqz v5, :cond_8

    .line 934
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    :cond_8
    throw v8

    .line 931
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_5

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_5

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_3
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_5

    .line 928
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_4

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 926
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 924
    :catch_9
    move-exception v2

    goto :goto_2

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_b
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :cond_9
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method releaseTLS(I)V
    .locals 4
    .param p1, "revert"    # I

    .prologue
    const/4 v3, 0x0

    .line 940
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    sget v2, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I

    if-ne v1, v2, :cond_0

    .line 941
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    if-eqz v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->disconnect(Ljava/net/URI;Z)V

    .line 944
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 945
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1b6d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 946
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 947
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 948
    sget v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_OMADM:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    .line 949
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrSppStatus:Ljava/lang/String;

    .line 950
    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 951
    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    .line 952
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->INVALID_CRED_TYPE:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    .line 953
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrServerUri:Ljava/lang/String;

    .line 954
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mRemediation:I

    .line 955
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mstrReason:Ljava/lang/String;

    .line 956
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->INVALID_RETURN:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCertId:I

    .line 957
    return-void
.end method

.method sendSoapRequest(ILjava/lang/String;I)Z
    .locals 11
    .param p1, "nType"    # I
    .param p2, "requestReason"    # Ljava/lang/String;
    .param p3, "Status"    # I

    .prologue
    const/4 v10, 0x1

    .line 718
    const/4 v9, 0x0

    .line 719
    .local v9, "objSppResp":Lcom/android/server/wifi/hs20/SppResponseObj;
    const/4 v1, 0x0

    .line 720
    .local v1, "strType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 721
    .local v8, "nUploadMO":I
    if-nez p1, :cond_1

    .line 722
    const-string v1, "sppPostDevData"

    .line 723
    const-string v0, "MO upload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const/4 v8, 0x1

    .line 732
    :cond_0
    :goto_0
    const/16 v0, 0x32

    if-ne p3, v0, :cond_3

    .line 733
    const-string v3, "OK"

    .line 734
    .local v3, "strStatus":Ljava/lang/String;
    const/4 v4, 0x0

    .line 772
    .local v4, "strErrCode":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    const-string v5, "http://127.0.0.1:12345"

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->sendSOAPRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hs20/SppResponseObj;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 781
    :goto_2
    if-eqz v9, :cond_5

    .line 782
    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->checkSppResponse(Lcom/android/server/wifi/hs20/SppResponseObj;)V

    .line 789
    :goto_3
    return v10

    .line 725
    .end local v3    # "strStatus":Ljava/lang/String;
    .end local v4    # "strErrCode":Ljava/lang/String;
    :cond_1
    if-ne p1, v10, :cond_2

    .line 726
    const-string v1, "sppUpdateResponse"

    goto :goto_0

    .line 727
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 728
    const-string v1, "sppPostDevData"

    .line 729
    const/4 v8, 0x1

    goto :goto_0

    .line 735
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->INVALID_RETURN:I

    if-ne p3, v0, :cond_4

    .line 736
    const/4 v3, 0x0

    .line 737
    .restart local v3    # "strStatus":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "strErrCode":Ljava/lang/String;
    goto :goto_1

    .line 739
    .end local v3    # "strStatus":Ljava/lang/String;
    .end local v4    # "strErrCode":Ljava/lang/String;
    :cond_4
    const-string v3, "Error occurred"

    .line 740
    .restart local v3    # "strStatus":Ljava/lang/String;
    const-string v4, "Error Code"

    .line 741
    .restart local v4    # "strErrCode":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 743
    :pswitch_0
    const-string v4, "MO addition or update failed"

    .line 744
    goto :goto_1

    .line 746
    :pswitch_1
    const-string v4, "Command failed"

    .line 747
    goto :goto_1

    .line 749
    :pswitch_2
    const-string v4, "Permission denied"

    .line 750
    goto :goto_1

    .line 752
    :pswitch_3
    const-string v4, "Device full"

    .line 753
    goto :goto_1

    .line 755
    :pswitch_4
    const-string v4, "Bad management tree URI"

    .line 756
    goto :goto_1

    .line 758
    :pswitch_5
    const-string v4, "Requested entity too large"

    .line 759
    goto :goto_1

    .line 761
    :pswitch_6
    const-string v4, "Command not allowed"

    .line 762
    goto :goto_1

    .line 764
    :pswitch_7
    const-string v4, "Command not executed due to user"

    .line 765
    goto :goto_1

    .line 767
    :pswitch_8
    const-string v4, "Not found"

    goto :goto_1

    .line 774
    :catch_0
    move-exception v6

    .line 775
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 776
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v6

    .line 777
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 778
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 779
    .local v6, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v6}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    .line 784
    .end local v6    # "e":Ljava/net/URISyntaxException;
    :cond_5
    const-string v0, "HS20SubscriptionManager"

    const-string v2, "Response is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 786
    .local v7, "msg":Landroid/os/Message;
    const/16 v0, 0x1b65

    iput v0, v7, Landroid/os/Message;->what:I

    .line 787
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_3

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected declared-synchronized setAbort(Z)V
    .locals 1
    .param p1, "bAbort"    # Z

    .prologue
    .line 992
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mbAbort:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    monitor-exit p0

    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setOSUProvider(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    .locals 0
    .param p1, "selectedSP"    # Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 997
    return-void
.end method

.method updateMO(I)V
    .locals 6
    .param p1, "subscription_flag"    # I

    .prologue
    .line 960
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mMethodType:I

    sget v4, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->METHOD_TYPE_SOAPXML:I

    if-ne v3, v4, :cond_1

    .line 961
    const/16 v2, 0x33

    .line 962
    .local v2, "nRet":I
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-boolean v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->noMoUpdate:Z

    if-eqz v3, :cond_2

    .line 963
    const/16 v2, 0x32

    .line 983
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 984
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x1b5e

    iput v3, v1, Landroid/os/Message;->what:I

    .line 985
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 986
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 988
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "nRet":I
    :cond_1
    return-void

    .line 964
    .restart local v2    # "nRet":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    if-eqz v3, :cond_0

    .line 965
    const-string v3, "HS20SubscriptionManager"

    const-string v4, "updateMO: bjSppRespons not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 967
    const-string v3, "HS20SubscriptionManager"

    const-string v4, "updateMO: aadMo not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/SppResponseObj;->addMo:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->addMO(Ljava/util/ArrayList;I)I

    move-result v2

    .line 973
    :cond_3
    :goto_1
    const/16 v3, 0x32

    if-ne v2, v3, :cond_0

    .line 974
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 975
    const-string v3, "HS20SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCertId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCertId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    if-eqz v3, :cond_0

    .line 977
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 978
    .local v0, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mCredDetails:Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredDetails(Lcom/android/server/wifi/hs20/WifiHs20CredDetails;)Z

    goto :goto_0

    .line 969
    .end local v0    # "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 970
    const-string v3, "HS20SubscriptionManager"

    const-string v4, "updateMO: updateMo not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moSoapClient:Lcom/android/server/wifi/hs20/WifiHs20SoapClient;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSppResponse:Lcom/android/server/wifi/hs20/SppResponseObj;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/SppResponseObj;->updateNode:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wifi/hs20/WifiHs20SoapClient;->updateMO(Ljava/util/ArrayList;I)I

    move-result v2

    goto :goto_1
.end method

.method verifyAAATrustRoot()Z
    .locals 6

    .prologue
    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, "bRet":Z
    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 674
    .local v2, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    if-eqz v4, :cond_0

    .line 675
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 677
    .local v0, "AAAList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moCertManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->retrieveAAATrustRoot(Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 682
    .end local v0    # "AAAList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :cond_0
    :goto_0
    return v1

    .line 678
    .restart local v0    # "AAAList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :catch_0
    move-exception v3

    .line 679
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method verifyPolicyTrustRoot()Z
    .locals 7

    .prologue
    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "bRet":Z
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 688
    .local v1, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->credentialType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 689
    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-result-object v4

    .line 691
    .local v4, "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v3, "policyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;>;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moCertManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->retrievePolicyTrustRoot(Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 698
    .end local v3    # "policyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;>;"
    .end local v4    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :cond_1
    :goto_0
    return v0

    .line 694
    .restart local v4    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method verifyRemTrustRoot()Z
    .locals 7

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "bRet":Z
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 704
    .local v1, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mobjSelectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->credentialType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 705
    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v4

    .line 707
    .local v4, "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v3, "subscriptionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;>;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->moCertManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->retrieveRemTrustRoot(Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 714
    .end local v3    # "subscriptionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;>;"
    .end local v4    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :cond_1
    :goto_0
    return v0

    .line 710
    .restart local v4    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :catch_0
    move-exception v2

    .line 711
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public verifyTrustRoots(I)Z
    .locals 5
    .param p1, "credential_type"    # I

    .prologue
    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, "ret":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->verifyAAATrustRoot()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->verifyPolicyTrustRoot()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->verifyRemTrustRoot()Z

    move-result v1

    .line 436
    .local v1, "rem":Z
    if-nez v1, :cond_1

    .line 437
    const-string v3, "HS20SubscriptionManager"

    const-string v4, "verifyTrustRoots: RemediationsServer\'s Trust root verification failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    const/4 v2, 0x1

    .line 444
    .end local v1    # "rem":Z
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 445
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x1b66

    iput v3, v0, Landroid/os/Message;->what:I

    .line 446
    if-eqz v2, :cond_4

    .line 447
    const/4 v3, 0x0

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 451
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mPSM:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 452
    return v2

    .line 441
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const-string v3, "HS20SubscriptionManager"

    const-string v4, "verifyTrustRoots: policyServer\'s Trust root verification failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :cond_3
    const-string v3, "HS20SubscriptionManager"

    const-string v4, "verifyTrustRoots: AAAServer\'s Trust root verification failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
