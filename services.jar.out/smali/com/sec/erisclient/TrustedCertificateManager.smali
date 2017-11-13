.class public Lcom/sec/erisclient/TrustedCertificateManager;
.super Ljava/lang/Object;
.source "TrustedCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/erisclient/TrustedCertificateManager$1;,
        Lcom/sec/erisclient/TrustedCertificateManager$Singleton;,
        Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCACerts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyStores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile mReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sec/erisclient/TrustedCertificateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v6, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v6, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mKeyStores:Ljava/util/ArrayList;

    .line 45
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "AndroidCAStore"

    aput-object v7, v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 50
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 51
    .local v5, "store":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 52
    iget-object v6, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mKeyStores:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v5    # "store":Ljava/security/KeyStore;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load KeyStore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/erisclient/TrustedCertificateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/erisclient/TrustedCertificateManager$1;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/erisclient/TrustedCertificateManager;-><init>()V

    return-void
.end method

.method private fetchCertificates(Ljava/util/Hashtable;Ljava/security/KeyStore;)V
    .locals 5
    .param p2, "store"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "certs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 142
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 147
    .local v2, "cert":Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    instance-of v4, v2, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    .line 149
    check-cast v2, Ljava/security/cert/X509Certificate;

    .end local v2    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 155
    .local v3, "ex":Ljava/security/KeyStoreException;
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 157
    .end local v3    # "ex":Ljava/security/KeyStoreException;
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/sec/erisclient/TrustedCertificateManager;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sec/erisclient/TrustedCertificateManager$Singleton;->mInstance:Lcom/sec/erisclient/TrustedCertificateManager;

    return-object v0
.end method

.method private loadCertificates()V
    .locals 5

    .prologue
    .line 121
    sget-object v3, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "Load cached CA certificates"

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 123
    .local v0, "certs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v3, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mKeyStores:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore;

    .line 125
    .local v2, "store":Ljava/security/KeyStore;
    invoke-direct {p0, v0, v2}, Lcom/sec/erisclient/TrustedCertificateManager;->fetchCertificates(Ljava/util/Hashtable;Ljava/security/KeyStore;)V

    goto :goto_0

    .line 127
    .end local v2    # "store":Ljava/security/KeyStore;
    :cond_0
    iput-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    .line 128
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLoaded:Z

    .line 129
    sget-object v3, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "Cached CA certificates loaded"

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public getAllCACertificates()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 205
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 206
    .local v0, "certs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 207
    return-object v0
.end method

.method public getCACertificateFromAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, "certificate":Ljava/security/cert/X509Certificate;
    iget-object v6, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    iget-object v6, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    invoke-virtual {v6, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "certificate":Ljava/security/cert/X509Certificate;
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 171
    .restart local v2    # "certificate":Ljava/security/cert/X509Certificate;
    iget-object v6, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 193
    :cond_0
    :goto_0
    return-object v2

    .line 176
    :cond_1
    iget-object v6, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mKeyStores:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore;

    .line 180
    .local v5, "store":Ljava/security/KeyStore;
    :try_start_0
    invoke-virtual {v5, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 181
    .local v1, "cert":Ljava/security/cert/Certificate;
    if-eqz v1, :cond_2

    instance-of v6, v1, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_2

    .line 183
    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCACertificates(Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;)Ljava/util/Hashtable;
    .locals 4
    .param p1, "source"    # Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 218
    .local v1, "certs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v3, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 219
    iget-object v3, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, "alias":Ljava/lang/String;
    # invokes: Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->getPrefix()Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;->access$100(Lcom/sec/erisclient/TrustedCertificateManager$TrustedCertificateSource;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mCACerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 226
    .end local v0    # "alias":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 227
    return-object v1
.end method

.method public load()Lcom/sec/erisclient/TrustedCertificateManager;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Ensure cached CA certificates are loaded"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mReload:Z

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mReload:Z

    .line 105
    invoke-direct {p0}, Lcom/sec/erisclient/TrustedCertificateManager;->loadCertificates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 112
    return-object p0

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public reset()Lcom/sec/erisclient/TrustedCertificateManager;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/sec/erisclient/TrustedCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Force reload of cached CA certificates on next load"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/erisclient/TrustedCertificateManager;->mReload:Z

    .line 87
    return-object p0
.end method
