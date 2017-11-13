.class public Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;
.super Ljava/lang/Object;
.source "JcaX509CertificateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateException;,
        Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateParsingException;
    }
.end annotation


# instance fields
.field private helper:Lcom/android/server/wifi/BCProvider/CertHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/android/server/wifi/BCProvider/DefaultCertHelper;

    invoke-direct {v0}, Lcom/android/server/wifi/BCProvider/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;->helper:Lcom/android/server/wifi/BCProvider/CertHelper;

    .line 27
    new-instance v0, Lcom/android/server/wifi/BCProvider/DefaultCertHelper;

    invoke-direct {v0}, Lcom/android/server/wifi/BCProvider/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;->helper:Lcom/android/server/wifi/BCProvider/CertHelper;

    .line 28
    return-void
.end method


# virtual methods
.method public getCertificate(Lcom/android/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "certHolder"    # Lcom/android/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;->helper:Lcom/android/server/wifi/BCProvider/CertHelper;

    const-string v3, "X.509"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/BCProvider/CertHelper;->getCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 70
    .local v0, "cFact":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 72
    .end local v0    # "cFact":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception parsing certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateParsingException;-><init>(Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v2, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find required provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateException;-><init>(Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setProvider(Ljava/lang/String;)Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/android/server/wifi/BCProvider/NamedCertHelper;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/BCProvider/NamedCertHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;->helper:Lcom/android/server/wifi/BCProvider/CertHelper;

    .line 53
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;

    .prologue
    .line 38
    new-instance v0, Lcom/android/server/wifi/BCProvider/ProviderCertHelper;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/BCProvider/ProviderCertHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;->helper:Lcom/android/server/wifi/BCProvider/CertHelper;

    .line 40
    return-object p0
.end method
