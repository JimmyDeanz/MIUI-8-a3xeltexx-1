.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final mDisplayId:I

.field private final mHash:I

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResDir:Ljava/lang/String;

.field private final mScale:F

.field private final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;F)V
    .locals 6
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "scale"    # F

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FI)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;FI)V
    .locals 7
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "scale"    # F
    .param p5, "userId"    # I

    .prologue
    .line 49
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FILandroid/os/IBinder;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;FILandroid/os/IBinder;)V
    .locals 3
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "scale"    # F
    .param p5, "userId"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p5, p0, Landroid/content/res/ResourcesKey;->mUserId:I

    .line 57
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 58
    iput p2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 59
    if-eqz p3, :cond_0

    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_0
    iput-object p3, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 61
    iput p4, p0, Landroid/content/res/ResourcesKey;->mScale:F

    .line 63
    const/16 v0, 0x11

    .line 64
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int/lit16 v0, v1, 0x20f

    .line 65
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    add-int v0, v1, v2

    .line 66
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 67
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/ResourcesKey;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 69
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/ResourcesKey;->mUserId:I

    add-int v0, v1, v2

    .line 75
    iput v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    .line 76
    return-void

    .line 59
    .end local v0    # "hash":I
    .restart local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_0
    sget-object p3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0

    .line 64
    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    .restart local v0    # "hash":I
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 89
    instance-of v2, p1, Landroid/content/res/ResourcesKey;

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 92
    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 94
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-ne v2, v3, :cond_0

    .line 100
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget v2, p0, Landroid/content/res/ResourcesKey;->mScale:F

    iget v3, v0, Landroid/content/res/ResourcesKey;->mScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 107
    iget v2, p0, Landroid/content/res/ResourcesKey;->mUserId:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mUserId:I

    if-ne v2, v3, :cond_0

    .line 111
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
