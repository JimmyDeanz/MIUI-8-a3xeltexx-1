.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field private authIDProvider:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIdpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthIDProvider()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private getAuthIdpPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    .local v0, "e":Lorg/w3c/dom/Element;
    const-string v1, "servicepackagename"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private update()V
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->updateIDAuthenticator()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In AuthenticationConfigDocument update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In AuthenticationConfigDocument update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateIDAuthenticator()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "root":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .local v3, "solutionNodes":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .local v2, "solution":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "authenticationprovider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
