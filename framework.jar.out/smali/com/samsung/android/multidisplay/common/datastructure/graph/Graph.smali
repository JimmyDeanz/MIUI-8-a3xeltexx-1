.class public Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;
.super Ljava/lang/Object;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "Graph"


# instance fields
.field private mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mEdges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field mGraphName:Ljava/lang/String;

.field private mGraphType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mNextEdgeId:J

.field private mNextVertexId:J

.field private mVertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    .line 49
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextVertexId:J

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextEdgeId:J

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    .line 49
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextVertexId:J

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextEdgeId:J

    .line 62
    iput-object p1, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mGraphType:Ljava/lang/Class;

    .line 63
    iput-object p2, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mGraphName:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-direct {v0, p0}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;-><init>(Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;)V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    .line 65
    return-void
.end method

.method private idToEdge(J)Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;
    .locals 7
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    const/4 v2, 0x0

    .line 294
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    move-object v0, v2

    .line 302
    :goto_0
    return-object v0

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    .line 298
    .local v0, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iget-wide v4, v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->id:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    goto :goto_0

    .end local v0    # "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    :cond_2
    move-object v0, v2

    .line 302
    goto :goto_0
.end method

.method private removeEdge(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    const/4 v6, 0x0

    .line 217
    sget-boolean v3, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 218
    const-string v3, "Graph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeEdge() : id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->idToEdge(J)Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    move-result-object v0

    .line 220
    .local v0, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    if-nez v0, :cond_1

    .line 231
    :goto_0
    return v6

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    iget-object v2, v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 227
    .local v2, "startVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-object v1, v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 228
    .local v1, "endVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {p0, v2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public adjacentVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "adjVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    .line 116
    .local v1, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iget-object v3, v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 117
    iget-object v3, v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    iget-object v3, v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v1    # "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    :cond_1
    return-object v0
.end method

.method public ancestorVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-nez p1, :cond_0

    .line 372
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "v is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "ancestor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v1

    .line 376
    .local v1, "parent":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v1

    goto :goto_0

    .line 380
    :cond_1
    return-object v0
.end method

.method public attachSubGraph(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "candidateParentItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    .local p2, "childItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    sget-boolean v7, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 467
    const-string v7, "Graph"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attachSubGraph() : childItem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to candidateParentItem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v1

    .line 471
    .local v1, "childVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v0

    .line 472
    .local v0, "candidateParentVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 473
    :cond_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Vertex is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 477
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getRootVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v5

    .line 478
    .local v5, "rootVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-nez v5, :cond_3

    .line 479
    move-object v5, v1

    .line 481
    :cond_3
    invoke-virtual {p0, v5}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->descendantVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v2

    .line 482
    .local v2, "descendantVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget-boolean v7, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "Graph"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Descendants of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 485
    .local v6, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {v6}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 487
    const-string v7, "Graph"

    const-string v8, "Tried to add in same subgraph"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v7, 0x0

    .line 501
    .end local v6    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :goto_0
    return v7

    .line 493
    :cond_6
    invoke-virtual {p0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->detachSubGraph(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v3

    .line 496
    .local v3, "detachedSubGraphRootVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->insertEdge(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    .line 498
    iget-boolean v7, v3, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->dummy:Z

    if-eqz v7, :cond_7

    .line 499
    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->removeVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    .line 501
    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public childVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-nez p1, :cond_0

    .line 360
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "v is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v0, "descendants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    .line 363
    .local v1, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->origin(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 364
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->destination(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    .end local v1    # "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    :cond_2
    return-object v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    const/4 v4, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 77
    .local v2, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-object v3, v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 78
    invoke-virtual {v2, v4}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->setElement(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)V

    goto :goto_0

    .line 81
    .end local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->edges()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    .line 82
    .local v0, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iput-object v4, v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 83
    iput-object v4, v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    goto :goto_1

    .line 85
    .end local v0    # "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    :cond_1
    return-void
.end method

.method public degree(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)I"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public descendantVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-nez p1, :cond_0

    .line 385
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "v is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "descendants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    iget-object v1, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;->getDescendantsOf(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Ljava/util/ArrayList;)V

    .line 388
    return-object v0
.end method

.method public destination(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iget-object v0, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    return-object v0
.end method

.method public detachSubGraph(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    sget-boolean v4, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 420
    const-string v4, "Graph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detachSubGraph() : item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v3

    .line 422
    .local v3, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {p0, v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v2

    .line 423
    .local v2, "parentVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-nez v3, :cond_1

    .line 424
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "v is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->dummy:Z

    if-eqz v4, :cond_4

    .line 426
    :cond_2
    sget-boolean v4, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 427
    const-string v4, "Graph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already splitted. Can\'t create a split from object="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_3
    :goto_0
    return-object v3

    .line 435
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    .line 436
    .local v0, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->destination(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v4

    if-ne v4, v3, :cond_5

    .line 437
    iget-wide v4, v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->id:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->removeEdge(J)Z

    goto :goto_0
.end method

.method public doDfsForAllVertices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;->doDfsForAllVertices()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 530
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    const-string v3, "Context relation graph : "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mGraphName="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mGraphName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Vertex size="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 536
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Edge size="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 538
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "rootVertices= {"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 540
    .local v2, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    .end local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_0
    const-string v3, " }"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    if-eqz p3, :cond_2

    .line 545
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 546
    const-string v3, "DFS Traversed Vertices= {"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;->doDfsForAllVertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 548
    .restart local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 551
    .end local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    :cond_2
    return-void
.end method

.method public edges()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGraphName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mGraphName:Ljava/lang/String;

    return-object v0
.end method

.method public getLeafVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "item":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    sget-boolean v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 506
    const-string v1, "Graph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLeaf() : item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v0

    .line 508
    .local v0, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-eqz v0, :cond_1

    .line 509
    iget-object v1, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;->getLeaf(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v1

    .line 511
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRootVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "item":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    sget-boolean v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 349
    const-string v2, "Graph"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRootVertex() : item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v1

    .line 351
    .local v1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {p0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getRootVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v0

    .line 353
    .local v0, "progenitorVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-eqz v0, :cond_1

    .line 355
    .end local v0    # "progenitorVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :goto_0
    return-object v0

    .restart local v0    # "progenitorVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_1
    move-object v0, v1

    .line 353
    goto :goto_0

    .line 355
    .end local v0    # "progenitorVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-nez p1, :cond_0

    .line 337
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "v is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v0

    .line 340
    .local v0, "progenitor":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    return-object v0
.end method

.method public getRootVertices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mGraphType:Ljava/lang/Class;

    return-object v0
.end method

.method public incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-object v0, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method insertDummyVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;I)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;I)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    sget-boolean v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 311
    const-string v1, "Graph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertDummyVertex() : itemWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    iget-wide v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextVertexId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextVertexId:J

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;-><init>(JLcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)V

    .line 313
    .local v0, "vertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->dummy:Z

    .line 314
    sget-boolean v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 315
    const-string v1, "Graph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertDummyVertex() : create new vertex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    if-nez v0, :cond_2

    .line 317
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "creating instance fail"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 320
    return-object v0
.end method

.method public insertEdge(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "parentItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    .local p2, "childItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 188
    const-string v5, "Graph"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertEdge() : startVertexItem="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " endVertexItem="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    const/4 v3, 0x0

    .line 191
    .local v3, "parentVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    const/4 v0, 0x0

    .line 192
    .local v0, "childVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 193
    .local v4, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {v4}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 194
    move-object v3, v4

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    move-object v0, v4

    goto :goto_0

    .line 200
    .end local v4    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 201
    new-instance v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    iget-wide v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextEdgeId:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextEdgeId:J

    invoke-direct {v1, v6, v7, v3, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;-><init>(JLcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)V

    .line 202
    .local v1, "edge":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 203
    const-string v5, "Graph"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertEdge() : create new edge="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p0, v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v5, 0x1

    .line 209
    .end local v1    # "edge":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    :goto_1
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public insertVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "rootItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 157
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 153
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :catch_1
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 160
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 162
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->insertVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    move-result v1

    return v1
.end method

.method public insertVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "parentItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    .local p2, "childItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    sget-boolean v3, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 168
    const-string v3, "Graph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertVertex() : item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 170
    .local v1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    const/4 v3, 0x0

    .line 183
    .end local v1    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :goto_0
    return v3

    .line 173
    :cond_2
    new-instance v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    iget-wide v4, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextVertexId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mNextVertexId:J

    invoke-direct {v2, v4, v5, p2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;-><init>(JLcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)V

    .line 174
    .local v2, "vertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    sget-boolean v3, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 175
    const-string v3, "Graph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertVertex() : create new vertex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_3
    if-nez v2, :cond_4

    .line 177
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "creating instance fail"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    if-eqz p1, :cond_5

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->insertEdge(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    .line 183
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public itemToVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "item":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    if-nez p1, :cond_0

    .line 283
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "item is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 286
    .local v1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    .end local v1    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public numEdges()I
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public numVertices()I
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opposite(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .local p2, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iget-object v0, p2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    if-ne v0, p1, :cond_0

    .line 131
    iget-object v0, p2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    goto :goto_0
.end method

.method public origin(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iget-object v0, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    return-object v0
.end method

.method public parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-nez p1, :cond_0

    .line 325
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "v is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    .line 328
    .local v0, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->destination(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 329
    invoke-virtual {p0, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->origin(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v2

    .line 332
    .end local v0    # "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeEdge(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iget-wide v0, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->id:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->removeEdge(J)Z

    move-result v0

    return v0
.end method

.method public removeVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    .local p1, "item":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    const/4 v7, 0x0

    .line 235
    sget-boolean v8, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 236
    const-string v8, "Graph"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeVertex() : item="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v5

    .line 238
    .local v5, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    if-nez v5, :cond_2

    .line 278
    :cond_1
    :goto_0
    return v7

    .line 241
    :cond_2
    invoke-virtual {p0, v5}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v4

    .line 243
    .local v4, "parent":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {p0, v5}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v6

    .line 244
    .local v6, "vChildVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    if-nez v4, :cond_4

    .line 249
    invoke-virtual {p0, v5}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_4

    .line 250
    iget-boolean v8, v5, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->dummy:Z

    if-eqz v8, :cond_3

    .line 251
    const-string v8, "Graph"

    const-string/jumbo v9, "removeVertex() : cannot remove dummy vertex which does not have ancestor."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_3
    new-instance v8, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->insertDummyVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;I)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v4

    .line 256
    const-string v8, "Graph"

    const-string/jumbo v9, "removeVertex() : insertDummyVertex, because there is no ancestor."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    if-eqz v4, :cond_1

    .line 268
    invoke-virtual {p0, v5}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    .line 269
    .local v3, "incidenceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;>;"
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_5

    .line 270
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    .line 271
    .local v1, "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iget-wide v8, v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;->id:J

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->removeEdge(J)Z

    goto :goto_1

    .line 274
    .end local v1    # "e":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 275
    .local v0, "child":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-virtual {v4}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->insertEdge(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    goto :goto_2

    .line 278
    .end local v0    # "child":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_6
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 517
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 518
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-class v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mGraphName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n vertex count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n edge count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n graph="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-virtual {v2}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;->doDfsForAllVertices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n Root vertices in graph="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;

    invoke-virtual {v2}, Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public vertices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    return-object v0
.end method
