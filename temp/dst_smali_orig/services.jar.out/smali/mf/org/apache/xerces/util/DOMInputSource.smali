.class public final Lmf/org/apache/xerces/util/DOMInputSource;
.super Lmf/org/apache/xerces/xni/parser/XMLInputSource;
.source "DOMInputSource.java"


# instance fields
.field private fNode:Lmf/org/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/DOMInputSource;-><init>(Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMInputSource;->getSystemIdFromNode(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lmf/org/apache/xerces/util/DOMInputSource;->fNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lmf/org/apache/xerces/util/DOMInputSource;->fNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method private static getSystemIdFromNode(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p0, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodError;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public getNode()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMInputSource;->fNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public setNode(Lmf/org/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/util/DOMInputSource;->fNode:Lmf/org/w3c/dom/Node;

    return-void
.end method
