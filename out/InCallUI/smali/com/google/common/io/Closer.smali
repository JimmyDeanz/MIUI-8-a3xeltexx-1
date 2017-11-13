.class public final Lcom/google/common/io/Closer;
.super Ljava/lang/Object;
.source "Closer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/Closer$SuppressingSuppressor;,
        Lcom/google/common/io/Closer$LoggingSuppressor;,
        Lcom/google/common/io/Closer$Suppressor;
    }
.end annotation


# static fields
.field private static final SUPPRESSOR:Lcom/google/common/io/Closer$Suppressor;


# instance fields
.field private final stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field final suppressor:Lcom/google/common/io/Closer$Suppressor;

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/google/common/io/Closer$SuppressingSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/io/Closer$SuppressingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$SuppressingSuppressor;

    :goto_0
    sput-object v0, Lcom/google/common/io/Closer;->SUPPRESSOR:Lcom/google/common/io/Closer$Suppressor;

    return-void

    :cond_0
    sget-object v0, Lcom/google/common/io/Closer$LoggingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$LoggingSuppressor;

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/common/io/Closer$Suppressor;)V
    .locals 1
    .param p1, "suppressor"    # Lcom/google/common/io/Closer$Suppressor;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/LinkedList;

    .line 113
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/Closer$Suppressor;

    iput-object v0, p0, Lcom/google/common/io/Closer;->suppressor:Lcom/google/common/io/Closer$Suppressor;

    .line 114
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v2, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    .line 210
    .local v2, "throwable":Ljava/lang/Throwable;
    :goto_0
    iget-object v3, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 213
    .local v0, "closeable":Ljava/io/Closeable;
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Throwable;
    if-nez v2, :cond_0

    .line 216
    move-object v2, v1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/google/common/io/Closer;->suppressor:Lcom/google/common/io/Closer$Suppressor;

    invoke-interface {v3, v0, v2, v1}, Lcom/google/common/io/Closer$Suppressor;->suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 223
    .end local v0    # "closeable":Ljava/io/Closeable;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v3, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 224
    const-class v3, Ljava/io/IOException;

    invoke-static {v2, v3}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 225
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 227
    :cond_2
    return-void
.end method
