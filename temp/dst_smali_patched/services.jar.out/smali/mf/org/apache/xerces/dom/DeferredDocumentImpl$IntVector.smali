.class final Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;
.super Ljava/lang/Object;
.source "DeferredDocumentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntVector"
.end annotation


# instance fields
.field private data:[I

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "newsize"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, 0xf

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    array-length v1, v1

    if-le p1, v1, :cond_0

    add-int/lit8 v1, p1, 0xf

    new-array v0, v1, [I

    .local v0, "newdata":[I
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    goto :goto_0
.end method


# virtual methods
.method public addElement(I)V
    .locals 3
    .param p1, "element"    # I

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->ensureCapacity(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public elementAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    aget v0, v0, p1

    return v0
.end method

.method public removeAllElements()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    return v0
.end method
