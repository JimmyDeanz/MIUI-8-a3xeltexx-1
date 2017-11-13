.class Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustListOperation"
.end annotation


# static fields
.field private static final AUDIT_ADD_TRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_ADD_UNTRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_REMOVE_TRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_REMOVE_UNTRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"


# instance fields
.field private mAction:I

.field private mAuditMessageFormat:Ljava/lang/String;

.field private mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field private mDbColumn:Ljava/lang/String;

.field private mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 1
    .param p2, "action"    # I

    .prologue
    .line 2414
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2415
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    .line 2416
    packed-switch p2, :pswitch_data_0

    .line 2444
    :goto_0
    return-void

    .line 2419
    :pswitch_0
    const-string v0, "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    .line 2420
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2421
    const-string/jumbo v0, "trustedCaList"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 2422
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_0

    .line 2425
    :pswitch_1
    const-string v0, "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    .line 2426
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2427
    const-string/jumbo v0, "trustedCaList"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 2428
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_0

    .line 2432
    :pswitch_2
    const-string v0, "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    .line 2433
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2434
    const-string/jumbo v0, "untrustedCertsList"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 2435
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_0

    .line 2438
    :pswitch_3
    const-string v0, "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    .line 2439
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2440
    const-string/jumbo v0, "untrustedCertsList"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 2441
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_0

    .line 2416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 2459
    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    return v0
.end method

.method public getAuditMessageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getCache()Lcom/android/server/enterprise/certificate/CertificateCache;
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object v0
.end method

.method public getDbColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method
