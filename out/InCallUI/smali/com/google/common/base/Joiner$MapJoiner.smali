.class public final Lcom/google/common/base/Joiner$MapJoiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapJoiner"
.end annotation


# instance fields
.field private final joiner:Lcom/google/common/base/Joiner;

.field private final keyValueSeparator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Joiner;Ljava/lang/String;)V
    .locals 1
    .param p1, "joiner"    # Lcom/google/common/base/Joiner;
    .param p2, "keyValueSeparator"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/google/common/base/Joiner$MapJoiner;->joiner:Lcom/google/common/base/Joiner;

    .line 305
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Joiner;Ljava/lang/String;Lcom/google/common/base/Joiner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/base/Joiner;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/common/base/Joiner$1;

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Joiner$MapJoiner;-><init>(Lcom/google/common/base/Joiner;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<**>;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    .local p2, "parts":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 357
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->joiner:Lcom/google/common/base/Joiner;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 358
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 359
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->joiner:Lcom/google/common/base/Joiner;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 360
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->joiner:Lcom/google/common/base/Joiner;

    # getter for: Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/base/Joiner;->access$100(Lcom/google/common/base/Joiner;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 362
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 363
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->joiner:Lcom/google/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 364
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 365
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->joiner:Lcom/google/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    return-object p1
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map$Entry",
            "<**>;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<**>;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<**>;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    return-object p1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 322
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
