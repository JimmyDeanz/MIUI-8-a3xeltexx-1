.class final Landroid/spay/PaymentTZServiceConfig$2;
.super Ljava/lang/Object;
.source "PaymentTZServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/PaymentTZServiceConfig;
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
        "Landroid/spay/PaymentTZServiceConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/spay/PaymentTZServiceConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    new-instance v0, Landroid/spay/PaymentTZServiceConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/spay/PaymentTZServiceConfig;-><init>(Landroid/os/Parcel;Landroid/spay/PaymentTZServiceConfig$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/spay/PaymentTZServiceConfig$2;->createFromParcel(Landroid/os/Parcel;)Landroid/spay/PaymentTZServiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/spay/PaymentTZServiceConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 61
    new-array v0, p1, [Landroid/spay/PaymentTZServiceConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/spay/PaymentTZServiceConfig$2;->newArray(I)[Landroid/spay/PaymentTZServiceConfig;

    move-result-object v0

    return-object v0
.end method
