.class public final Lcom/samsung/android/camera/iris/EyeInfo;
.super Ljava/lang/Object;
.source "EyeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;,
        Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/camera/iris/EyeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISTANCE_CLOSE:I = 0x1

.field public static final DISTANCE_FAR:I = 0x4

.field public static final DISTANCE_GOOD:I = 0x0

.field public static final DISTANCE_TOO_CLOSE:I = 0x3

.field public static final DISTANCE_TOO_FAR:I = 0x6

.field public static final DISTANCE_VERY_CLOSE:I = 0x2

.field public static final DISTANCE_VERY_FAR:I = 0x5

.field public static final INFO_NOT_SUPPORTED:I = -0x1

.field public static final IRIS_LEFT_EYE:I = 0x0

.field public static final IRIS_RIGHT_EYE:I = 0x1

.field public static final OPENING_GOOD:I = 0x0

.field public static final OPENING_SMALL:I = 0x1

.field public static final OPENING_TOO_SMALL:I = 0x3

.field public static final OPENING_VERY_SMALL:I = 0x2

.field public static final PUPIL_INFO_EYE_IS_FAKE:I = 0x3

.field public static final PUPIL_INFO_EYE_LOW_IRIS_SCLERA_CONTRAST:I = 0x5

.field public static final PUPIL_INFO_EYE_LOW_PUPIL_IRIS_CONTRAST:I = 0x4

.field public static final PUPIL_INFO_EYE_NOT_PRESENT:I = 0x1

.field public static final PUPIL_INFO_EYE_REGION_LOW_CONSTRAST:I = 0x2

.field public static final PUPIL_INFO_LESS_QUALITY_SCORE:I = 0x7

.field public static final PUPIL_INFO_NONE:I = 0x0

.field public static final PUPIL_INFO_SMALL_MATCH_AREA:I = 0x6

.field public static final REFLECTION_INFO_EYE_HIGHLIGHT_OCCLUSION:I = 0x0

.field public static final REFLECTION_INFO_EYE_REGION_OVERILLUMINATED:I = 0x1


# instance fields
.field public mAcquireInfo:I

.field public mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

.field public mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

.field public mReflectionNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/samsung/android/camera/iris/EyeInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/camera/iris/EyeInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/iris/EyeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-array v1, v3, [Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    iput-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    .line 137
    iget v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionNum:I

    new-array v1, v1, [Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    iput-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 139
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    .line 141
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 142
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 143
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 144
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 145
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mDistance:I

    .line 146
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mOpening:I

    .line 147
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mMsgId:I

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionNum:I

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    .line 152
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 153
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 154
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 155
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 156
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mMsgId:I

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/camera/iris/EyeInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/camera/iris/EyeInfo$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/EyeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;II)V
    .locals 0
    .param p1, "pupilInfo"    # [Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;
    .param p2, "reflectionInfo"    # [Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;
    .param p3, "acquireInfo"    # I
    .param p4, "reflectionNum"    # I

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    .line 130
    iput-object p2, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    .line 131
    iput p3, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mAcquireInfo:I

    .line 132
    iput p4, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionNum:I

    .line 133
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mDistance:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mOpening:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mPupilInfo:[Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mMsgId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionNum:I

    if-ge v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/camera/iris/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/camera/iris/EyeInfo$ReflectionInfo;->mMsgId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_1
    return-void
.end method
