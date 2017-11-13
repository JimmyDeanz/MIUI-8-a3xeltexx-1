.class public Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
.super Ljava/lang/Object;
.source "VirtualScreenLaunchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BASE_ACTIVITY:I = 0x1

.field public static final FLAG_CLEAR_TASKS:I = 0x2

.field public static final FLAG_LAYOUT_POLICY:I = 0x10

.field public static final FLAG_NO_ANIMATION:I = 0x4

.field public static final FLAG_RECREATE_VIRTUALSCREEN:I = 0x8


# instance fields
.field public mBounds:Landroid/graphics/Rect;

.field public mDisplayId:I

.field public mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams$1;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    iput-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Params{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%08x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
