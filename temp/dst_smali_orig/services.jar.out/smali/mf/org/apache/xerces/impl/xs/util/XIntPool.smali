.class public final Lmf/org/apache/xerces/impl/xs/util/XIntPool;
.super Ljava/lang/Object;
.source "XIntPool.java"


# static fields
.field private static final POOL_SIZE:S = 0xas

.field private static final fXIntPool:[Lmf/org/apache/xerces/impl/xs/util/XInt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    new-array v1, v3, [Lmf/org/apache/xerces/impl/xs/util/XInt;

    sput-object v1, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->fXIntPool:[Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->fXIntPool:[Lmf/org/apache/xerces/impl/xs/util/XInt;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/impl/xs/util/XInt;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    .locals 1
    .param p1, "value"    # I

    .prologue
    if-ltz p1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->fXIntPool:[Lmf/org/apache/xerces/impl/xs/util/XInt;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->fXIntPool:[Lmf/org/apache/xerces/impl/xs/util/XInt;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xs/util/XInt;-><init>(I)V

    goto :goto_0
.end method
