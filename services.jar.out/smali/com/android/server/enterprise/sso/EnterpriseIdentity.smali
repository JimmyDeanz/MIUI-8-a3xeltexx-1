.class public Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    }
.end annotation


# static fields
.field private static final AUTH_CONF_DATA_FILENAME:Ljava/lang/String; = "authconfig.xml"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final GENERIC_SSO_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO"

.field private static final IS_CONFIGURED_BY_MDM:Ljava/lang/String; = "isConfiguredByMDM"

.field private static final KEYWORD_AUTHPROVIDER:Ljava/lang/String; = "authenticationprovider"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KNOXSSO_USERX_SSOCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NETWORK_AUTH_FORCE_STATE:Ljava/lang/String; = "network_auth_force_state"

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "EnterpriseIdentity"

.field private static final USERAUTHENTICATION:I = 0x4

.field private static final USERX_APPLICATION_DIR:Ljava/lang/String; = "/data/user/"

.field private static authenticationConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

.field private genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string/jumbo v0, "genericsso_unenroll_ad_authenticator"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;

    .line 237
    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 238
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    .line 239
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    .line 240
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    .line 241
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->registerPersonaStateObserver()V

    .line 242
    return-void
.end method

.method private _setAuthenticationConfig(ILcom/sec/enterprise/identity/AuthenticationConfig;)I
    .locals 15
    .param p1, "userId"    # I
    .param p2, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 1260
    const/4 v7, 0x0

    .line 1261
    .local v7, "isRegistered":Z
    const/4 v4, 0x0

    .line 1262
    .local v4, "enrolledEnterpriseIdAuthenticator":Ljava/lang/String;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v1

    .line 1263
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 1265
    .local v5, "enterpriseIdAuthenticator":Lorg/w3c/dom/Node;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    .line 1266
    iget-object v2, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 1267
    .local v2, "doc":Lorg/w3c/dom/Document;
    const/4 v9, 0x0

    .line 1268
    .local v9, "newSolution":Lorg/w3c/dom/Element;
    if-nez v5, :cond_9

    .line 1269
    const-string v12, "authenticationprovider"

    invoke-interface {v2, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1270
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1271
    const-string/jumbo v12, "servicepackagename"

    invoke-interface {v9, v12, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1275
    const-string/jumbo v12, "servicepackagesignature"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1281
    const-string v12, "EnterpriseIdentity"

    const-string v13, "In _setAuthenticationConfig: Incorrect configuration. Both hide and enforce set to true."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const-string/jumbo v12, "hideEnterpriseIDLock"

    const-string/jumbo v13, "false"

    invoke-interface {v9, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :goto_0
    const-string/jumbo v13, "forceEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "true"

    :goto_1
    invoke-interface {v9, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v13, "enforceRemoteAuthAlways"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v12, "true"

    :goto_2
    invoke-interface {v9, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string/jumbo v13, "isConfiguredByMDM"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string/jumbo v12, "true"

    :goto_3
    invoke-interface {v9, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In _setAuthenticationConfig Authenticator:   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "servicepackagename"

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In _setAuthenticationConfig FORCE_ENTERPRISE_IDENTITY_LOCK:   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "forceEnterpriseIDLock"

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In _setAuthenticationConfig HIDE_ENTERPRISE_IDENTITY_LOCK:   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "hideEnterpriseIDLock"

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In _setAuthenticationConfig ENFORCE_REMOTEALWAYS:   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "enforceRemoteAuthAlways"

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In _setAuthenticationConfig IS_CONFIGURED_BY_MDM:  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "isConfiguredByMDM"

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v11

    .line 1349
    .local v11, "requestConfig":Landroid/os/Bundle;
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 1350
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1353
    .local v8, "key":Ljava/lang/String;
    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Key = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    sget-object v12, Landroid/app/enterprise/sso/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v12, Landroid/app/enterprise/sso/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v12, Landroid/app/enterprise/sso/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1359
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1360
    const/4 v10, 0x0

    .line 1362
    .local v10, "node":Lorg/w3c/dom/Element;
    invoke-direct {p0, v5, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .end local v10    # "node":Lorg/w3c/dom/Element;
    check-cast v10, Lorg/w3c/dom/Element;

    .line 1364
    .restart local v10    # "node":Lorg/w3c/dom/Element;
    if-nez v10, :cond_3

    .line 1365
    iget-object v12, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v12, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 1366
    if-nez v7, :cond_11

    .line 1367
    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1371
    :cond_3
    :goto_6
    const-string/jumbo v12, "value"

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_2

    .line 1375
    const-string v12, "EnterpriseIdentity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In setAuthenticationConfig:  <"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "> parameter for - packageName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is added"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1390
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "enterpriseIdAuthenticator":Lorg/w3c/dom/Node;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "newSolution":Lorg/w3c/dom/Element;
    .end local v10    # "node":Lorg/w3c/dom/Element;
    .end local v11    # "requestConfig":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 1391
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1393
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7
    const/4 v12, 0x0

    return v12

    .line 1286
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "enterpriseIdAuthenticator":Lorg/w3c/dom/Node;
    .restart local v9    # "newSolution":Lorg/w3c/dom/Element;
    :cond_4
    :try_start_1
    const-string/jumbo v13, "hideEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "true"

    :goto_8
    invoke-interface {v9, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v12, "false"

    goto :goto_8

    .line 1290
    :cond_6
    const-string/jumbo v12, "false"

    goto/16 :goto_1

    .line 1294
    :cond_7
    const-string/jumbo v12, "false"

    goto/16 :goto_2

    .line 1297
    :cond_8
    const-string/jumbo v12, "false"

    goto/16 :goto_3

    .line 1311
    :cond_9
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeAll(Lorg/w3c/dom/Node;)V

    .line 1312
    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 1313
    .local v3, "e":Lorg/w3c/dom/Element;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 1314
    const-string/jumbo v12, "servicepackagename"

    invoke-interface {v3, v12, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 1318
    const-string/jumbo v12, "servicepackagesignature"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1323
    const-string v12, "EnterpriseIdentity"

    const-string v13, "In setAuthenticationConfig when node not null: Incorrect configuration. Both hide and enforce set to true."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-string/jumbo v12, "hideEnterpriseIDLock"

    const-string/jumbo v13, "false"

    invoke-interface {v3, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :goto_9
    const-string/jumbo v13, "forceEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v12

    if-eqz v12, :cond_e

    const-string/jumbo v12, "true"

    :goto_a
    invoke-interface {v3, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string/jumbo v13, "enforceRemoteAuthAlways"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v12

    if-eqz v12, :cond_f

    const-string/jumbo v12, "true"

    :goto_b
    invoke-interface {v3, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const-string/jumbo v13, "isConfiguredByMDM"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v12

    if-eqz v12, :cond_10

    const-string/jumbo v12, "true"

    :goto_c
    invoke-interface {v3, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 1328
    :cond_c
    const-string/jumbo v13, "hideEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v12

    if-eqz v12, :cond_d

    const-string/jumbo v12, "true"

    :goto_d
    invoke-interface {v3, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    const-string/jumbo v12, "false"

    goto :goto_d

    .line 1332
    :cond_e
    const-string/jumbo v12, "false"

    goto :goto_a

    .line 1336
    :cond_f
    const-string/jumbo v12, "false"

    goto :goto_b

    .line 1338
    :cond_10
    const-string/jumbo v12, "false"

    goto :goto_c

    .line 1369
    .end local v3    # "e":Lorg/w3c/dom/Element;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v10    # "node":Lorg/w3c/dom/Element;
    .restart local v11    # "requestConfig":Landroid/os/Bundle;
    :cond_11
    invoke-interface {v5, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_6

    .line 1383
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "node":Lorg/w3c/dom/Element;
    :cond_12
    if-nez v7, :cond_13

    .line 1384
    iget-object v12, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v12}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1385
    :cond_13
    iget-object v12, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v12}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Element;->normalize()V

    .line 1386
    const/16 v12, 0x64

    move/from16 v0, p1

    if-lt v0, v12, :cond_14

    .line 1387
    move/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    goto/16 :goto_7

    .line 1389
    :cond_14
    move/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method static synthetic access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    .prologue
    .line 109
    sput-object p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isGenericSSOEnrolled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Landroid/content/pm/PersonaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    return-void
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Lcom/android/server/enterprise/sso/GenericSSOService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeFileAndCacheEntry(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isEnterpriseSSOEnrolled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 798
    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;-><init>(I)V

    .line 799
    .local v0, "connection":Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;
    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 800
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 801
    const-string v4, "EnterpriseIdentity"

    const-string v5, "In bindToEnterpriseIdAuthenticator: The EnterpriseIdService is already bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v4

    .line 842
    :goto_0
    return-object v4

    .line 807
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".genericssoconnection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 812
    const-string v4, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In bindToEnterpriseIdAuthenticator: action is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 815
    :try_start_1
    const-string v4, "EnterpriseIdentity"

    const-string v6, "In bindToEnterpriseIdAuthenticator: Binding to the service..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v0, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 819
    :try_start_2
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 820
    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x4e20

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 823
    .local v1, "countDownTimeout":Z
    if-nez v1, :cond_3

    .line 824
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 825
    const-string v4, "EnterpriseIdentity"

    const-string v6, "In bindToEnterpriseIdAuthenticator: CoutnDownLatch return false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 835
    .end local v1    # "countDownTimeout":Z
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 836
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    goto :goto_0

    .line 828
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v4, "EnterpriseIdentity"

    const-string v6, "In bindToEnterpriseIdAuthenticator: InterruptedException"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 835
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 837
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 838
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v4, "EnterpriseIdentity"

    const-string v5, "In bindToEnterpriseIdAuthenticator: NullPointerException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 833
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_7
    const-string v4, "EnterpriseIdentity"

    const-string v6, "In bindToEnterpriseIdAuthenticator: Fail to bind to sso service"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 839
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 840
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseIdentity"

    const-string v5, "In bindToEnterpriseIdAuthenticator: Exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 921
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 943
    :goto_0
    return-object v5

    .line 925
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 926
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 928
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 929
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 931
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 934
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 935
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_4
    move-object v5, v6

    .line 937
    goto :goto_0

    .line 938
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "EnterpriseIdentity"

    const-string v7, "In existedNode: NullPointerException"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v5, v6

    .line 943
    goto :goto_0

    .line 940
    :catch_1
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseIdentity"

    const-string v7, "In existedNode: Exception"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "attirbuteName"    # Ljava/lang/String;

    .prologue
    .line 906
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 908
    :cond_0
    const/4 v0, 0x0

    .line 909
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private getAuthConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "authconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 706
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    .line 708
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    return-object v1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In getAuthConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 880
    if-nez p1, :cond_1

    move-object v4, v5

    .line 898
    :cond_0
    :goto_0
    return-object v4

    .line 883
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 884
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 887
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 888
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 889
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 886
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 893
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "EnterpriseIdentity"

    const-string v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v4, v5

    .line 898
    goto :goto_0

    .line 895
    :catch_1
    move-exception v1

    .line 896
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseIdentity"

    const-string v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 852
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v4, v5

    .line 871
    :cond_1
    :goto_0
    return-object v4

    .line 856
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 857
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 859
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 860
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 862
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 858
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 866
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 867
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "EnterpriseIdentity"

    const-string v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v4, v5

    .line 871
    goto :goto_0

    .line 868
    :catch_1
    move-exception v1

    .line 869
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseIdentity"

    const-string v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v1

    .line 642
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 644
    .local v2, "enterpriseIdAuthenticator":Lorg/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 645
    const-string v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In getEnterpriseIdAuthenticationConfig: enterpriseId authenticator is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v5, 0x0

    .line 658
    :cond_0
    return-object v5

    .line 648
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 650
    .local v5, "ret":Landroid/os/Bundle;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 651
    .local v4, "list":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 652
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 653
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 651
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 655
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 538
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

    if-nez v2, :cond_0

    .line 539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 540
    .local v0, "token":J
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "EnterpriseIdentity"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 541
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 542
    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;-><init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

    .line 543
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 545
    .end local v0    # "token":J
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$GenericSSOHandler;

    return-object v2
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 610
    const/4 v8, 0x0

    .line 611
    .local v8, "pkgCert":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 613
    .local v12, "token":J
    :try_start_0
    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 614
    const-string v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In getPackageCertForPkgname: User id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v6

    .line 617
    .local v6, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v14, 0x40

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v6, v0, v14, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 619
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v9, :cond_1

    .line 620
    const-string v14, "EnterpriseIdentity"

    const-string v15, "In getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    const/4 v14, 0x0

    .line 635
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 637
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v14

    .line 623
    .restart local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 624
    .local v11, "signs":[Landroid/content/pm/Signature;
    move-object v2, v11

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v10, v2, v4

    .line 625
    .local v10, "sign":Landroid/content/pm/Signature;
    if-eqz v10, :cond_3

    .line 626
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 635
    .end local v10    # "sign":Landroid/content/pm/Signature;
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "signs":[Landroid/content/pm/Signature;
    :goto_2
    move-object v14, v8

    .line 637
    goto :goto_0

    .line 624
    .restart local v2    # "arr$":[Landroid/content/pm/Signature;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "sign":Landroid/content/pm/Signature;
    .restart local v11    # "signs":[Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 630
    .end local v2    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "sign":Landroid/content/pm/Signature;
    .end local v11    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v7

    .line 631
    .local v7, "npe":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v14, "EnterpriseIdentity"

    const-string v15, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 632
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 633
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v14, "EnterpriseIdentity"

    const-string v15, "In getPackageCertForPkgname: Exception"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 635
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method private getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .locals 3
    .param p1, "personaID"    # I

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 552
    .local v0, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    return-object v1
.end method

.method private getSSOPolicy()Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .locals 5

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 228
    .local v2, "ssoPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    :try_start_0
    const-string/jumbo v3, "enterprise_user_space_sso_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-object v2

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseIdentity"

    const-string v4, "Exception in getSSOService"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;

    if-nez v1, :cond_0

    .line 216
    :try_start_0
    const-string/jumbo v1, "genericssoservice"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService;

    iput-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->genericSSOService:Lcom/android/server/enterprise/sso/GenericSSOService;

    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseIdentity"

    const-string v2, "Exception in getSSOService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserAuthenticationInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1415
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserId()I
    .locals 5

    .prologue
    .line 719
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 720
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 721
    .local v1, "userId":I
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 722
    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getUserId: The uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    return v1
.end method

.method private initAuthenticationConfigDoc(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 663
    const/4 v6, 0x0

    .line 664
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, "filepath":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 667
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 669
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 671
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 672
    :cond_0
    const-string v8, "EnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initAuthenticationConfigDoc: ssoconfig.xml doesn\'t exist for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", an empty config file is created"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 677
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v8, "configuration"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 678
    .local v5, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 679
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 680
    new-instance v8, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v8, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    .line 690
    .end local v5    # "root":Lorg/w3c/dom/Element;
    :goto_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 691
    const-string v8, "EnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is loaded with auth details for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :cond_1
    :goto_1
    return-void

    .line 683
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 684
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 685
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 686
    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v9, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 694
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v3

    .line 695
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    const-string v8, "EnterpriseIdentity"

    const-string v9, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 696
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 697
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    const-string v8, "EnterpriseIdentity"

    const-string v9, "In initAuthenticationConfigDoc: ParserConfigurationException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 698
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v3

    .line 699
    .local v3, "e":Lorg/xml/sax/SAXException;
    :goto_4
    const-string v8, "EnterpriseIdentity"

    const-string v9, "In initAuthenticationConfigDoc: SAXException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 698
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 696
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 694
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1086
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1088
    .local v0, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v0, :cond_0

    .line 1089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1090
    .local v2, "token":J
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1093
    const/4 v1, 0x1

    .line 1097
    .end local v2    # "token":J
    :goto_0
    return v1

    .line 1096
    :cond_0
    const-string v1, "EnterpriseIdentity"

    const-string v4, "In isAuthenticatorApplicationInstalled: Authenticator is not installed"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnterpriseSSOEnrolled(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "authPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "enterpriseSSOResponseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOPolicy()Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-result-object v3

    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5, p2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->isSSOReadyInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    .line 399
    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_0

    .line 401
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In isEnterpriseSSOEnrolled: Enterprise SSO is enrolled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 411
    :cond_0
    :goto_0
    return v2

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseIdentity"

    const-string v4, "Exception in isEnterpriseSSOEnrolled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 793
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isGenericSSOEnrolled(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "authPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In isGenericSSOEnrolled: Generic SSO is enrolled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    const/4 v2, 0x1

    .line 392
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseIdentity"

    const-string v3, "Exception in isSSOEnrolled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkAuthenticationEnforced(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1541
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "network_auth_force_state"

    invoke-static {v4, v5, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 1543
    .local v0, "ret":Z
    :goto_0
    const-string v1, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In isNetworkAuthenticationEnforced: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    return v0

    .end local v0    # "ret":Z
    :cond_0
    move v0, v1

    .line 1541
    goto :goto_0
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/os/Bundle;

    .prologue
    .line 590
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    :cond_0
    const/4 v0, 0x1

    .line 592
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerPersonaStateObserver()V
    .locals 4

    .prologue
    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 249
    .local v1, "mPersona":Landroid/os/PersonaManager;
    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;-><init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeAll(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1248
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 1249
    .local v1, "list":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 1250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1252
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/app/enterprise/sso/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1253
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private removeFileAndCacheEntry(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "filepath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 418
    .local v2, "result":Z
    if-nez v2, :cond_0

    .line 419
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In removeFileAndCacheEntry: file is not removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 422
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 424
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 426
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_2
    const-string v3, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In removeFileAndCacheEntry: Cache and file removed for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 10
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 755
    const/4 v3, 0x0

    .line 756
    .local v3, "stream":Ljava/io/FileOutputStream;
    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 758
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    .line 760
    .local v6, "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 762
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v4, p2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 764
    .local v2, "source":Ljavax/xml/transform/dom/DOMSource;
    if-nez p1, :cond_0

    .line 765
    :try_start_1
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-direct {v2}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    .line 769
    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_0
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 770
    .local v1, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 771
    const-string v7, "EnterpriseIdentity"

    const-string v9, "In saveConfigToFile: config file is saved successfully"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 784
    .end local v1    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 785
    return-void

    .line 767
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :cond_0
    :try_start_3
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto :goto_0

    .line 773
    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    :goto_2
    :try_start_4
    const-string v7, "EnterpriseIdentity"

    const-string v9, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 784
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 775
    :catch_1
    move-exception v0

    .line 776
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    :goto_4
    :try_start_5
    const-string v7, "EnterpriseIdentity"

    const-string v9, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 777
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v0

    .line 778
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    const-string v7, "EnterpriseIdentity"

    const-string v9, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 779
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_6
    const-string v7, "EnterpriseIdentity"

    const-string v9, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 781
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    const-string v7, "EnterpriseIdentity"

    const-string v9, "In getTokenConfigForUserId: IOException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 784
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 781
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 779
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 777
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 775
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 773
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private setNetworkAuthenticationEnforced(ZI)Z
    .locals 6
    .param p1, "enforce"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1516
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "network_auth_force_state"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-static {v4, v5, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 1518
    .local v0, "status":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1519
    return v0

    .line 1516
    .end local v0    # "status":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    .line 729
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$1600(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    .line 730
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 731
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 732
    const-string v0, "EnterpriseIdentity"

    const-string v1, "In updateCache: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    .line 740
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$1600(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    .line 741
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 742
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 743
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In updateCacheAndFile: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 748
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 749
    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso authentication config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_1
    return-void
.end method


# virtual methods
.method public getAuthenticationConfig(I)Lcom/sec/enterprise/identity/AuthenticationConfig;
    .locals 16
    .param p1, "userId"    # I

    .prologue
    .line 1119
    const/4 v7, 0x0

    .line 1120
    .local v7, "authenticatorConfig":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 1122
    .local v10, "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v8

    .line 1123
    .local v8, "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    if-nez v8, :cond_0

    .line 1124
    const-string v13, "EnterpriseIdentity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In getAuthenticationConfig: cannot get configDoc for userID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v1, 0x0

    move-object v13, v1

    move-object v1, v10

    .line 1202
    .end local v10    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    .local v1, "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    :goto_0
    return-object v13

    .line 1130
    .end local v1    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    .restart local v10    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    :cond_0
    :try_start_0
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1132
    .local v12, "node":Lorg/w3c/dom/Node;
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIdpPackageName()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v5

    .line 1133
    .local v5, "authenticatorPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1134
    const/4 v5, 0x0

    .line 1135
    :cond_1
    move-object v0, v12

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v9, v0

    .line 1137
    .local v9, "e":Lorg/w3c/dom/Element;
    const-string/jumbo v13, "servicepackagesignature"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1139
    const-string v13, "EnterpriseIdentity"

    const-string v14, "In getAuthenticationConfig: SSO_PROVIDER_PACKAGE_SIGNATURE=null in XML"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v6, 0x0

    .line 1147
    .local v6, "authenticatorPkgSignature":Ljava/lang/String;
    :goto_1
    const-string/jumbo v13, "enforceRemoteAuthAlways"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1149
    const-string v13, "EnterpriseIdentity"

    const-string v14, "In getAuthenticationConfig: Error to look up. ENFORCE_REMOTE_AUTH_ALWAYS=null in XML"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v2, 0x0

    .line 1157
    .local v2, "enforceRemoteAuthAlways":Z
    :goto_2
    const-string/jumbo v13, "forceEnterpriseIDLock"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1159
    const-string v13, "EnterpriseIdentity"

    const-string v14, "In getAuthenticationConfig: Error to look up. FORCE_ENTERPRISE_IDENTITY_LOCK=null in XML"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 v3, 0x0

    .line 1167
    .local v3, "forceEnterpriseIdentityLock":Z
    :goto_3
    const-string/jumbo v13, "hideEnterpriseIDLock"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1169
    const-string v13, "EnterpriseIdentity"

    const-string v14, "In getAuthenticationConfig: Error to look up. HIDE_ENTERPRISE_ID_LOCK=null in XML"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 v4, 0x0

    .line 1177
    .local v4, "hideEnterpriseIdentityLock":Z
    :goto_4
    const-string/jumbo v13, "isConfiguredByMDM"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1179
    const-string v13, "EnterpriseIdentity"

    const-string v14, "In getAuthenticationConfig: Error to look up. isConfiguredByMDM=null in XML"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/4 v11, 0x0

    .line 1187
    .local v11, "isConfiguredByMDM":Z
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v7

    .line 1189
    new-instance v1, Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-direct/range {v1 .. v7}, Lcom/sec/enterprise/identity/AuthenticationConfig;-><init>(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    .end local v10    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    .restart local v1    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    :try_start_1
    const-string v13, "EnterpriseIdentity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In getAuthenticationConfig: RemoteAuthAlways: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "forceEnterpriseID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "hideEnterpriseID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Authenticator: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual {v1, v11}, Lcom/sec/enterprise/identity/AuthenticationConfig;->setConfiguredByMDM(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v1

    .line 1198
    goto/16 :goto_0

    .line 1143
    .end local v1    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    .end local v2    # "enforceRemoteAuthAlways":Z
    .end local v3    # "forceEnterpriseIdentityLock":Z
    .end local v4    # "hideEnterpriseIdentityLock":Z
    .end local v6    # "authenticatorPkgSignature":Ljava/lang/String;
    .end local v11    # "isConfiguredByMDM":Z
    .restart local v10    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    :cond_2
    :try_start_2
    const-string/jumbo v13, "servicepackagesignature"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "authenticatorPkgSignature":Ljava/lang/String;
    goto/16 :goto_1

    .line 1152
    :cond_3
    const-string/jumbo v13, "enforceRemoteAuthAlways"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v2, 0x1

    .restart local v2    # "enforceRemoteAuthAlways":Z
    :goto_6
    goto/16 :goto_2

    .end local v2    # "enforceRemoteAuthAlways":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_6

    .line 1162
    .restart local v2    # "enforceRemoteAuthAlways":Z
    :cond_5
    const-string/jumbo v13, "forceEnterpriseIDLock"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v3, 0x1

    .restart local v3    # "forceEnterpriseIdentityLock":Z
    :goto_7
    goto/16 :goto_3

    .end local v3    # "forceEnterpriseIdentityLock":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 1172
    .restart local v3    # "forceEnterpriseIdentityLock":Z
    :cond_7
    const-string/jumbo v13, "hideEnterpriseIDLock"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "hideEnterpriseIdentityLock":Z
    :goto_8
    goto/16 :goto_4

    .end local v4    # "hideEnterpriseIdentityLock":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 1182
    .restart local v4    # "hideEnterpriseIdentityLock":Z
    :cond_9
    const-string/jumbo v13, "isConfiguredByMDM"

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v13

    if-eqz v13, :cond_a

    const/4 v11, 0x1

    .restart local v11    # "isConfiguredByMDM":Z
    :goto_9
    goto/16 :goto_5

    .end local v11    # "isConfiguredByMDM":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_9

    .line 1199
    .end local v2    # "enforceRemoteAuthAlways":Z
    .end local v3    # "forceEnterpriseIdentityLock":Z
    .end local v4    # "hideEnterpriseIdentityLock":Z
    .end local v5    # "authenticatorPkgName":Ljava/lang/String;
    .end local v6    # "authenticatorPkgSignature":Ljava/lang/String;
    .end local v9    # "e":Lorg/w3c/dom/Element;
    .end local v12    # "node":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v9

    move-object v1, v10

    .line 1200
    .end local v10    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    .restart local v1    # "eIDLockConfigObj":Lcom/sec/enterprise/identity/AuthenticationConfig;
    .local v9, "e":Ljava/lang/Exception;
    :goto_a
    const-string v13, "EnterpriseIdentity"

    const-string v14, "In getAuthenticationConfig: Exception"

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1202
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1199
    .restart local v2    # "enforceRemoteAuthAlways":Z
    .restart local v3    # "forceEnterpriseIdentityLock":Z
    .restart local v4    # "hideEnterpriseIdentityLock":Z
    .restart local v5    # "authenticatorPkgName":Ljava/lang/String;
    .restart local v6    # "authenticatorPkgSignature":Ljava/lang/String;
    .local v9, "e":Lorg/w3c/dom/Element;
    .restart local v11    # "isConfiguredByMDM":Z
    .restart local v12    # "node":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v9

    goto :goto_a
.end method

.method public getAuthenticationConfig(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/identity/AuthenticationConfig;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1104
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1106
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(I)Lcom/sec/enterprise/identity/AuthenticationConfig;

    move-result-object v1

    return-object v1
.end method

.method public getEnterpriseIdAuthenticator(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 913
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    .line 914
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    if-eqz v0, :cond_0

    .line 915
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIdpPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v1

    .line 917
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnEnrollSetting(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 597
    .local v0, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    invoke-static {v4, v5, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 598
    .local v2, "unEnrolled":Z
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return v2

    .end local v2    # "unEnrolled":Z
    :cond_0
    move v2, v3

    .line 597
    goto :goto_0
.end method

.method public installPackageInContainer(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 435
    .local v1, "packageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    .line 436
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 443
    :goto_0
    return v2

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseIdentity"

    const-string v4, "In installPackageInContainer: Exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isNetworkAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1523
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 1524
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1526
    :cond_0
    const/4 v0, 0x0

    .line 1527
    .local v0, "ret":Z
    if-nez p1, :cond_2

    .line 1528
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1529
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In isNetworkAuthenticationEnforced: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    .end local v0    # "ret":Z
    :cond_1
    :goto_0
    return v0

    .line 1533
    .restart local v0    # "ret":Z
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1535
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onAdminRemoved(I)V
    .locals 9
    .param p1, "uid"    # I

    .prologue
    .line 1634
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In OnAdminRemoved: uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1636
    .local v5, "userId":I
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In OnAdminRemoved: userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 1638
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Need to be system process"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1640
    :cond_2
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1642
    .local v1, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1643
    .local v0, "adminUid":I
    if-ne p1, v0, :cond_6

    .line 1644
    const-string v6, "EnterpriseIdentity"

    const-string v7, "In OnAdminRemoved: Correct admin = all config is removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 1646
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1647
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1648
    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ServiceConnection;

    invoke-virtual {v7, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1650
    :cond_3
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1654
    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1657
    :cond_5
    if-nez v5, :cond_6

    .line 1658
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 1659
    .local v3, "filepath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1660
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1661
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    .line 1662
    .local v4, "result":Z
    if-nez v4, :cond_6

    .line 1663
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 1664
    const-string v6, "EnterpriseIdentity"

    const-string v7, "In onAdminRemoved : file is not removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "result":Z
    :cond_6
    return-void
.end method

.method public performUserAuthentication(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    const/4 v1, 0x0

    .line 947
    const/4 v10, 0x0

    .line 948
    .local v10, "retTokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 949
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 951
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 954
    .local v11, "userId":I
    if-nez p2, :cond_1

    .line 955
    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In performUserAuthentication: Performing user authentication is failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    .line 1014
    :goto_0
    return-object v1

    .line 958
    :cond_1
    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v9

    .line 959
    .local v9, "packageName":Ljava/lang/String;
    invoke-direct {p0, v11, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 961
    .local v8, "installedAppPkgSig":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 962
    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 963
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 964
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In performUserAuthentication: Authenticator signature is not matched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_2
    new-instance v10, Landroid/app/enterprise/sso/TokenInfo;

    .end local v10    # "retTokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    invoke-direct {v10}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 967
    .restart local v10    # "retTokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    sget-object v1, Landroid/app/enterprise/sso/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    const/16 v2, -0xd

    invoke-virtual {v10, v1, v2}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Ljava/lang/String;I)V

    move-object v1, v10

    .line 971
    goto :goto_0

    .line 974
    :cond_3
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 975
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In performUserAuthentication: calling _setAuthenticationConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_4
    invoke-direct {p0, v11, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/sec/enterprise/identity/AuthenticationConfig;)I

    .line 977
    invoke-direct {p0, v11, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v6

    .line 979
    .local v6, "authenticator":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    const/4 v10, 0x0

    .line 980
    if-nez v6, :cond_5

    .line 981
    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In performUserAuthentication: The authenticator is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 986
    :cond_5
    :try_start_0
    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 987
    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    .line 988
    const/16 v1, 0x64

    if-lt v11, v1, :cond_6

    .line 989
    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 990
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v11}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUnEnrollSetting(ZI)V

    .line 993
    :cond_6
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 996
    .local v0, "authRequest":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v6, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v10

    .line 998
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Landroid/app/enterprise/sso/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_7

    .end local v0    # "authRequest":Landroid/app/enterprise/sso/AuthenticationRequest;
    :cond_7
    :goto_1
    move-object v1, v10

    .line 1014
    goto/16 :goto_0

    .line 1009
    :catch_0
    move-exception v7

    .line 1010
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "EnterpriseIdentity"

    const-string v2, "In performUserAuthentication: RemoteException"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1011
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1012
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 1207
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1208
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1214
    .local v3, "userId":I
    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    .line 1215
    const-string v4, "EnterpriseIdentity"

    const-string v5, "Enterprise Identity not supported on device level "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v4, -0x2

    .line 1236
    :goto_0
    return v4

    .line 1218
    :cond_0
    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1219
    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1221
    const-string v0, "com.sec.android.service.singlesignon"

    .line 1222
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1223
    const/4 v4, -0x4

    goto :goto_0

    .line 1226
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1227
    .local v1, "packageSignature":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, "requestedSignature":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 1229
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1230
    const-string v4, "EnterpriseIdentity"

    const-string v5, "Enterprise Identity requested signature is different from IdP signature"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/16 v4, -0xd

    goto :goto_0

    .line 1236
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "packageSignature":Ljava/lang/String;
    .end local v2    # "requestedSignature":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/sec/enterprise/identity/AuthenticationConfig;)I

    move-result v4

    goto :goto_0
.end method

.method public setAuthenticationConfigForContainer(Lcom/sec/enterprise/identity/AuthenticationConfig;I)I
    .locals 2
    .param p1, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;
    .param p2, "containerId"    # I

    .prologue
    .line 1241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1242
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/sec/enterprise/identity/AuthenticationConfig;)I

    move-result v0

    return v0
.end method

.method public setUnEnrollSetting(ZI)V
    .locals 5
    .param p1, "setValue"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 604
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    if-ne p1, v2, :cond_0

    :goto_0
    invoke-static {v3, v4, v2, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    return-void

    .line 604
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setUpdatedAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authConfig"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 1019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 1020
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1022
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1024
    .local v7, "userId":I
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1025
    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setUpdatedAuthenticationConfig : UserID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_1
    if-nez p2, :cond_2

    .line 1028
    const/4 v2, 0x0

    .line 1080
    :goto_0
    return v2

    .line 1030
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v11

    .line 1031
    .local v11, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    invoke-direct {v2, v11, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    .line 1033
    const/16 v2, 0x64

    if-lt v7, v2, :cond_9

    .line 1035
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->setMigrationStatus(Z)V
    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->access$1800(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V

    .line 1036
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->updateContainerID(I)V
    invoke-static {v2, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;I)V

    .line 1039
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v12

    .line 1040
    .local v12, "requestConfig":Landroid/os/Bundle;
    if-eqz v12, :cond_3

    .line 1041
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "FEDERATION_SERVER_URL"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1043
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    if-eqz v2, :cond_3

    .line 1044
    sget-object v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    const-string v2, "FEDERATION_SERVER_URL"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    :goto_2
    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->setSSOConfigurationEnabled(Z)V
    invoke-static {v3, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->access$1900(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V

    .line 1048
    :cond_3
    const/16 v2, 0x64

    if-lt v7, v2, :cond_7

    .line 1050
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    iget-boolean v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    if-eqz v2, :cond_6

    .line 1051
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In setUpdatedAuthenticationConfig: SSO is configured"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v10, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1054
    .local v10, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v8

    .line 1056
    .local v8, "adminUid":I
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1057
    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setUpdatedAuthenticationConfig: authenticationInfoManager.isSSOConfigurationEnabled = true adminUID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1061
    .local v14, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v2

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-direct {v3, v4, v7}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendorInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    .line 1066
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1067
    const-string v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setUpdatedAuthenticationConfig packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    .end local v8    # "adminUid":I
    .end local v10    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v14    # "token":J
    :cond_6
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    .line 1072
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1073
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)Z

    .line 1075
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/sec/enterprise/identity/AuthenticationConfig;)I

    .line 1080
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1038
    .end local v12    # "requestConfig":Landroid/os/Bundle;
    :cond_9
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->setMigrationStatus(Z)V
    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->access$1800(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1076
    .end local v11    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1077
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1078
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1044
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "requestConfig":Landroid/os/Bundle;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public validateUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_0

    .line 1483
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1485
    :cond_0
    if-nez p1, :cond_2

    .line 1486
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1487
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In validateUserAuthentication: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_1
    :goto_0
    return-void

    .line 1490
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1491
    .local v7, "userId":I
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1492
    const-string v3, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateUserAuthentication: contextInfo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1495
    :cond_4
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In validateUserAuthentication: Usernames or password is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1499
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v4

    .line 1500
    .local v4, "authData":Landroid/os/Bundle;
    sget-object v3, Landroid/app/enterprise/sso/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v4, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    sget-object v3, Landroid/app/enterprise/sso/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v1

    .line 1505
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 1507
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1508
    .local v6, "message":Landroid/os/Message;
    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 1509
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1510
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public verifyUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_0

    .line 1421
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1423
    :cond_0
    const/4 v8, 0x0

    .line 1424
    .local v8, "retFromAuthenticator":Landroid/app/enterprise/sso/TokenInfo;
    if-nez p1, :cond_2

    .line 1425
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1426
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In verifyUserAuthentication: cxtInfo is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_1
    :goto_0
    return-object v2

    .line 1429
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1430
    :cond_3
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In verifyUserAuthentication: Usernames or password is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1434
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 1437
    .local v9, "userId":I
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v4

    .line 1439
    .local v4, "authData":Landroid/os/Bundle;
    sget-object v3, Landroid/app/enterprise/sso/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v4, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    sget-object v3, Landroid/app/enterprise/sso/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 1445
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-direct {p0, v9, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v6

    .line 1447
    .local v6, "authenticator":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v6, :cond_5

    .line 1448
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In verifyUserAuthentication: The authenticator value is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1452
    :cond_5
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1453
    invoke-virtual {v0}, Landroid/app/enterprise/sso/AuthenticationRequest;->getRequestConfig()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v6, v2}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    .line 1454
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUnEnrollSetting(ZI)V

    .line 1456
    :cond_6
    invoke-interface {v6, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v8

    .line 1457
    if-eqz v8, :cond_7

    .line 1458
    invoke-virtual {v8}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 1462
    .local v10, "userInformationBundle":Landroid/os/Bundle;
    sget-object v2, Landroid/app/enterprise/sso/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 1464
    const/4 v2, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "userInformationBundle":Landroid/os/Bundle;
    :cond_7
    :goto_1
    move-object v2, v8

    .line 1477
    goto :goto_0

    .line 1474
    :catch_0
    move-exception v7

    .line 1475
    .local v7, "e":Landroid/os/RemoteException;
    const-string v2, "EnterpriseIdentity"

    const-string v3, "In performExchangeAuthentication: RemoteException"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
