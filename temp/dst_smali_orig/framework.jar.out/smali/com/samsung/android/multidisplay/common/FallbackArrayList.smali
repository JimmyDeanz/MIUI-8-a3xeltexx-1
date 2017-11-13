.class public Lcom/samsung/android/multidisplay/common/FallbackArrayList;
.super Ljava/util/ArrayList;
.source "FallbackArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final FALLBACK_ENABLED:Z = true

.field public static mFallbackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->mFallbackIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->mFallbackIndex:I

    invoke-super {p0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->mFallbackIndex:I

    invoke-super {p0, v1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->mFallbackIndex:I

    invoke-super {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->mFallbackIndex:I

    invoke-super {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->mFallbackIndex:I

    invoke-super {p0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public setFallbackIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    sput p1, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->mFallbackIndex:I

    return-void
.end method
