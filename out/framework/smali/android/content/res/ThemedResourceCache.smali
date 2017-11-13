.class abstract Landroid/content/res/ThemedResourceCache;
.super Ljava/lang/Object;
.source "ThemedResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mNullThemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mThemedEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/Resources$ThemeKey;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private mUnthemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Z)",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    const/4 v4, 0x1

    .line 168
    if-nez p1, :cond_2

    .line 169
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 170
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    .line 192
    :cond_1
    :goto_0
    return-object v0

    .line 175
    :cond_2
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-nez v3, :cond_3

    .line 176
    if-eqz p2, :cond_4

    .line 177
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    .line 183
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    .line 184
    .local v1, "key":Landroid/content/res/Resources$ThemeKey;
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 185
    .local v0, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 186
    new-instance v0, Landroid/util/LongSparseArray;

    .end local v0    # "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 188
    .restart local v0    # "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-virtual {v1}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v2

    .line 189
    .local v2, "keyClone":Landroid/content/res/Resources$ThemeKey;
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .end local v0    # "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v1    # "key":Landroid/content/res/Resources$ThemeKey;
    .end local v2    # "keyClone":Landroid/content/res/Resources$ThemeKey;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUnthemedLocked(Z)Landroid/util/LongSparseArray;
    .locals 2
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 206
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private prune(I)Z
    .locals 2
    .param p1, "configChanges"    # I

    .prologue
    .line 220
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 223
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 222
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    .line 230
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    .line 232
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z
    .locals 4
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p1, "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v2, 0x1

    .line 239
    if-nez p1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v2

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 244
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 245
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/content/res/ThemedResourceCache;->pruneEntryLocked(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    :cond_2
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 243
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 250
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_4
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private pruneEntryLocked(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/ThemedResourceCache;->shouldInvalidateEntry(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method clearAllCaches()V
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    .line 94
    :cond_1
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    .line 98
    :cond_2
    monitor-exit p0

    .line 100
    :cond_3
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    monitor-enter p0

    .line 116
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p3, v4}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 117
    .local v0, "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 119
    .local v1, "themedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    monitor-exit p0

    .line 133
    .end local v1    # "themedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :goto_0
    return-object v4

    .line 124
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    move-result-object v2

    .line 125
    .local v2, "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 127
    .local v3, "unthemedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    monitor-exit p0

    goto :goto_0

    .line 131
    .end local v0    # "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v2    # "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v3    # "unthemedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .restart local v2    # "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onConfigurationChange(I)V
    .locals 0
    .param p1, "configChanges"    # I

    .prologue
    .line 143
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/res/ThemedResourceCache;->prune(I)Z

    .line 144
    return-void
.end method

.method public put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V
    .locals 7
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p4, "entry":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 50
    return-void
.end method

.method public put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p4, "entry":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_0

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_0
    monitor-enter p0

    .line 69
    if-nez p5, :cond_2

    .line 70
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 74
    .local v0, "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 75
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 77
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p3, v1}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    goto :goto_1
.end method

.method protected abstract shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method
