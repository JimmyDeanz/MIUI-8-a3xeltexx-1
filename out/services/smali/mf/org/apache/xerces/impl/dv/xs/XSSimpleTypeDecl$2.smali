.class Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/ValidationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2873
    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2876
    return-void
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 2887
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 2879
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2883
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2861
    const/4 v0, 0x0

    return v0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2865
    const/4 v0, 0x0

    return v0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2869
    const/4 v0, 0x0

    return v0
.end method

.method public needExtraChecking()Z
    .locals 1

    .prologue
    .line 2851
    const/4 v0, 0x0

    return v0
.end method

.method public needFacetChecking()Z
    .locals 1

    .prologue
    .line 2847
    const/4 v0, 0x1

    return v0
.end method

.method public needToNormalize()Z
    .locals 1

    .prologue
    .line 2854
    const/4 v0, 0x0

    return v0
.end method

.method public useNamespaces()Z
    .locals 1

    .prologue
    .line 2857
    const/4 v0, 0x1

    return v0
.end method
