.class final Landroid/widget/TextView$SavedState$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/widget/TextView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/TextView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 11758
    new-instance v0, Landroid/widget/TextView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/TextView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 11756
    invoke-virtual {p0, p1}, Landroid/widget/TextView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/TextView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/TextView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 11762
    new-array v0, p1, [Landroid/widget/TextView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 11756
    invoke-virtual {p0, p1}, Landroid/widget/TextView$SavedState$1;->newArray(I)[Landroid/widget/TextView$SavedState;

    move-result-object v0

    return-object v0
.end method
