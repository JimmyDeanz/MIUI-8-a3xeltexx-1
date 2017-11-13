.class Lcom/android/server/wifi/hs20/execObj;
.super Ljava/lang/Object;
.source "WifiHs20SoapClient.java"


# instance fields
.field getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

.field launchBrowserToURI:Ljava/lang/String;

.field moreCommands:Ljava/lang/String;

.field uploadMo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/uploadMoObj;",
            ">;"
        }
    .end annotation
.end field

.field useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wifi/hs20/getCertificateObj;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/getCertificateObj;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/execObj;->getCertificate:Lcom/android/server/wifi/hs20/getCertificateObj;

    new-instance v0, Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/useClientCertTLSObj;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/execObj;->useClientCertTLS:Lcom/android/server/wifi/hs20/useClientCertTLSObj;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/execObj;->uploadMo:Ljava/util/ArrayList;

    return-void
.end method
