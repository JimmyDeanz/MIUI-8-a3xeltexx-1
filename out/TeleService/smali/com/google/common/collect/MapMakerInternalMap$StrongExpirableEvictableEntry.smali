.class final Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;
.super Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongExpirableEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1096
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1101
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->time:J

    .line 1113
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1126
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1141
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1154
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1097
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1105
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->time:J

    return-wide v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1118
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1159
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1110
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->time:J

    .line 1111
    return-void
.end method

.method public setNextEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1152
    return-void
.end method

.method public setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1124
    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1165
    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1136
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1137
    return-void
.end method
