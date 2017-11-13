.class public Landroid/sec/enterprise/certificate/CertificatePolicy;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# static fields
.field public static final BROWSER_MODULE:Ljava/lang/String; = "browser_module"

.field public static final CERTIFICATE_VALIDATED_SUCCESSFULLY:I = -0x1

.field public static final CERT_ERROR_REVOKED:I = -0xce

.field public static final CERT_ERROR_UNABLE_TO_CHECK_REVOCATION:I = -0xcd

.field public static final MSG_ADDITIONAL_CHECKER:Ljava/lang/String; = "Additional certificate path checker failed."

.field public static final MSG_CRL_DIST_COULD_NOT_BE_READ:Ljava/lang/String; = "CRL distribution point extension could not be read"

.field public static final MSG_CRL_NOT_VALID:Ljava/lang/String; = "No valid CRL found."

.field public static final MSG_DIST_POINT_COULD_NOT_BE_READ:Ljava/lang/String; = "Distribution points could not be read."

.field public static final MSG_EXPIRED_CERT:Ljava/lang/String; = ", expiration time"

.field public static final MSG_IS_REVOKED_CERT:Ljava/lang/String; = "is revoked"

.field public static final MSG_NOT_YET_VALID_CERT:Ljava/lang/String; = ", validation time"

.field public static final MSG_NO_ADDITIONAL_CRL_DECODED:Ljava/lang/String; = "No additional CRL locations could be decoded from CRL distribution point extension."

.field public static final MSG_REVOKED_CERT:Ljava/lang/String; = "Certificate revocation after"

.field public static final MSG_UNABLE_CHECK_OCSP_STATUS:Ljava/lang/String; = "OCSP check failed!"

.field public static final MSG_UNABLE_CHECK_REVOCATION_STATUS:Ljava/lang/String; = "Certificate status could not be determined."

.field public static final MSG_UNABLE_GET_CRL:Ljava/lang/String; = "Unable to get CRL for certificate"

.field public static final PACKAGE_MODULE:Ljava/lang/String; = "package_manager_module"

.field public static final SBROWSER_VERIFY_NO_TRUSTED_ROOT:I = 0x2

.field public static final SBROWSER_VERIFY_REVOKED:I = 0x1

.field public static final SBROWSER_VERIFY_UNABLE_TO_CHECK_REVOCATION:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_MODULE:Ljava/lang/String; = "wifi_module"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "CertificatePolicy"

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCaCertificateTrustedAsUser([BZI)Z
    .locals 1
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser([BZZI)Z

    move-result v0

    return v0
.end method

.method public isCaCertificateTrustedAsUser([BZZI)Z
    .locals 2
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z
    .param p3, "checkTrusted"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 188
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->isCaCertificateTrustedAsUser([BZZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 194
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v1

    .line 194
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOcspCheckEnabled()Z
    .locals 2

    .prologue
    .line 212
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 213
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isOcspCheckEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v1

    .line 219
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRevocationCheckEnabled()Z
    .locals 2

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 200
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isRevocationCheckEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v1

    .line 206
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 240
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isUserRemoveCertificatesAllowedAsUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v1

    .line 246
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 149
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 150
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0, p1, p2, p3}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 169
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 170
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 226
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public validateCertificateAtInstallAsUser([BI)I
    .locals 2
    .param p1, "certBytes"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 254
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 255
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->validateCertificateAtInstallAsUser([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v1

    .line 261
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
