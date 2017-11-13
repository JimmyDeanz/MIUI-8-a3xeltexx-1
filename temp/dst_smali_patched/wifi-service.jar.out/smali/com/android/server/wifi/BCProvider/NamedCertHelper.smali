.class Lcom/android/server/wifi/BCProvider/NamedCertHelper;
.super Lcom/android/server/wifi/BCProvider/CertHelper;
.source "NamedCertHelper.java"


# instance fields
.field private final providerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/BCProvider/CertHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/BCProvider/NamedCertHelper;->providerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/BCProvider/NamedCertHelper;->providerName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method
