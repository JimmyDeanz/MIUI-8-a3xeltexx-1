.class public Lcom/absolute/android/persistservice/k;
.super Lcom/absolute/android/persistservice/ac;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ac;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    const/4 v1, 0x0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 3

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 138
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;-><init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 318
    sget-boolean v1, Lcom/absolute/android/persistservice/k;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 319
    :cond_0
    if-eqz v0, :cond_1

    .line 320
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(I)V

    .line 321
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 275
    sget-boolean v1, Lcom/absolute/android/persistservice/k;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    :cond_0
    if-eqz v0, :cond_1

    .line 277
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized a(Z)V
    .locals 4

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 190
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistence/AppProfile;->setIsPersisted(Z)V

    .line 191
    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized a()[Lcom/absolute/android/persistence/AppProfile;
    .locals 5

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 123
    :goto_0
    monitor-exit p0

    return-object v0

    .line 112
    :cond_0
    :try_start_1
    new-array v1, v0, [Lcom/absolute/android/persistence/AppProfile;

    .line 114
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 115
    const/4 v0, 0x0

    move v2, v0

    .line 117
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 121
    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 123
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b()I
    .locals 4

    .prologue
    .line 206
    monitor-enter p0

    const/4 v1, 0x0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 210
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 213
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 214
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 215
    goto :goto_0

    .line 216
    :cond_0
    monitor-exit p0

    return v1

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected declared-synchronized b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    const/4 v1, 0x0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    :goto_0
    monitor-exit p0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected declared-synchronized b(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 360
    sget-boolean v1, Lcom/absolute/android/persistservice/k;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 361
    :cond_0
    if-eqz v0, :cond_1

    .line 362
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b(I)V

    .line 363
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method protected declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    const/4 v1, 0x0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 237
    :goto_0
    monitor-exit p0

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    const/4 v1, 0x0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 258
    :goto_0
    monitor-exit p0

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-super {p0, p1}, Lcom/absolute/android/persistservice/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 426
    :goto_0
    return v0

    .line 400
    :cond_0
    instance-of v0, p1, Lcom/absolute/android/persistservice/k;

    if-nez v0, :cond_1

    move v0, v2

    .line 401
    goto :goto_0

    .line 405
    :cond_1
    check-cast p1, Lcom/absolute/android/persistservice/k;

    .line 407
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 408
    goto :goto_0

    .line 411
    :cond_2
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 414
    iget-object v0, p1, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 416
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 418
    iget-object v1, p1, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 420
    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 421
    monitor-exit p0

    move v0, v2

    goto :goto_0

    .line 424
    :cond_4
    monitor-exit p0

    .line 426
    const/4 v0, 0x1

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected declared-synchronized f(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 293
    monitor-enter p0

    const/4 v1, 0x0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 297
    sget-boolean v2, Lcom/absolute/android/persistservice/k;->a:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :cond_0
    if-eqz v0, :cond_1

    .line 299
    :try_start_1
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->c()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 302
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected declared-synchronized g(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 335
    monitor-enter p0

    const/4 v1, 0x0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 339
    sget-boolean v2, Lcom/absolute/android/persistservice/k;->a:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 340
    :cond_0
    if-eqz v0, :cond_1

    .line 341
    :try_start_1
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 344
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected declared-synchronized h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    .locals 1

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 433
    new-instance v1, Lcom/absolute/android/persistservice/k;

    iget-object v2, p0, Lcom/absolute/android/persistservice/k;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->e:Lcom/absolute/android/persistservice/v;

    invoke-static {p1}, Lcom/absolute/android/utils/FileUtil;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/absolute/android/persistservice/k;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    .line 435
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/k;->k(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistservice/k;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 438
    :goto_0
    return v0

    .line 436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    goto :goto_0
.end method
