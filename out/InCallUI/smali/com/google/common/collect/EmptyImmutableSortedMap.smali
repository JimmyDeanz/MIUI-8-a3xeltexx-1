.class final Lcom/google/common/collect/EmptyImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMap;
.source "EmptyImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient keySet:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 38
    return-void
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 0
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 0
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const-string v0, "{}"

    return-object v0
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMap;, "Lcom/google/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
