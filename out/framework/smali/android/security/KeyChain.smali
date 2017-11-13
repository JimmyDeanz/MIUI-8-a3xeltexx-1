.class public final Landroid/security/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyChain$KeyChainConnection;,
        Landroid/security/KeyChain$AliasResponse;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field private static final ANDROID_SOURCE:Ljava/lang/String; = "android"

.field private static final CERT_INSTALLER_PACKAGE:Ljava/lang/String; = "com.android.certinstaller"

.field public static final EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final KEYCHAIN_PACKAGE:Ljava/lang/String; = "com.android.keychain"

.field private static final TAG:Ljava/lang/String; = "KeyChain"

.field private static final UCM_KEYCHAIN_SCHEME:Ljava/lang/String; = "ucmkeychain"

.field private static final UCS_SSL_ENGINE:Ljava/lang/String; = "ucsengine"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    return-void
.end method

.method public static bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 679
    if-nez p0, :cond_0

    .line 680
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "context == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 682
    :cond_0
    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 683
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 684
    .local v4, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v3, Landroid/security/KeyChain$1;

    invoke-direct {v3, v4}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 698
    .local v3, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Landroid/security/IKeyChainService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 700
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, v1, v3, v7, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 705
    .local v2, "isBound":Z
    if-nez v2, :cond_1

    .line 706
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "could not bind to KeyChainService"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 708
    :cond_1
    new-instance v6, Landroid/security/KeyChain$KeyChainConnection;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/IKeyChainService;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v3, v5, v7}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Landroid/security/KeyChain$1;)V

    return-object v6
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 370
    if-nez p0, :cond_0

    .line 371
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_0
    if-nez p1, :cond_1

    .line 374
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "response == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keychain.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.keychain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string/jumbo v1, "response"

    new-instance v2, Landroid/security/KeyChain$AliasResponse;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 379
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    const-string v1, "alias"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v1, "sender"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "alias"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v4, 0x0

    .line 307
    .local v4, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 308
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-eq p5, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    .line 312
    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 313
    return-void

    .line 308
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static createInstallIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 253
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "callingPackageName":Ljava/lang/String;
    const-string/jumbo v4, "senderpackagename"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v4, "KeyChain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packagename from createInstallIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "callingPackageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    const-string v4, "com.android.certinstaller"

    const-string v5, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    return-object v1

    .line 256
    :catch_0
    move-exception v3

    .line 257
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "KeyChain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while extracting packagename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 712
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 713
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 714
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_0
    return-void
.end method

.method public static getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "certChain":[Ljava/security/cert/X509Certificate;
    if-nez p1, :cond_0

    .line 492
    new-instance v13, Ljava/lang/NullPointerException;

    const-string v14, "alias == null"

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 497
    :cond_0
    move-object/from16 v9, p1

    .line 499
    .local v9, "originalAlias":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/security/KeyChain;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 500
    invoke-static/range {p1 .. p1}, Landroid/security/KeyChain;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 501
    .local v10, "provider":Ljava/lang/String;
    const-string v13, "KeyChain"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Provider : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz v10, :cond_1

    .line 503
    invoke-static/range {p1 .. p1}, Landroid/security/KeyChain;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 504
    const-string v13, "KeyChain"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "originalAlias : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v13, "android"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 507
    const-string v13, "KeyChain"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Provider is ANDROID_SOURCE, flow default sequence with alias : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 p1, v9

    .line 533
    .end local v10    # "provider":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "ccmCertChain":[Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sec/tima_keychain/TimaKeychain;->getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 537
    new-instance v12, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v12}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 538
    .local v12, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    if-eqz v1, :cond_2

    array-length v13, v1

    if-lez v13, :cond_2

    .line 539
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v4

    .line 541
    .local v4, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, [Ljava/security/cert/X509Certificate;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 552
    .end local v1    # "ccmCertChain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v12    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_2
    :goto_1
    if-nez v2, :cond_6

    .line 553
    invoke-static/range {p0 .. p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v6

    .line 555
    .local v6, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v7

    .line 556
    .local v7, "keyChainService":Landroid/security/IKeyChainService;
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 557
    .local v3, "certificateBytes":[B
    if-nez v3, :cond_5

    .line 558
    const/4 v13, 0x0

    .line 573
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 577
    .end local v3    # "certificateBytes":[B
    .end local v6    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v7    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_2
    return-object v13

    .line 510
    .restart local v10    # "provider":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v8

    .line 511
    .local v8, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v8, :cond_1

    .line 513
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Landroid/sec/enterprise/IEDMProxy;->getCertificateChain(Ljava/lang/String;)[B

    move-result-object v3

    .line 514
    .restart local v3    # "certificateBytes":[B
    if-nez v3, :cond_4

    .line 515
    const/4 v13, 0x0

    goto :goto_2

    .line 517
    :cond_4
    new-instance v12, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v12}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 518
    .restart local v12    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v3}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v4

    .line 520
    .restart local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 521
    .end local v3    # "certificateBytes":[B
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v12    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_0
    move-exception v5

    .line 522
    .local v5, "e":Ljava/security/cert/CertificateException;
    new-instance v13, Landroid/security/KeyChainException;

    invoke-direct {v13, v5}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 523
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v11

    .line 524
    .local v11, "re":Landroid/os/RemoteException;
    const-string v13, "KeyChain"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remote Exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 544
    .end local v8    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v10    # "provider":Ljava/lang/String;
    .end local v11    # "re":Landroid/os/RemoteException;
    .restart local v1    # "ccmCertChain":[Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v5

    .line 545
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v13, "KeyChain"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error retrieving certificate from CCM for alias: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1

    .line 547
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v5

    .line 548
    .local v5, "e":Ljava/security/cert/CertificateException;
    new-instance v13, Landroid/security/KeyChainException;

    invoke-direct {v13, v5}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 561
    .end local v1    # "ccmCertChain":[Ljava/security/cert/X509Certificate;
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "certificateBytes":[B
    .restart local v6    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v7    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_5
    :try_start_3
    new-instance v12, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v12}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 562
    .restart local v12    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v3}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v4

    .line 564
    .restart local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 573
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto/16 :goto_2

    .line 565
    .end local v3    # "certificateBytes":[B
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v12    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_4
    move-exception v5

    .line 566
    .restart local v5    # "e":Ljava/security/cert/CertificateException;
    :try_start_4
    new-instance v13, Landroid/security/KeyChainException;

    invoke-direct {v13, v5}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 573
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v13

    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v13

    .line 567
    :catch_5
    move-exception v5

    .line 568
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_5
    new-instance v13, Landroid/security/KeyChainException;

    invoke-direct {v13, v5}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 569
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_6
    move-exception v5

    .line 571
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v13, Landroid/security/KeyChainException;

    invoke-direct {v13, v5}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_6
    move-object v13, v2

    .line 577
    goto/16 :goto_2
.end method

.method public static getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 411
    const/4 v5, 0x0

    .line 412
    .local v5, "privateKey":Ljava/security/PrivateKey;
    if-nez p1, :cond_0

    .line 413
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 418
    :cond_0
    move-object v4, p1

    .line 420
    .local v4, "originalAlias":Ljava/lang/String;
    invoke-static {p1}, Landroid/security/KeyChain;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 421
    invoke-static {p1}, Landroid/security/KeyChain;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    .local v6, "provider":Ljava/lang/String;
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-eqz v6, :cond_1

    .line 424
    invoke-static {p1}, Landroid/security/KeyChain;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_3

    .line 428
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider is ANDROID_SOURCE, flow default sequence with alias : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object p1, v4

    .line 441
    .end local v6    # "provider":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v7

    if-ne v7, v10, :cond_2

    .line 443
    :try_start_0
    invoke-static {p1}, Lcom/sec/tima_keychain/TimaKeychain;->getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 450
    :cond_2
    :goto_1
    if-nez v5, :cond_6

    .line 451
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1

    .line 453
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 454
    .local v2, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "keyId":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 456
    new-instance v7, Landroid/security/KeyChainException;

    const-string v8, "keystore had a problem"

    invoke-direct {v7, v8}, Landroid/security/KeyChainException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    .end local v2    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v3    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v7

    .line 432
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v6    # "provider":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Landroid/security/KeyChain;->getUCMPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v7

    .line 472
    .end local v6    # "provider":Ljava/lang/String;
    :goto_2
    return-object v7

    .line 436
    :cond_4
    const-string v7, "KeyChain"

    const-string v8, "it is not UCM uri type"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :catch_1
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error retrieving key from CCM for alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 459
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v2    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v3    # "keyId":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 469
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_2

    .line 463
    .end local v2    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v3    # "keyId":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 465
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_4
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 466
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 467
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_6
    move-object v7, v5

    .line 472
    goto :goto_2
.end method

.method private static getRawAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 766
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 744
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 745
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 746
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Source is not known. Invalid URI."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 749
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 750
    .local v3, "sourcePath":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 751
    .local v2, "resourcetype":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 752
    .local v4, "uriuid":Ljava/lang/String;
    const-string v5, "KeyChain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSource: source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resource type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v2    # "resourcetype":Ljava/lang/String;
    .end local v3    # "sourcePath":Ljava/lang/String;
    .end local v4    # "uriuid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 757
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getUCMPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 771
    :try_start_0
    const-string/jumbo v2, "ucsengine"

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    .line 772
    .local v1, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    invoke-virtual {v1, p0}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 775
    .end local v1    # "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :goto_0
    return-object v2

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "KeyChain"

    const-string v3, "InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 614
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RSA"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    .line 618
    :cond_0
    invoke-static {p0}, Landroid/security/KeyChain;->isKeyAlgorithmSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 587
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "algUpper":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isKeyChainUri(Ljava/lang/String;)Z
    .locals 7
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 722
    if-nez p0, :cond_1

    .line 736
    :cond_0
    :goto_0
    return v2

    .line 725
    :cond_1
    const-string v4, "KeyChain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isKeyChainUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 727
    .local v0, "parsedUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 734
    const-string/jumbo v4, "ucmkeychain"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 735
    goto :goto_0
.end method

.method public static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 628
    if-nez p0, :cond_0

    .line 629
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bytes == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 632
    :cond_0
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 633
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 634
    .local v0, "cert":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cert":Ljava/security/cert/Certificate;
    return-object v0

    .line 635
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
