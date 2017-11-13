.class Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateParsingException;
.super Ljava/security/cert/CertificateParsingException;
.source "JcaX509CertificateConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExCertificateParsingException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateParsingException;->this$0:Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter;

    .line 89
    invoke-direct {p0, p2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 91
    iput-object p3, p0, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateParsingException;->cause:Ljava/lang/Throwable;

    .line 92
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/BCProvider/JcaX509CertificateConverter$ExCertificateParsingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
