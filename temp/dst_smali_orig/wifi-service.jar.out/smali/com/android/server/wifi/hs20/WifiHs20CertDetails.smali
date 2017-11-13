.class public Lcom/android/server/wifi/hs20/WifiHs20CertDetails;
.super Ljava/lang/Object;
.source "WifiHs20CertDetails.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HS20CertDetails"


# instance fields
.field public aseq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field public certStatus:Z

.field public certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public contentType:Ljava/lang/String;

.field public hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

.field private hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

.field public id:I

.field public mContext:Landroid/content/Context;

.field public mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

.field public privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enrollmentParameters"    # Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->certStatus:Z

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget-boolean v3, v3, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->remediationFlag:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->genCertID()I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    if-gez v3, :cond_0

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    mul-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I

    :cond_0
    const-string v3, "HS20CertDetails"

    const-string v4, "Provisioning"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v3, "HS20CertDetails"

    const-string v4, "Remediation"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->init()V

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .local v2, "mDB":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->mEnrollmentParameters:Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20EnrollmentParameters;->credentialID:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v1

    .local v1, "mCredential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v3, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "mCredential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .end local v2    # "mDB":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HS20CertDetails"

    const-string v4, "CertDetails exception"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->hs20KeyStoreAPI:Lcom/android/server/wifi/hs20/WifiHs20KeyStoreAPI;

    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20CertDetails;->hs20PasswordGenerator:Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genPasswd1()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public genCertID()I
    .locals 8

    .prologue
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .local v0, "dtNow":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const-string v3, "%Y%m%d%H%M"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "lsNow":Ljava/lang/String;
    const-string v3, "HS20CertDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time stamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .local v2, "mRandom":Ljava/util/Random;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    long-to-int v3, v4

    return v3
.end method
