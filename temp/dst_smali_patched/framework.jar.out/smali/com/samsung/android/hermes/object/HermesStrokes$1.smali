.class final Lcom/samsung/android/hermes/object/HermesStrokes$1;
.super Ljava/lang/Object;
.source "HermesStrokes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/object/HermesStrokes;
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
        "Lcom/samsung/android/hermes/object/HermesStrokes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hermes/object/HermesStrokes;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Lcom/samsung/android/hermes/object/HermesStrokes;

    invoke-direct {v0}, Lcom/samsung/android/hermes/object/HermesStrokes;-><init>()V

    .local v0, "data":Lcom/samsung/android/hermes/object/HermesStrokes;
    invoke-virtual {v0, p1}, Lcom/samsung/android/hermes/object/HermesStrokes;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/hermes/object/HermesStrokes$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hermes/object/HermesStrokes;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/hermes/object/HermesStrokes;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/samsung/android/hermes/object/HermesStrokes;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/hermes/object/HermesStrokes$1;->newArray(I)[Lcom/samsung/android/hermes/object/HermesStrokes;

    move-result-object v0

    return-object v0
.end method
