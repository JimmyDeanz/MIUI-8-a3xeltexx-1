.class public Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;
.super Ljava/lang/Object;
.source "ContextRelationGraph.java"


# static fields
.field static final DEBUG:Z

.field static final DUMP_DETAIL:Z

.field static final TAG:Ljava/lang/String; = "ContextRelationGraph"


# instance fields
.field private final mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DUMP_DETAIL:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DUMP_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    const-string v1, "ContextRelationGraph"

    invoke-direct {v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    return-void
.end method


# virtual methods
.method public attachContext(Landroid/content/Context;Landroid/content/Context;)Z
    .locals 5
    .param p1, "candidateParentContext"    # Landroid/content/Context;
    .param p2, "childContext"    # Landroid/content/Context;

    .prologue
    const-string v2, "ContextRelationGraph"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachContext() : parentContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " childContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .local v0, "candidateParentContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    invoke-virtual {p0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v1

    .local v1, "childContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v2, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ContextRelationGraph"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no ContextWrapper for context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->attachRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public createContext(Landroid/content/Context;Landroid/content/Context;)Z
    .locals 6
    .param p1, "parentContext"    # Landroid/content/Context;
    .param p2, "childContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    sget-boolean v3, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ContextRelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createContext() : context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .local v0, "childContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ContextRelationGraph"

    const-string v4, "createContext() : same context already exist in graph!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    .end local v0    # "childContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    invoke-direct {v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;-><init>(Landroid/content/Context;)V

    .restart local v0    # "childContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v1

    .local v1, "parentContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->addRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public detachContext(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachContext() : context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-nez v0, :cond_1

    sget-boolean v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no ContextWrapper for context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->detachRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpDetail"    # Z
    .param p4, "dumpCallStack"    # Z

    .prologue
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Context relation policy : "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mGraphName="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getGraphName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Vertex size="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->numVertices()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Edge size="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->numEdges()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "rootVertices= {"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "rootVerticesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .local v7, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v7, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_0
    const-string v8, " }"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DFS Traversed Vertices= {"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->doDfsForAllVertices()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "allVerticesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .restart local v7    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    sget-boolean v8, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DUMP_DETAIL:Z

    if-eqz v8, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v4

    .local v4, "o":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    invoke-virtual {v4}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .local v5, "ro":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    instance-of v8, v5, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    if-eqz v8, :cond_1

    move-object v1, v5

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    .local v1, "c":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->getCallStack()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "c":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    .end local v4    # "o":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    .end local v5    # "ro":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .end local v7    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "}"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "allVerticesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    :cond_3
    return-void
.end method

.method findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    if-nez p1, :cond_0

    move-object v5, v7

    :goto_0
    return-object v5

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v0

    .local v0, "graph":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .local v6, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<*>;"
    invoke-virtual {v6}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v3

    .local v3, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<*>;"
    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v2

    .local v2, "item":Ljava/lang/Object;
    instance-of v8, v2, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    if-eqz v8, :cond_1

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    .local v5, "tmpContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    iget-object v8, v5, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->itemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .local v4, "tmpContext":Landroid/content/Context;
    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->isDummyWrappedItem()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<*>;"
    .end local v4    # "tmpContext":Landroid/content/Context;
    .end local v5    # "tmpContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    .end local v6    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<*>;"
    :cond_2
    move-object v5, v7

    goto :goto_0
.end method

.method public getDescendantVertices(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v1

    .local v1, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-nez v1, :cond_2

    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ContextRelationGraph"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no ContextWrapper for context="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v6, v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getDescendantRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "descendantRelationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "descendantContextList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Context;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .local v5, "r":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getLeafContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v3, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getLeafRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    move-result-object v1

    .local v1, "leafRelation":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .end local v1    # "leafRelation":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-boolean v3, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ContextRelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no ContextWrapper for context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRelationGraph()Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    return-object v0
.end method

.method public getRootContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v3, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getRootRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    move-result-object v1

    .local v1, "rootRelation":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .end local v1    # "rootRelation":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-boolean v3, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ContextRelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no ContextWrapper for context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isRootContext(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->getRootContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .local v0, "rootContext":Landroid/content/Context;
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "rootContext":Landroid/content/Context;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public propagateChangedDisplay(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "propagateChangedDisplay() : for outerContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-nez v0, :cond_2

    sget-boolean v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no ContextWrapper for context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->propagateChangedRelationInfo(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeContext(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->removeRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no ContextWrapper for context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Graph \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, ""

    .local v3, "ret":Ljava/lang/String;
    if-nez p1, :cond_0

    const-string v5, "null"

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v5, v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "outerContext":Landroid/content/Context;
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_2

    const-string v5, "a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .local v1, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v1    # "id":I
    :cond_2
    instance-of v5, v2, Landroid/app/Service;

    if-eqz v5, :cond_3

    const-string v5, "s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    instance-of v5, v2, Landroid/app/Application;

    if-eqz v5, :cond_4

    const-string v5, "p "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    instance-of v5, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v5, :cond_5

    const-string v5, "t "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v5, "c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
