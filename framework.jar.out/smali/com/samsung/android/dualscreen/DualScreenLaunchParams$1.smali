.class final Lcom/samsung/android/dualscreen/DualScreenLaunchParams$1;
.super Ljava/lang/Object;
.source "DualScreenLaunchParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/DualScreenLaunchParams;
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
        "Lcom/samsung/android/dualscreen/DualScreenLaunchParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/dualscreen/DualScreenLaunchParams;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 162
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/dualscreen/DualScreenLaunchParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 167
    new-array v0, p1, [Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams$1;->newArray(I)[Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v0

    return-object v0
.end method
