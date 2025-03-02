.class public Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;
.super Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;
.source "DOMXSImplementationSourceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;
    .locals 2
    .param p1, "features"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 51
    .local v0, "impl":Lmf/org/w3c/dom/DOMImplementation;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 65
    :goto_0
    return-object v1

    .line 55
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;
    .locals 5
    .param p1, "features"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "implementations":Ljava/util/ArrayList;
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;

    move-result-object v3

    .line 85
    .local v3, "list":Lmf/org/w3c/dom/DOMImplementationList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Lmf/org/w3c/dom/DOMImplementationList;->getLength()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 89
    invoke-static {}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 90
    .local v1, "impl":Lmf/org/w3c/dom/DOMImplementation;
    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    new-instance v4, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;

    invoke-direct {v4, v2}, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v4

    .line 86
    .end local v1    # "impl":Lmf/org/w3c/dom/DOMImplementation;
    :cond_2
    invoke-interface {v3, v0}, Lmf/org/w3c/dom/DOMImplementationList;->item(I)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
