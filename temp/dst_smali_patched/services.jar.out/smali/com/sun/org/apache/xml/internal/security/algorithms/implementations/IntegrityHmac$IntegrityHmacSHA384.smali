.class public Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA384;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegrityHmacSHA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetURI()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#hmac-sha384"

    return-object v0
.end method
