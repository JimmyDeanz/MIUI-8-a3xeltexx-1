.class public final enum Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
.super Ljava/lang/Enum;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDS_CameraStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

.field public static final enum FRONT:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

.field public static final enum REAR:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

.field public static final enum STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const-string v1, "REAR"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->REAR:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const-string v1, "FRONT"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->FRONT:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->REAR:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->FRONT:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->$VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->value:I

    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .locals 6
    .param p0, "value"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "retStatus":Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->values()[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, "tempVal":Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_1

    move-object v3, v4

    .end local v4    # "tempVal":Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    :cond_0
    return-object v3

    .restart local v4    # "tempVal":Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->$VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v0}, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->value:I

    return v0
.end method
