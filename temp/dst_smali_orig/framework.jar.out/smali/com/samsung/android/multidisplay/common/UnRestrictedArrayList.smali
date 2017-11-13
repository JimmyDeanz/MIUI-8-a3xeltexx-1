.class public Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
.super Ljava/util/ArrayList;
.source "UnRestrictedArrayList.java"


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
.field public static final UNRESTRICTED_ENABLED:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<TE;>;"
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
    .local p0, "this":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<TE;>;"
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
    .local p0, "this":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
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
    .local p0, "this":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<TE;>;"
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
    const/4 v1, 0x0

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
    .local p0, "this":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
