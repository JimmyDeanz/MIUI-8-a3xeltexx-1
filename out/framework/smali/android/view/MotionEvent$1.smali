.class final Landroid/view/MotionEvent$1;
.super Ljava/lang/Object;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
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
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 3697
    invoke-static {p1}, Landroid/view/MotionEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 3694
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/MotionEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 3701
    new-array v0, p1, [Landroid/view/MotionEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 3694
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$1;->newArray(I)[Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method
