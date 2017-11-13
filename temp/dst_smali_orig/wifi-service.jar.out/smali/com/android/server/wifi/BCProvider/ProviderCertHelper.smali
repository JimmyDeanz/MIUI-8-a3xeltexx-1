.class Lcom/android/server/wifi/BCProvider/ProviderCertHelper;
.super Lcom/android/server/wifi/BCProvider/CertHelper;
.source "ProviderCertHelper.java"


# instance fields
.field private final provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/BCProvider/CertHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/BCProvider/ProviderCertHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method protected createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/BCProvider/ProviderCertHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method
