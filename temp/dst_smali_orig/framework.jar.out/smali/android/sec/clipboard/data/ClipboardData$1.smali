.class final Landroid/sec/clipboard/data/ClipboardData$1;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardData;
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
        "Landroid/sec/clipboard/data/ClipboardData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "format":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "callerUid":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v4, :cond_1

    .local v4, "hasFD":Z
    :goto_0
    if-eqz v4, :cond_2

    new-instance v5, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6, v7}, Landroid/sec/clipboard/data/ClipboardData;->setTimestamp(J)V

    invoke-virtual {v0, v2, v3}, Landroid/sec/clipboard/data/ClipboardData;->setCallerUid(J)V

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/data/ClipboardData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->readFromSource(Landroid/os/Parcel;)V

    :cond_0
    return-object v0

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    .end local v4    # "hasFD":Z
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "hasFD":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardData$1;->newArray(I)[Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method
