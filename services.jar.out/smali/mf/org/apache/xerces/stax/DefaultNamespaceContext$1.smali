.class Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;
.super Ljava/lang/Object;
.source "DefaultNamespaceContext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field more:Z

.field final synthetic this$0:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/stax/DefaultNamespaceContext;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;->this$0:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;->more:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;->more:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;->more:Z

    .line 93
    const-string v0, "xml"

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
