.class final Landroid/widget/CompoundButton$SavedState$1;
.super Ljava/lang/Object;
.source "CompoundButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CompoundButton$SavedState;
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
        "Landroid/widget/CompoundButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/CompoundButton$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 533
    new-instance v0, Landroid/widget/CompoundButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/CompoundButton$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/CompoundButton$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/CompoundButton$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 537
    new-array v0, p1, [Landroid/widget/CompoundButton$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton$SavedState$1;->newArray(I)[Landroid/widget/CompoundButton$SavedState;

    move-result-object v0

    return-object v0
.end method
