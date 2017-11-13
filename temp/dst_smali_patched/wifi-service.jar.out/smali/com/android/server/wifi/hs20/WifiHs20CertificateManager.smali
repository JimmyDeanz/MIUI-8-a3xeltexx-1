.class public Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;
.super Ljava/lang/Object;
.source "WifiHs20CertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$1;,
        Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;
    }
.end annotation


# static fields
.field private static final HS20ESTKeyStorePath:Ljava/lang/String; = "/data/misc/wifi/hs20/HSClientCertESTKeyStore_"

.field public static HS20_CA_KEYSTORE:Ljava/lang/String; = null

.field public static HS20_KEYSTORE_PATH:Ljava/lang/String; = null

.field private static final OSU_SERVER:Ljava/lang/String; = "OSU"

.field private static final TAG:Ljava/lang/String; = "HS20CertificateManager"


# instance fields
.field private CA:[Ljava/security/cert/X509Certificate;

.field private DEFAULT_CRED_ID:I

.field private HS20_NEG_KEYSTORE:Ljava/lang/String;

.field public MAX_CA:I

.field private PEM_DEFAULT_LENGTH:I

.field private certLength:I

.field private enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

.field private hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

.field private hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

.field private hs20ValidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

.field private keyPass:Ljava/lang/String;

.field private ks:Ljava/security/KeyStore;

.field private mCacerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

.field private mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

.field private mCertID:I

.field public mContext:Landroid/content/Context;

.field private no_cA:I

.field private policyUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

.field public rootAAACAFP:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "/data/misc/wifi/hs20/"

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    const-string v0, "HS20CAKeyStore.bks"

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->no_cA:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->MAX_CA:I

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->certLength:I

    const/16 v1, 0x40

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->PEM_DEFAULT_LENGTH:I

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertID:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->DEFAULT_CRED_ID:I

    const-string v1, "HS20NegKeyStore.bks"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_NEG_KEYSTORE:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->MAX_CA:I

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->CA:[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    invoke-direct {v1}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    invoke-virtual {v1}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genPasswd1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;)Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20ValidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    return-object v0
.end method

.method private findRootCAFP([Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "fp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-object v2, p1, v1

    check-cast v2, Ljava/security/cert/X509Certificate;

    .local v2, "temp":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->getSHA256Hash(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .end local v2    # "temp":Ljava/security/cert/X509Certificate;
    :goto_1
    return-object v3

    .restart local v2    # "temp":Ljava/security/cert/X509Certificate;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "temp":Ljava/security/cert/X509Certificate;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getAlias(Ljava/security/KeyStore;I)Ljava/lang/String;
    .locals 6
    .param p1, "ks2"    # Ljava/security/KeyStore;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "baseAlias":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "subString":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->certLength:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HS20CANo_"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->certLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v2    # "subString":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getCACert()Ljava/security/cert/X509Certificate;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v4, "HS20CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClientCert: certs size :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "temp":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method private getID()I
    .locals 4

    .prologue
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .local v1, "mDB":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->DEFAULT_CRED_ID:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    .local v0, "mCredential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    return v2
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const-string v3, "HS20CertificateManager"

    const-string v4, "hexify"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x10

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .local v1, "hexDigits":[C
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private saveCA([Ljava/security/cert/Certificate;)V
    .locals 11
    .param p1, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->findRootCAFP([Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    const-string v8, "HS20CertificateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveCA:obtained certificate chain size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "fp of root CA: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    if-nez v8, :cond_1

    const-string v8, "HS20CertificateManager"

    const-string v9, "saveCA:rootAAACAFP is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/misc/wifi/hs20/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".pem"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    :try_start_1
    iget v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->no_cA:I

    if-ge v7, v8, :cond_7

    aget-object v1, p1, v7

    check-cast v1, Ljava/security/cert/X509Certificate;

    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v0

    .local v0, "cacert":[B
    const-string v8, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v8, v0

    if-ge v6, v8, :cond_6

    array-length v8, v0

    sub-int/2addr v8, v6

    iget v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->PEM_DEFAULT_LENGTH:I

    if-le v8, v9, :cond_3

    iget v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->PEM_DEFAULT_LENGTH:I

    invoke-virtual {v5, v0, v6, v8}, Ljava/io/FileOutputStream;->write([BII)V

    :goto_3
    const-string v8, "\n"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    iget v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->PEM_DEFAULT_LENGTH:I

    add-int/2addr v6, v8

    goto :goto_2

    :cond_3
    array-length v8, v0

    iget v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->PEM_DEFAULT_LENGTH:I

    rem-int/2addr v8, v9

    if-lez v8, :cond_4

    array-length v8, v0

    iget v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->PEM_DEFAULT_LENGTH:I

    rem-int/2addr v8, v9

    invoke-virtual {v5, v0, v6, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .end local v0    # "cacert":[B
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "i":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "j":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "cacert":[B
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_4
    :try_start_4
    array-length v8, v0

    sub-int/2addr v8, v6

    invoke-virtual {v5, v0, v6, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .end local v0    # "cacert":[B
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "i":I
    :catchall_0
    move-exception v8

    move-object v4, v5

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "j":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_6
    throw v8

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "cacert":[B
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_6
    :try_start_6
    const-string v8, "-----END CERTIFICATE-----\n"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "cacert":[B
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "i":I
    :cond_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".pem"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->setSecuredAccess(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_8

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "j":I
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_4
.end method

.method private setSecuredAccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 770 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .local v1, "su":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chown system:wifi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "su":Ljava/lang/Process;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private storeCACerts()Z
    .locals 7

    .prologue
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "mFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->createKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->getKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    const-string v2, "HS20CertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeCACerts: size  of keystore before storing CAcerts:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    invoke-virtual {v4}, Ljava/security/KeyStore;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->setCerts(Ljava/util/Collection;Ljava/security/KeyStore;I)Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->storeKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    const-string v2, "HS20CertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeCACerts:size of the keystore after storing CAcerts:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    invoke-virtual {v4}, Ljava/security/KeyStore;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v2, "HS20CertificateManager"

    const-string v3, "storeCACerts:got an exception in storing retrieved Cacerts so returning false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeToPPSMO()V
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .local v0, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->rootAAACAFP:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setTrustRootFP(Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public fetchKeyManFac(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 14
    .param p1, "providerIssuerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v10, "HS20CertificateManager"

    const-string v11, "fetchKeyManFac(String providerIssuerName)"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->MAX_CA:I

    new-array v2, v10, [Ljava/security/cert/X509Certificate;

    .local v2, "fetchCert":[Ljava/security/cert/X509Certificate;
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .local v8, "password":[C
    const/4 v7, 0x0

    .local v7, "noCertificates":I
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .local v6, "negKeyStore":Ljava/security/KeyStore;
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_NEG_KEYSTORE:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    sget-object v12, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_NEG_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v6, v13}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->createKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V

    :cond_0
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    sget-object v12, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_NEG_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v6, v13}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->getKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    const-string v10, "AndroidCAStore"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    invoke-virtual {v10}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, "mAliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const-string v10, "HS20CertificateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "aliases:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    invoke-virtual {v12}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->ks:Ljava/security/KeyStore;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, [Ljava/security/cert/X509Certificate;

    move-object v0, v10

    check-cast v0, [Ljava/security/cert/X509Certificate;

    move-object v9, v0

    .local v9, "tempCert":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v9

    if-ge v3, v10, :cond_3

    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    aget-object v10, v9, v3

    aput-object v10, v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v10, v9, v3

    invoke-virtual {v6, p1, v10}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    iget-object v11, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    sget-object v12, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_NEG_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v6, v13}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;->storeKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "i":I
    .end local v5    # "mAliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "negKeyStore":Ljava/security/KeyStore;
    .end local v9    # "tempCert":[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "HS20CertificateManager"

    const-string v11, "got an exception"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v4

    .restart local v5    # "mAliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6    # "negKeyStore":Ljava/security/KeyStore;
    :cond_4
    :try_start_1
    invoke-virtual {v4, v6, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public fetchKeyManFac(ILjava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 9
    .param p1, "credentialID"    # I
    .param p2, "serverType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v8, "OSU"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return-object v7

    :cond_0
    const-string v7, "HS20CertificateManager"

    const-string v8, "fetchKeyManFac(int credentialID)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->getCertID(I)V

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/misc/wifi/hs20/HSClientCertESTKeyStore_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".p12"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "clientKeyStore":Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .local v6, "password":[C
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .local v4, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v2, 0x0

    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .local v5, "keyStore":Ljava/security/KeyStore;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v3, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "keyStore":Ljava/security/KeyStore;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v4, v7, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v7, "HS20CertificateManager"

    const-string v8, "got an exception "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_6
    throw v7

    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "keyStore":Ljava/security/KeyStore;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public fetchTrustManagerFactory(Ljava/lang/String;)[Ljavax/net/ssl/TrustManager;
    .locals 4
    .param p1, "serverType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "HS20CertificateManager"

    const-string v1, "fetchTrustManagerFactory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->server:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$CertTrustManager;-><init>(Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;Lcom/android/server/wifi/hs20/WifiHs20CertificateManager$1;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getCertID(I)V
    .locals 3
    .param p1, "credentialID"    # I

    .prologue
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .local v1, "mDB":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    .local v0, "mCredential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertID:I

    return-void
.end method

.method public getOsuCACerts()[Ljava/security/cert/Certificate;
    .locals 12

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->getID()I

    move-result v6

    .local v6, "id":I
    new-instance v2, Ljava/io/File;

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_KEYSTORE_PATH:Ljava/lang/String;

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .local v7, "ks":Ljava/security/KeyStore;
    const/4 v8, 0x0

    .local v8, "temp":[Ljava/security/cert/Certificate;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->keyPass:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v9, "HS20CertificateManager"

    const-string v10, "came to chain up method"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->certLength:I

    new-array v8, v9, [Ljava/security/cert/Certificate;

    invoke-direct {p0, v7, v6}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->getAlias(Ljava/security/KeyStore;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "baseAlias":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->certLength:I

    if-ge v5, v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v9

    aput-object v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v9, "HS20CertificateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOsuCACerts: certs size :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .end local v0    # "baseAlias":Ljava/lang/String;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "i":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-object v8

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "baseAlias":Ljava/lang/String;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "i":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "baseAlias":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v9

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public getSHA256Hash(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .local v1, "decodedByte":[B
    const-string v3, "SHA256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    const-string v3, "HS20CertificateManager"

    const-string v4, "verifyAAATrustRoot:sha256 digest complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .local v0, "AAAFingerprintSHA256":[B
    invoke-static {v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hexify([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public performEnrollment(Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;)Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    .locals 4
    .param p1, "mEnrollmentParameters"    # Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    .prologue
    const-string v2, "HS20CertificateManager"

    const-string v3, "performEnrollment"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;-><init>(Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;Landroid/content/Context;)V

    .local v0, "certEnrollment":Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;
    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;->certEnrollment()Lcom/android/server/wifi/hs20/WifiHs20CredDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "certEnrollment":Lcom/android/server/wifi/hs20/WifiHs20CertificateEnrollment;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public retrieveAAATrustRoot(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "AAAServerTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    const/4 v7, 0x0

    const-string v6, "HS20CertificateManager"

    const-string v8, "retrieveAAATrustRoot:"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "mAAAServerTrustRoot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->MAX_CA:I

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->CA:[Ljava/security/cert/X509Certificate;

    iput v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->no_cA:I

    const/4 v5, 0x0

    .local v5, "verify":Z
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v6}, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iput-boolean v7, v6, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v6, v8, v9}, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;)V

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    const-string v8, "application/pkix-cert"

    iput-object v8, v6, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->contentType:Ljava/lang/String;

    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    invoke-direct {v6, v8, v9}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20CertDetails;)V

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCacerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    if-eqz p1, :cond_4

    :try_start_0
    const-string v6, "HS20CertificateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveAAATrustRoot:AAAtrustRoot is not empty,AAAServerTrustRootList size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    move-object v4, v0

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCacerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    iget-object v8, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->getCACerts(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    if-eqz v6, :cond_0

    const-string v6, "HS20CertificateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveAAATrustRoot:ca cert size :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v9, v9, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-boolean v5, v6, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certStatus:Z

    :cond_0
    const-string v6, "HS20CertificateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveAAATrustRoot:mCertDetails.certStatus "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    iget-object v6, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->verifyTrustRoot(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move v6, v7

    .end local v3    # "index":I
    :goto_1
    return v6

    .restart local v3    # "index":I
    :cond_1
    const-string v6, "HS20CertificateManager"

    const-string v8, "retrieveAAATrustRoot: verifyAAA fail"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v6, "HS20CertificateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveAAATrustRoot:AAACA chain size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->CA:[Ljava/security/cert/X509Certificate;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->CA:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->saveCA([Ljava/security/cert/Certificate;)V

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->storeCACerts()Z

    .end local v3    # "index":I
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->writeToPPSMO()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v6, "HS20CertificateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveAAATrustRoot:verify AAA status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->getOsuCACerts()[Ljava/security/cert/Certificate;

    move-result-object v1

    .local v1, "chain":[Ljava/security/cert/Certificate;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->saveCA([Ljava/security/cert/Certificate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "HS20CertificateManager"

    const-string v7, "retrieveAAATrustRoot:got an exception so will be returning true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public retrievePolicyTrustRoot(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "policySubscriptionUpdateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "HS20CertificateManager"

    const-string v6, "retrievePolicyTrustRoot "

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-direct {v3}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->policyUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    const/4 v2, 0x0

    .local v2, "verify":Z
    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v3}, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iput-boolean v4, v3, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v3, v6, v7}, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;)V

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    const-string v6, "application/pkix-cert"

    iput-object v6, v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->contentType:Ljava/lang/String;

    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    invoke-direct {v3, v6, v7}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20CertDetails;)V

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCacerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "HS20CertificateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrievePolicyTrustRoot:PolicytrustRoot is not empty,AAAServerTrustRootList size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->policyUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCacerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->policyUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->getCACerts(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-boolean v2, v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certStatus:Z

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->policyUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->verifyTrustRoot(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "HS20CertificateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrievePolicyTrustRoot: verifyRemTrustRoot :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    move v3, v4

    .end local v1    # "index":I
    :goto_1
    return v3

    .restart local v1    # "index":I
    :cond_1
    const-string v3, "HS20CertificateManager"

    const-string v4, "retrievePolicyTrustRoot: verifyPolicy fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "index":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->storeCACerts()Z

    :goto_2
    move v3, v2

    goto :goto_1

    :cond_4
    const-string v3, "HS20CertificateManager"

    const-string v4, "retrieveServerTrustRoot:policysubscription update is  null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HS20CertificateManager"

    const-string v4, "retrievePolicyTrustRoot:got an exception so will be returning true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v5

    goto :goto_1
.end method

.method public retrieveRemTrustRoot(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "policySubscriptionUpdateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;>;"
    const/4 v4, 0x0

    const-string v3, "HS20CertificateManager"

    const-string v5, "retrieveRemTrustRoot"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    invoke-direct {v3}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    const/4 v2, 0x0

    .local v2, "verify":Z
    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v3}, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iput-boolean v4, v3, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->enrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    invoke-direct {v3, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;)V

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    const-string v5, "application/pkix-cert"

    iput-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->contentType:Ljava/lang/String;

    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    invoke-direct {v3, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20CertDetails;)V

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCacerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "HS20CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveRemTrustRoot:PolicytrustRoot is not empty,RemServerTrustRootList size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCacerts:Lcom/android/server/wifi/hs20/WifiHs20CACerts;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/hs20/WifiHs20CACerts;->getCACerts(Ljava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    if-eqz v3, :cond_0

    const-string v3, "HS20CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveRemTrustRoot:ca cert size :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certs:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->mCertDetails:Lcom/android/server/wifi/hs20/WifiHs20CertDetails;

    iget-boolean v2, v3, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certStatus:Z

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->verifyTrustRoot(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "HS20CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveRemTrustRoot: verifyRemTrustRoot :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    move v3, v4

    .end local v1    # "index":I
    :goto_1
    return v3

    .restart local v1    # "index":I
    :cond_1
    const-string v3, "HS20CertificateManager"

    const-string v5, "retrieveRemTrustRoot: verifyRem fail"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "index":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->storeCACerts()Z

    :goto_2
    move v3, v2

    goto :goto_1

    :cond_4
    const-string v3, "HS20CertificateManager"

    const-string v4, "retrieveServerTrustRoot:Rem server Trustroot is   null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HS20CertificateManager"

    const-string v4, "retrieveRemTrustRoot:got an exception so will be returning true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setParams(Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->hs20ValidationParameters:Lcom/android/server/wifi/hs20/WifiHs20ValidationParameters;

    return-void
.end method

.method public verifyTrustRoot(Ljava/lang/String;)Z
    .locals 7
    .param p1, "fp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v4, "HS20CertificateManager"

    const-string v5, "verifyTrustRoot"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->getCACert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    .local v2, "fingerPrint":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "verify":Z
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->getSHA256Hash(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "HS20CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyTrustRoot:mAAAServerTrustRoot.certSHA256FingerPrint  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HS20CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyTrustRoot:certificate fingerPrint  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->CA:[Ljava/security/cert/X509Certificate;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->no_cA:I

    aput-object v0, v4, v5

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->no_cA:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;->no_cA:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_1
    const-string v4, "HS20CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyTrustRoot:verify"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HS20CertificateManager"

    const-string v5, "got an excption will return true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x1

    goto :goto_0
.end method
