.class final Landroid/app/KnoxNotification$1;
.super Ljava/lang/Object;
.source "KnoxNotification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KnoxNotification;
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
        "Landroid/app/KnoxNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/KnoxNotification;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    new-instance v0, Landroid/app/KnoxNotification;

    invoke-direct {v0, p1}, Landroid/app/KnoxNotification;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/app/KnoxNotification$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/KnoxNotification;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/KnoxNotification;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Landroid/app/KnoxNotification;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/app/KnoxNotification$1;->newArray(I)[Landroid/app/KnoxNotification;

    move-result-object v0

    return-object v0
.end method
