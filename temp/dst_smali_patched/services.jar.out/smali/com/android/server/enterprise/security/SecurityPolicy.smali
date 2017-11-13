.class public Lcom/android/server/enterprise/security/SecurityPolicy;
.super Landroid/app/enterprise/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;,
        Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    }
.end annotation


# static fields
.field private static final AES256ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final AES_BLOCK_SIZE:I = 0x1000

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEVICE_LAST_BOOT_SAFE_MODE_ACTION:Ljava/lang/String; = "edm.intent.action.LAST_BOOT_SAFE_MODE"

.field private static final DOD_BANNER_PATH:Ljava/lang/String; = "com.samsung.android.mdm.DodBanner"

.field private static final DOD_BANNER_PKG:Ljava/lang/String; = "com.samsung.android.mdm"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field private static final InitialVectorNum:I = 0x10

.field private static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field private static final MAX_DEPTH:I = 0x14

.field public static final SECURITY_POLICY_PACKAGE_MARKER:Ljava/lang/String; = "SecurityPolicy"

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"

.field private static final USER_DATA_DIR:Ljava/lang/String; = "/data/user/"

.field private static mBannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMediaFormatRet:Z

.field private mPendingGetCerificates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPersona:Landroid/os/PersonaManager;

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureRandom:Ljava/security/SecureRandom;

.field private pkgNameList_allowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filterBoot":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.email.provider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/security/SecurityPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 17
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v11, 0x1

    .local v11, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_1

    const/4 v11, 0x0

    :cond_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v10

    .local v10, "pemCert":[B
    if-eqz v10, :cond_2

    invoke-static {v10}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v6

    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v14

    and-int/2addr v11, v14

    const-string v14, "USRCERT_"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "USRPKEY_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .end local v4    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "pemCert":[B
    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .restart local v4    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto/16 :goto_0
.end method

.method private enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string v5, "deviceEnrolled"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string v5, "bannerText"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, "resultLine":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    .end local v1    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "resultLine":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v6, "SecurityPolicy"

    const-string v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v5

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "resultLine":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "resultLine":Ljava/lang/String;
    :catch_2
    move-exception v0

    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_3
    :try_start_5
    const-string v6, "SecurityPolicy"

    const-string v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_5
    throw v6

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "resultLine":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "resultLine":Ljava/lang/String;
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private formatExternalStorageCard()Z
    .locals 10

    .prologue
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v5

    .local v5, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v5}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .local v6, "storageVolumes":[Landroid/os/storage/StorageVolume;
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .local v4, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .local v2, "lock":Ljava/lang/Object;
    new-instance v3, Lcom/android/server/enterprise/security/SecurityPolicy$2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy$2;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V

    .local v3, "mediaReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "file"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v8, 0x1b58

    :try_start_1
    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "lock":Ljava/lang/Object;
    .end local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    .end local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v7

    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v2    # "lock":Ljava/lang/Object;
    .restart local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .restart local v4    # "sm":Landroid/os/storage/StorageManager;
    .restart local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .restart local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v7, "SecurityPolicy"

    const-string v8, "formatStorageCard - InterruptedException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "lock":Ljava/lang/Object;
    .end local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    .end local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "SecurityPolicy"

    const-string v8, "formatStorageCard fail"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAndroidInstalledCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;
    .locals 19
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v16 .. v17}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v9

    .local v9, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .local v10, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v10, :cond_2

    :try_start_1
    invoke-interface {v10}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v13

    .local v13, "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "alias":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v2, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "certData":[B
    if-eqz v4, :cond_0

    :try_start_2
    invoke-static {v4}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v11

    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_1

    new-instance v5, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v5}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .local v5, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v5, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "certData":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_3
    return-object v12

    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v4    # "certData":[B
    .restart local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/security/cert/CertificateException;
    :try_start_6
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "certData":[B
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v16

    :try_start_7
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v16
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_3
    move-exception v6

    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v6    # "e":Ljava/lang/InterruptedException;
    .restart local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_9
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4
    move-exception v6

    .local v6, "e":Ljava/lang/AssertionError;
    :try_start_a
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getAndroidInstalledCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v6    # "e":Ljava/lang/AssertionError;
    :catchall_1
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "mResult":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .local v1, "mSecureRandom":Ljava/security/SecureRandom;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .end local v0    # "mResult":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .restart local v0    # "mResult":Ljavax/crypto/spec/IvParameterSpec;
    return-object v0
.end method

.method private getKeystoreString(I)Ljava/lang/String;
    .locals 2
    .param p1, "keystore"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "keystores":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "Wi-Fi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "VPN and Apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .locals 8
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v1, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v1}, Landroid/app/enterprise/CertificateInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .local v1, "certInfo":Landroid/app/enterprise/CertificateInfo;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, "pemCert":[B
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v2

    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-virtual {v1, v6}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_0
    move-object v0, v1

    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v3    # "pemCert":[B
    .restart local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v6

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    goto :goto_0
.end method

.method private getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .local v0, "names":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 21
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .local v13, "names":[Ljava/lang/String;
    if-eqz v13, :cond_3

    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v12, v4, v10

    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v14

    .local v14, "pemCert":[B
    if-eqz v14, :cond_2

    invoke-static {v14}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v8

    .local v8, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .local v6, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_0

    new-instance v7, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v7}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .local v7, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v7, v6}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    invoke-virtual {v7, v12}, Landroid/app/enterprise/CertificateInfo;->setAlias(Ljava/lang/String;)V

    const-string v18, "USRCERT_"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "USRPKEY_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .local v5, "arrayPKeys":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v0, v5

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/enterprise/CertificateInfo;->setHasPrivateKey(Z)V

    .end local v5    # "arrayPKeys":[Ljava/lang/String;
    :cond_1
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v8    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "pemCert":[B
    :catchall_0
    move-exception v18

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v11    # "len$":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "names":[Ljava/lang/String;
    .restart local v14    # "pemCert":[B
    :cond_2
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_0

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "pemCert":[B
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v15
.end method

.method private getService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSessionKey()Ljava/security/Key;
    .locals 4

    .prologue
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSystemCertificatesAsUser(ZI)Ljava/util/List;
    .locals 19
    .param p1, "includeDisabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v16 .. v17}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v10

    .local v10, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .local v11, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v11, :cond_2

    :try_start_1
    invoke-interface {v11}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v3

    .local v3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "alias":Ljava/lang/String;
    new-instance v6, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v6}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .local v6, "certInfo":Landroid/app/enterprise/CertificateInfo;
    const/4 v12, 0x0

    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move/from16 v0, p1

    invoke-interface {v11, v2, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .local v5, "certData":[B
    if-eqz v5, :cond_0

    :try_start_2
    invoke-static {v5}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    invoke-virtual {v6, v4}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    invoke-interface {v11, v2}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setEnabled(Z)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "certData":[B
    .end local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_3
    return-object v13

    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "certData":[B
    .restart local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v11    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/security/cert/CertificateException;
    :try_start_6
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "certData":[B
    .end local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_0
    move-exception v16

    :try_start_7
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v16
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_3
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_3
    :try_start_9
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_4
    move-exception v7

    .local v7, "e":Ljava/lang/AssertionError;
    :try_start_a
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSystemCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/AssertionError;
    :catchall_1
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string v3, "is string valid?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBannerApp(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.samsung.android.mdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLastBootInSafeMode()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "deviceBootMode"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNativeKeyStoreUnlocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "isUnlocked":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AssertionError;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isProcOrSysFolder(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "sys"

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "parsedPath":[Ljava/lang/String;
    aget-object v3, v0, v2

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "proc"

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v2

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isUserRestrictedFolder(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .local v1, "userId":I
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isProcOrSysFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "/data/user/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "/data/data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    .locals 9
    .param p1, "fdir"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "outFile"    # Ljava/io/PrintWriter;

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x14

    if-ge p2, v6, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFileNamesWithAttributes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .local v5, "listFiles":[Ljava/io/File;
    if-eqz v5, :cond_0

    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .local v2, "f":Ljava/io/File;
    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, v2, v6, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "listFiles":[Ljava/io/File;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private needtoCheckPackageCaller()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeDuplicatedCertificates(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/CertificateInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;
    .param p3, "storeType"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "USRCERT_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "keyChainService"    # Landroid/security/IKeyChainService;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v0, 0x0

    .local v0, "certificateAlias":Ljava/lang/String;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveDeviceBootMode(Z)Z
    .locals 7
    .param p1, "isSafe"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "deviceBootMode"

    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device safe mode saved in generic table : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private sendIntentToSettings(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .local v0, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    iget-boolean v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    return-void
.end method

.method private validateKeystoreParam(I)Z
    .locals 3
    .param p1, "keystore"    # I

    .prologue
    const/4 v0, 0x7

    .local v0, "all":I
    const/4 v1, 0x1

    .local v1, "ret":Z
    and-int v2, p1, v0

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    or-int v2, p1, v0

    if-eq v2, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCredentialStoragePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "oldpassword"    # Ljava/lang/String;
    .param p3, "newpassword"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->resetCredentialStorage(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public deleteCertificateFromKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certInfo"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "userId":I
    const/16 v16, 0x1

    .local v16, "ret":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    const/16 v16, 0x0

    .end local v16    # "ret":Z
    :cond_1
    :goto_1
    return v16

    .end local v8    # "userId":I
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0

    .restart local v8    # "userId":I
    .restart local v16    # "ret":Z
    :cond_3
    const/4 v13, 0x0

    .local v13, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v14, 0x0

    .local v14, "keyChainService":Landroid/security/IKeyChainService;
    const/4 v10, 0x0

    .local v10, "certificateAlias":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v15

    .local v15, "removeCert":Ljava/security/cert/Certificate;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    .local v18, "token":J
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v3}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v13

    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v14

    :cond_4
    invoke-static {v8}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_6

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v9

    .local v9, "cert":Ljava/security/cert/Certificate;
    const/4 v12, 0x0

    .local v12, "issuer":Ljava/lang/String;
    instance-of v2, v9, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_5

    move-object v0, v9

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    .local v17, "x509cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v12

    .end local v17    # "x509cert":Ljava/security/cert/X509Certificate;
    :cond_5
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Admin "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " has requested to delete a certificate. Keystore(s) : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Alias : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v10, :cond_d

    const-string v7, "Not available"

    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Subject : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getSubject()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Issuer : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "issuer":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v16    # "ret":Z
    :goto_4
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v18

    if-nez v10, :cond_7

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v10

    :cond_7
    if-eqz v10, :cond_8

    if-eqz v14, :cond_8

    :try_start_4
    invoke-interface {v14, v10}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    and-int v16, v16, v2

    :cond_8
    :goto_5
    :try_start_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_9
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CACERT_"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int v16, v16, v2

    .restart local v16    # "ret":Z
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USRCERT_"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int v16, v16, v2

    .end local v16    # "ret":Z
    :cond_a
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CACERT_"

    const/4 v7, 0x4

    move-object/from16 v3, p0

    move-object v4, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    and-int v16, v16, v2

    .restart local v16    # "ret":Z
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USRCERT_"

    const/4 v7, 0x4

    move-object/from16 v3, p0

    move-object v4, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    and-int v16, v16, v2

    .end local v16    # "ret":Z
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto/16 :goto_1

    .restart local v16    # "ret":Z
    :cond_c
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v10

    goto/16 :goto_2

    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    .restart local v12    # "issuer":Ljava/lang/String;
    :cond_d
    move-object v7, v10

    goto/16 :goto_3

    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "issuer":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/AssertionError;
    :try_start_7
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCertificateFromKeystore - is KeyChainService running for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    and-int/lit8 v16, v16, 0x0

    .local v16, "ret":I
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .end local v11    # "e":Ljava/lang/AssertionError;
    .end local v15    # "removeCert":Ljava/security/cert/Certificate;
    .end local v16    # "ret":I
    .end local v18    # "token":J
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_e
    throw v2

    .restart local v15    # "removeCert":Ljava/security/cert/Certificate;
    .local v16, "ret":Z
    .restart local v18    # "token":J
    :catch_1
    move-exception v11

    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCertificateFromKeystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    and-int/lit8 v16, v16, 0x0

    .local v16, "ret":I
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .end local v11    # "e":Ljava/lang/InterruptedException;
    .local v16, "ret":Z
    :catchall_1
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v16    # "ret":Z
    :catch_2
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCertificateFromKeystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    and-int/lit8 v16, v16, 0x0

    .restart local v16    # "ret":Z
    goto/16 :goto_5

    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v16    # "ret":Z
    :catchall_2
    move-exception v2

    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public deleteCertificateFromUserKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certInfo"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public enableRebootBanner(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v9

    .local v9, "result":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    if-eqz v9, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    if-eqz p2, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has enabled reboot banner."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v9, :cond_0

    if-nez v6, :cond_0

    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v0, "SecurityPolicy"

    const-string v1, "enableRebootBanner"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "SecurityPolicy"

    const-string v1, "enableRebootBanner calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v10    # "token":J
    :cond_0
    :goto_1
    return v9

    .restart local v10    # "token":J
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has disabled reboot banner."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public enableRebootBannerWithText(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v7

    .local v7, "result":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    if-eqz p2, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has enabled reboot banner with text "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v8    # "token":J
    :cond_0
    return v7

    .restart local v8    # "token":J
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has disabled reboot banner."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public formatInternalStorage(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "includeSystemDirectory"    # Z
    .param p3, "includeDataDirectory"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fileList"    # [Ljava/lang/String;
    .param p3, "filters"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isExternal"    # Z

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "ident":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v15

    .local v15, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v15}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumes()Ljava/util/List;

    move-result-object v17

    .local v17, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const/4 v11, 0x0

    .local v11, "isExtSDsupported":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/VolumeInfo;

    .local v16, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    .end local v16    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne v11, v2, :cond_3

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested wipe of device external memory."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatStorageCard() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isExternal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v2

    :cond_3
    :try_start_1
    const-string v2, "SecurityPolicy"

    const-string v3, "This device doesn\'t suppot External SD card"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string v3, "formatStorageCard fail"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/persistentdata/PersistentDataBlockManager;

    .local v14, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested full wipe of device."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public getCertificatesFromKeystore(Landroid/app/enterprise/ContextInfo;II)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "keystore"    # I
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :goto_0
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_2
    move-object v2, v0

    :goto_3
    return-object v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v1    # "userId":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v1    # "userId":I
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_5

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_4

    const-string v2, "USRCERT_"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v2, "CACERT_"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_0

    const-string v2, "USRCERT_"

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v2, "CACERT_"

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public getCertificatesFromUserKeystore(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "keystore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialStorageStatus(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SecurityPolicy"

    const-string v7, " getCredentialStorageStatus calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->needtoCheckPackageCaller()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :goto_1
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .local v3, "userId":I
    const/4 v0, 0x4

    .local v0, "credentialStorageStatus":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v3}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    .local v2, "state":Landroid/security/KeyStore$State;
    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "credentialStorageStatus":I
    .end local v2    # "state":Landroid/security/KeyStore$State;
    .end local v3    # "userId":I
    .end local v4    # "token":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_1

    .restart local v0    # "credentialStorageStatus":I
    .restart local v2    # "state":Landroid/security/KeyStore$State;
    .restart local v3    # "userId":I
    .restart local v4    # "token":J
    :cond_2
    :try_start_1
    sget-object v6, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    sget-object v6, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    goto :goto_2

    .end local v2    # "state":Landroid/security/KeyStore$State;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/AssertionError;
    :try_start_2
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystore State Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x4

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getDeviceLastAccessDate(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "deviceLastAccessDate"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileNamesOnDevice(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    if-eqz p2, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileNamesWithAttributes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    if-eqz p2, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "-l"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "-a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileNamesWithAttributesRecursive(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    if-eqz p3, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "tempfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .end local v8    # "tempfile":Ljava/io/File;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    :goto_0
    return v9

    :cond_2
    if-eqz p2, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .end local v3    # "f":Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "root":Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "outFile":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .local v0, "allFiles":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .local v1, "allFiles":Ljava/io/FileWriter;
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .local v6, "outFile":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v7, :cond_4

    const/4 v10, 0x0

    invoke-direct {p0, v7, v10, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    :cond_5
    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    :catch_1
    move-exception v4

    .local v4, "ioex":Ljava/io/IOException;
    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_7
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_8
    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_4
    throw v9

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    goto :goto_3

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method public getInstalledCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certificateName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const-string v1, "USRCERT_"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "CACERT_"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInstalledCertificateNames(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getInstalledCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeDuplicatedCertificates(Ljava/util/List;)V

    return-object v0
.end method

.method public getRebootBannerText(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string v6, "bannerText"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRequireDeviceEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRequireStorageCardEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSystemCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    array-length v6, p3

    if-eqz v6, :cond_1

    if-nez p4, :cond_3

    :cond_1
    const-string v6, "SecurityPolicy"

    const-string v7, "installCertificate : Invalid parameter(s)"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .local v4, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .end local v4    # "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    if-eqz v1, :cond_2

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v6, "SecurityPolicy"

    const-string v7, "installCertificate : KS not UNLOCKED"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SecurityPolicy"

    const-string v7, "installCertificate EX: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public installCertificateToKeystore(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :goto_0
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "userId":I
    const/4 v9, 0x0

    .local v9, "ret":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SecurityPolicy"

    const-string v4, "installCertificateToKeystore: Keystore is not unlocked"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    .end local v8    # "userId":I
    .end local v9    # "ret":Z
    .end local v10    # "token":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0

    .restart local v8    # "userId":I
    .restart local v9    # "ret":Z
    .restart local v10    # "token":J
    :cond_2
    :try_start_1
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_3

    if-nez p4, :cond_4

    :cond_3
    const-string v3, "SecurityPolicy"

    const-string v4, "installCertificateToKeystore: Invalid parameter(s)"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_4
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " has requested to install a certificate. Keystore(s) : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Name : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .local v2, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    goto :goto_1
.end method

.method public installCertificateToUserKeystore(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public installCertificateWithType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v4, p3

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "senderpackagename"

    const-string v5, "SecurityPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_0
    :goto_0
    return-void

    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificateWithType() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard(Landroid/app/enterprise/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "senderpackagename"

    const-string v5, "SecurityPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificatesFromSdCard() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .locals 0
    .param p1, "pair"    # Ljava/security/KeyPair;

    .prologue
    return-void
.end method

.method public isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isDodBannerVisibleAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "status":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "dodBannerVisible"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string v3, "isDodBannerVisibleAsUser facing exception, return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isExternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v1

    .local v1, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isStorageCardEncrypted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    const-string v5, "is External Storage Encrypted ?"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "SecurityPolicy"

    const-string v6, "is Internal Storage Encrypted ?"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRebootBannerEnabled(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string v6, "deviceEnrolled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v1, v2

    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isRebootBannerEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v1

    return v1
.end method

.method public lockoutDevice(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    const-string v11, "SecurityPolicy"

    const-string v12, "only PIN Password is allowed as limitation from Keyguard FMM "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    if-eqz p3, :cond_2

    :try_start_0
    const-string v11, "lock_fmm_Message"

    move-object/from16 v0, p3

    invoke-static {v3, v11, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lockoutDevice : set message done("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    const-string v12, "lock_fmm_phone"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v3, v12, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v12, "SecurityPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lockoutDevice : set phones done("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v5, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .local v7, "sha1":[B
    const/4 v11, 0x2

    invoke-static {v7, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .local v2, "base64":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .local v6, "manager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/os/PowerManager;->goToSleep(J)V

    const-string v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .local v10, "winMgr":Landroid/view/IWindowManager;
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "base64":Ljava/lang/String;
    .end local v5    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v6    # "manager":Landroid/os/PowerManager;
    .end local v7    # "sha1":[B
    .end local v10    # "winMgr":Landroid/view/IWindowManager;
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception is thrown when trying to lock out the device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 7
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .local v0, "buffer":[B
    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {p1, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .local v4, "length":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object p2

    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "length":I
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2

    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    throw v5

    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_4

    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_1

    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "length":I
    :cond_3
    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onKeyguardLaunched()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "index":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "index":I
    :cond_0
    if-eqz v0, :cond_1

    const-string v9, "android.uid.systemui"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    new-instance v9, Ljava/lang/SecurityException;

    const-string v12, "Only System UI can call this API"

    invoke-direct {v9, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    const/4 v8, 0x0

    .local v8, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v8

    :cond_3
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .local v4, "info":Landroid/content/pm/PersonaInfo;
    iget v7, v4, Landroid/content/pm/PersonaInfo;->id:I

    .local v7, "personaId":I
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v6, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-direct {v6, p0, v9, v7, v12}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Landroid/content/Context;II)V

    .local v6, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :cond_5
    sget-object v9, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v9, v4, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v12, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/content/pm/PersonaInfo;
    .end local v7    # "personaId":I
    :goto_0
    return-void

    :cond_7
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "SecurityPolicy"

    const-string v12, " Starting service "

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .local v5, "intentBanner":Landroid/content/Intent;
    const-string v9, "com.samsung.android.mdm"

    const-string v12, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v5, v9, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v5, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "intentBanner":Landroid/content/Intent;
    :cond_8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public powerOffDevice(Landroid/app/enterprise/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    const-string v4, "Security"

    const-string v5, "powerOffDevice"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v4, "SecurityPolicy"

    const-string v5, "powerOffDevice():EDM power off device start..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readFile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v2, 0x0

    .local v2, "fileStreamInp":Ljava/io/InputStream;
    const/4 v4, 0x0

    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "mFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .local v3, "fileStreamInp":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .local v5, "fileStreamOut":Ljava/io/OutputStream;
    const/16 v9, 0x800

    :try_start_2
    new-array v0, v9, [B

    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    if-lez v6, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v7    # "mFile":Ljava/io/File;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    const-string v9, "SecurityPolicy"

    const-string v10, "readFile IOException "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_3
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v6    # "length":I
    .restart local v7    # "mFile":Ljava/io/File;
    :cond_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_4
    if-eqz v5, :cond_0

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v0    # "buffer":[B
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v6    # "length":I
    .end local v7    # "mFile":Ljava/io/File;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_7
    throw v8

    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_5

    .end local v7    # "mFile":Ljava/io/File;
    :catch_7
    move-exception v1

    goto :goto_2

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public readFileWithEncryptionAndCompression(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/List;
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_0
    const/16 v17, 0x0

    .end local v17    # "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v17

    .restart local v17    # "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v7, 0x0

    .local v7, "fileStreamInp":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .local v9, "fileStreamOut":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .local v3, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    :try_start_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v15, "mFile":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".temp"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v16, "mTempFile":Ljava/io/File;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSessionKey()Ljava/security/Key;

    move-result-object v11

    .local v11, "inKey":Ljava/security/Key;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .local v12, "iv":Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v11, :cond_3

    if-nez v12, :cond_6

    :cond_3
    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_2
    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_4
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " output  size  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .local v8, "fileStreamInp":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_19
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .local v10, "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_27
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_6} :catch_22
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v9

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v11}, Ljava/security/Key;->getEncoded()[B

    move-result-object v18

    invoke-interface {v11}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v13, "ks":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_7} :catch_21
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_19
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_9
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " nfile  size  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "can read ? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " last Md  ? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "AES/CBC/PKCS7Padding"

    invoke-static/range {v18 .. v18}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0, v13, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v10, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_28
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9 .. :try_end_9} :catch_23
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1b
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v4, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    const/16 v18, 0x1000

    :try_start_a
    move/from16 v0, v18

    new-array v5, v0, [B

    .local v5, "d":[B
    :goto_3
    invoke-virtual {v7, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    .local v14, "len":I
    if-lez v14, :cond_9

    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() :   len   "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0, v14}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_a} :catch_24
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_a} :catch_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1c
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    .end local v5    # "d":[B
    .end local v14    # "len":I
    :catch_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_b
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_7

    :try_start_c
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_8
    :goto_6
    if-eqz v9, :cond_1

    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v5    # "d":[B
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v14    # "len":I
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :cond_9
    :try_start_f
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    invoke-interface {v11}, Ljava/security/Key;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_f} :catch_24
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1c
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v4, :cond_a

    :try_start_10
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    :cond_a
    :goto_7
    if-eqz v7, :cond_b

    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_b
    :goto_8
    if-eqz v10, :cond_1

    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v5    # "d":[B
    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v14    # "len":I
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_9
    :try_start_13
    invoke-virtual {v6}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v3, :cond_c

    :try_start_14
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_c
    :goto_a
    if-eqz v7, :cond_d

    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    :cond_d
    :goto_b
    if-eqz v9, :cond_1

    :try_start_16
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_c
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .end local v6    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .end local v6    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v6

    .local v6, "e":Ljava/security/InvalidKeyException;
    :goto_c
    :try_start_17
    invoke-virtual {v6}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v3, :cond_e

    :try_start_18
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .end local v6    # "e":Ljava/security/InvalidKeyException;
    :cond_e
    :goto_d
    if-eqz v7, :cond_f

    :try_start_19
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    :cond_f
    :goto_e
    if-eqz v9, :cond_1

    :try_start_1a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    goto/16 :goto_0

    :catch_f
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .local v6, "e":Ljava/security/InvalidKeyException;
    :catch_10
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .end local v6    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .end local v6    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :goto_f
    :try_start_1b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v3, :cond_10

    :try_start_1c
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    if-eqz v7, :cond_11

    :try_start_1d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    :cond_11
    :goto_11
    if-eqz v9, :cond_1

    :try_start_1e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    goto/16 :goto_0

    :catch_13
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .local v6, "e":Ljava/lang/Exception;
    :catch_14
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .end local v6    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_12
    if-eqz v3, :cond_12

    :try_start_1f
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17

    :cond_12
    :goto_13
    if-eqz v7, :cond_13

    :try_start_20
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_18

    :cond_13
    :goto_14
    if-eqz v9, :cond_1

    :try_start_21
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_16

    goto/16 :goto_0

    :catch_16
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .end local v6    # "e":Ljava/io/IOException;
    :catch_18
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_12

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v18

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_12

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catchall_3
    move-exception v18

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_12

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v18

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_12

    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_19
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_f

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1a
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_f

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1b
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_f

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_f

    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_1d
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1e
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1f
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_20
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_21
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_22
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_23
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_24
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    :catch_25
    move-exception v6

    goto/16 :goto_4

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :catch_26
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_27
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_28
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method public removeAccountsByType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    if-nez p2, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .local v11, "userId":I
    const/4 v10, 0x1

    .local v10, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .local v3, "am":Landroid/accounts/AccountManager;
    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v11}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .local v2, "accs":[Landroid/accounts/Account;
    if-eqz v2, :cond_2

    array-length v14, v2

    if-lez v14, :cond_2

    move-object v4, v2

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v8, v4, v7

    .local v8, "item":Landroid/accounts/Account;
    const-string v14, "SecurityPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAccountsByType : account = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v8, v14, v15, v0}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v7    # "i$":I
    .end local v8    # "item":Landroid/accounts/Account;
    .end local v9    # "len$":I
    :cond_2
    const-string v14, "SecurityPolicy"

    const-string v15, "removeAccountsByType : return null"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "accs":[Landroid/accounts/Account;
    .end local v3    # "am":Landroid/accounts/AccountManager;
    :cond_3
    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v11, :cond_0

    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v14}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v14, "SecurityPolicy"

    const-string v15, "removeAccountsByType"

    move-object/from16 v0, p2

    invoke-virtual {v6, v14, v15, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "SecurityPolicy"

    const-string v15, "removeAccountsByType calling gearPolicyManager  "

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public removeCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .local v0, "cert":Landroid/app/enterprise/CertificateInfo;
    const/4 v2, 0x4

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, "result":Z
    const/4 v2, 0x2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    return v1
.end method

.method public removeDeviceLockout(Landroid/app/enterprise/ContextInfo;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    const-string v4, "lock_fmm_Message"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "lock_fmm_phone"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v1, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public resetCredentialStorage(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    const/4 v8, 0x0

    .local v8, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has requested to clear credential storages"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x4

    invoke-static {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->clearUid(I)Z

    move-result v8

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x2

    invoke-static {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/2addr v8, v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    .local v9, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v0, 0xbb8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    and-int/2addr v8, v0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "SecurityPolicy"

    const-string v1, "resetCredentialStorage EX: "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setCredentialStoragePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceLastAccessDate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    const/4 v2, 0x1

    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "deviceLastAccessDate"

    invoke-virtual {v4, v5, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .local v1, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->unregisterPersonaObserver()V

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isVisible"    # Z

    .prologue
    const/4 v3, 0x0

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .local v2, "userId":I
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dodBannerVisible"

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Landroid/app/enterprise/ContextInfo;Z)V
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v8

    .local v8, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getRequireStorageCardEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecurityPolicy"

    const-string v1, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :goto_0
    return-void

    .restart local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :cond_0
    if-ne p2, v1, :cond_4

    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->enableStorageCardEncryptionPolicy()I

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has requested encryption of external storage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .local v12, "userId":I
    if-nez v12, :cond_3

    new-instance v9, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v9, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_2
    const-string v0, "SecurityPolicy"

    const-string v1, "setExternalStorageEncryption"

    invoke-virtual {v9, v0, v1, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "SecurityPolicy"

    const-string v1, "setExternalStorageEncryption calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v12    # "userId":I
    :cond_4
    :try_start_3
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->disableStorageCardEncryptionPolicy()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SecurityPolicy"

    const-string v1, "is External Storage Encrypted?"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .restart local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .end local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v12    # "userId":I
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setInternalStorageEncryption(Landroid/app/enterprise/ContextInfo;Z)V
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SecurityPolicy"

    const-string v3, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SecurityPolicy"

    const-string v3, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SecurityPolicy"

    const-string v3, "setInternalStorageEncryption : device is already encrypted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_3
    const-string v2, "SecurityPolicy"

    const-string v3, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.app.action.START_ENCRYPTION"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested encryption of internal storage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .end local v12    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .local v13, "userId":I
    if-nez v13, :cond_5

    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_4
    const-string v2, "SecurityPolicy"

    const-string v3, "setInternalStorageEncryption"

    move/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "SecurityPolicy"

    const-string v3, "setInternalStorageEncryption calling gearPolicyManager  "

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_5
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v13    # "userId":I
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "SecurityPolicy"

    const-string v3, "is Internal Storage Encrypted?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-nez v3, :cond_0

    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v6, "SecurityPolicy"

    const-string v7, "setRequireDeviceEncryption"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "SecurityPolicy"

    const-string v7, "setRequireDeviceEncryption calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRequireDeviceEncryption Ex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-nez v3, :cond_0

    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v6, "SecurityPolicy"

    const-string v7, "setRequireStorageCardEncryption"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "SecurityPolicy"

    const-string v7, "setRequireStorageCardEncryption calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRequireStorageCardEncryption Ex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startBannerService(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    sget-object v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intentBanner":Landroid/content/Intent;
    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .end local v0    # "intentBanner":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method

.method public unlockCredentialStorage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public wipeDevice(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v2, "Security"

    const-string v3, "wipeDevice"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "SecurityPolicy"

    const-string v3, "GearPolicy SetBooleanTypePolicy wipeDevice"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
