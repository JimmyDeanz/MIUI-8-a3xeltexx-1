.class final Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;
.super Ljava/lang/Object;
.source "XSObjectListImpl.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "XSObjectListIterator"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 226
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    .line 228
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    # getter for: Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->access$0(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    # getter for: Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->access$0(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    # getter for: Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->access$1(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)[Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    # getter for: Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->access$1(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)[Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 245
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
