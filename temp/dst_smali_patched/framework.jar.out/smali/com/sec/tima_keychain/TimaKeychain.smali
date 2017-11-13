.class public Lcom/sec/tima_keychain/TimaKeychain;
.super Ljava/lang/Object;
.source "TimaKeychain.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TIMAKeyChain"

.field private static final TIMA_SERVICE:Ljava/lang/String; = "tima"

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "TIMAKeyChain"

    const-string v13, "getAliasListFromTimaKeystore with package"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string v12, ""

    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    const-string v11, "TIMAKeyChain"

    const-string v12, "getAliasListFromTimaKeystore received empty/null packageName"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v3

    .local v3, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    invoke-virtual {v3}, Landroid/sec/enterprise/ClientCertificateManager;->getCertificateAliasesHavingPrivateKey()Ljava/util/List;

    move-result-object v2

    .local v2, "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, p0}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v10

    .local v10, "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_3

    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    move v8, v7

    .local v8, "isWifiAliasesExist":Z
    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .local v7, "isPrivKeyAliasesExist":Z
    :goto_2
    if-nez v7, :cond_5

    const-string v11, "TIMAKeyChain"

    const-string v12, "all the aliases not valid since doenst have private key pair"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "isPrivKeyAliasesExist":Z
    .end local v8    # "isWifiAliasesExist":Z
    .restart local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v8, v11

    goto :goto_1

    .restart local v8    # "isWifiAliasesExist":Z
    :cond_4
    move v7, v11

    goto :goto_2

    .restart local v7    # "isPrivKeyAliasesExist":Z
    :cond_5
    if-nez v8, :cond_6

    if-eqz v7, :cond_9

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "tempAlias":Ljava/lang/String;
    if-eqz v8, :cond_8

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v1, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v7, :cond_7

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-interface {v1, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isPrivKeyAliasesExist":Z
    .end local v8    # "isWifiAliasesExist":Z
    .end local v9    # "tempAlias":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v4    # "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    const-string v11, "TIMAKeyChain"

    const-string v12, "Exception"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_4

    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v4    # "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "isPrivKeyAliasesExist":Z
    .restart local v8    # "isWifiAliasesExist":Z
    .restart local v10    # "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object v0, v1

    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 12
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    sget-object v10, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v8, 0x0

    .local v8, "x509CertChain":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v9, "TIMAKeyChain"

    const-string v11, "getCertificateChainFromTimaKeystore called"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string v9, ""

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    const-string v9, "TIMAKeyChain"

    const-string v11, "getCertificateChainFromTimaKeystore received empty/null alias"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v8

    :cond_2
    :try_start_1
    const-string v9, "TimaKeyStore"

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v9, "PKCS11"

    const-string v11, "SECPkcs11"

    invoke-static {v9, v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .local v7, "secpkcs11Ks":Ljava/security/KeyStore;
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v7, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .local v2, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_1

    array-length v9, v2

    new-array v8, v9, [Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v2

    if-ge v4, v9, :cond_1

    aget-object v9, v2, v4

    check-cast v9, Ljava/security/cert/X509Certificate;

    aput-object v9, v8, v4
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "certChain":[Ljava/security/cert/Certificate;
    .end local v4    # "i":I
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "secpkcs11Ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/security/NoSuchProviderException;
    :try_start_2
    const-string v9, "TIMAKeyChain"

    const-string v11, "java.security.NoSuchProviderException"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Ljava/security/NoSuchProviderException;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    :catch_1
    move-exception v3

    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_3
    const-string v9, "TIMAKeyChain"

    const-string v11, "KeyStoreException"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_2
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    const-string v9, "TIMAKeyChain"

    const-string v11, "IOException"

    invoke-static {v9, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "TIMAKeyChain"

    const-string v11, "NoSuchAlgorithmException"

    invoke-static {v9, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v1

    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v9, "TIMAKeyChain"

    const-string v11, "CertificateException"

    invoke-static {v9, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 11
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    sget-object v9, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v6, 0x0

    .local v6, "opensslPKey":Ljava/security/PrivateKey;
    :try_start_0
    const-string v8, "TimaKeyStore"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .local v4, "keyStore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v8, "PKCS11"

    const-string v10, "SECPkcs11"

    invoke-static {v8, v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .local v7, "secpkcs11Ks":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v8, "TIMAKeyChain"

    const-string v10, "getPrivateKeyFromOpenSSL called"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const-string v8, "TIMAKeyChain"

    const-string v10, "getPrivateKeyFromOpenSSL received empty/null alias"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "secpkcs11Ks":Ljava/security/KeyStore;
    :goto_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v6

    .restart local v4    # "keyStore":Ljava/security/KeyStore;
    .restart local v7    # "secpkcs11Ks":Ljava/security/KeyStore;
    :cond_1
    :try_start_2
    new-instance v5, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v5}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    .local v5, "opensslHelper":Lcom/sec/smartcard/openssl/OpenSSLHelper;
    invoke-virtual {v5, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngine(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string v8, "TIMAKeyChain"

    const-string v10, "Unable to register openssl engine"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .end local v5    # "opensslHelper":Lcom/sec/smartcard/openssl/OpenSSLHelper;
    .end local v7    # "secpkcs11Ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/security/NoSuchProviderException;
    :try_start_3
    const-string v8, "TIMAKeyChain"

    const-string v10, "java.security.NoSuchProviderException"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/security/NoSuchProviderException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/security/KeyStoreException;
    :try_start_4
    const-string v8, "TIMAKeyChain"

    const-string v10, "KeyStoreException"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/security/KeyStoreException;
    :catch_2
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    const-string v8, "TIMAKeyChain"

    const-string v10, "IOException"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "TIMAKeyChain"

    const-string v10, "NoSuchAlgorithmException"

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v1

    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v8, "TIMAKeyChain"

    const-string v10, "CertificateException"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static isTimaKeystoreAndCCMEnabledForCaller()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "isCCMEnabled":Z
    const/4 v2, 0x0

    .local v2, "isTimaKeystoreEnabled":Z
    const-string v8, "TIMAKeyChain"

    const-string v9, "isTimaKeystoreAndCCMEnabled called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v8, "tima"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    .local v3, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForCaller()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isAccessControlMethodPassword()Z

    move-result v8

    if-nez v8, :cond_2

    move v1, v6

    :cond_0
    :goto_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v5

    .local v5, "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    .end local v5    # "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    return v6

    .restart local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :cond_2
    move v1, v7

    goto :goto_0

    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :catch_0
    move-exception v4

    .local v4, "re":Landroid/os/RemoteException;
    const-string v8, "TIMAKeyChain"

    const-string v9, "RemoteException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_3
    move v6, v7

    goto :goto_2
.end method

.method public static isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "isCCMEnabled":Z
    const/4 v2, 0x0

    .local v2, "isTimaKeystoreEnabled":Z
    const-string v8, "TIMAKeyChain"

    const-string v9, "isTimaKeystoreAndCCMEnabledForPackage called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const-string v8, "TIMAKeyChain"

    const-string v9, "isTimaKeystoreAndCCMEnabledForPackage received empty/null package name"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    :goto_1
    return v6

    :cond_1
    :try_start_0
    const-string v8, "tima"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    .local v3, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isAccessControlMethodPassword()Z

    move-result v8

    if-nez v8, :cond_4

    move v1, v6

    :cond_2
    :goto_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v5

    .local v5, "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v5, :cond_3

    invoke-virtual {v5, p0}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    .end local v5    # "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_3
    :goto_3
    const-string v8, "TIMAKeyChain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCCMEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TIMAKeyChain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isTimaKeystoreEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :cond_4
    move v1, v7

    goto :goto_2

    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :catch_0
    move-exception v4

    .local v4, "re":Landroid/os/RemoteException;
    const-string v8, "TIMAKeyChain"

    const-string v9, "RemoteException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_5
    move v6, v7

    goto :goto_1
.end method
