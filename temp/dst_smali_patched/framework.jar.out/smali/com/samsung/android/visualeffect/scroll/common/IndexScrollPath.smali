.class public Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;
.super Ljava/lang/Object;
.source "IndexScrollPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$1;,
        Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;
    }
.end annotation


# instance fields
.field private lastX:F

.field private lastX1:F

.field private lastY:F

.field private lastY1:F

.field private final offsetX:F

.field private final offsetY:F

.field private path:[Landroid/graphics/Path;

.field private final pathTotal:I

.field private ratio:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    const/16 v1, 0x17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->pathTotal:I

    const v0, -0x3c120ccd    # -475.9f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->offsetX:F

    const v0, -0x3c2c199a    # -423.8f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->offsetY:F

    const v0, 0x3fa8f5c3    # 1.32f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->ratio:F

    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->ratio:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->ratio:F

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->setPath()V

    return-void
.end method

.method private setPath()V
    .locals 11

    .prologue
    const/4 v9, -0x1

    .local v9, "count":I
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .local v10, "mtrx":Landroid/graphics/Matrix;
    const v0, -0x3c120ccd    # -475.9f

    const v2, -0x3c2c199a    # -423.8f

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->ratio:F

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->ratio:F

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .local v1, "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x440ba666    # 558.6f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d356666    # -101.3f

    const v5, -0x3f633333    # -4.9f

    const v6, -0x3d503333    # -87.9f

    const v7, -0x3f633333    # -4.9f

    const v8, -0x3cf94ccd    # -134.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3dd7999a    # -42.1f

    const v5, 0x409ccccd    # 4.9f

    const v6, -0x3e473333    # -23.1f

    const v7, 0x409ccccd    # 4.9f

    const v8, -0x3cf94ccd    # -134.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x440ba666    # 558.6f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x4411f333    # 583.8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d0f6666    # -120.3f

    const v5, -0x3ec1999a    # -11.9f

    const v6, -0x3d29999a    # -107.2f

    const v7, -0x3ec1999a    # -11.9f

    const/high16 v8, -0x3ce00000    # -160.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3da5999a    # -54.6f

    const v5, 0x413e6666    # 11.9f

    const/high16 v6, -0x3dfc0000    # -33.0f

    const v7, 0x413e6666    # 11.9f

    const/high16 v8, -0x3ce00000    # -160.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x4411f333    # 583.8f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x44133333    # 588.8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d14cccd    # -117.6f

    const v5, -0x3e64cccd    # -19.4f

    const v6, -0x3d2ecccd    # -104.6f

    const v7, -0x3e64cccd    # -19.4f

    const/high16 v8, -0x3cdb0000    # -165.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d86cccd    # -62.3f

    const v5, 0x419b3333    # 19.4f

    const v6, -0x3ddd3333    # -40.7f

    const v7, 0x419b3333    # 19.4f

    const/high16 v8, -0x3cdb0000    # -165.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x44133333    # 588.8f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x44151333    # 596.3f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d1c3333    # -113.9f

    const v5, -0x3e1ccccd    # -28.4f

    const v6, -0x3d323333    # -102.9f

    const v7, -0x3e1ccccd    # -28.4f

    const v8, -0x3cd38000    # -172.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d716666    # -71.3f

    const v5, 0x41e33333    # 28.4f

    const/high16 v6, -0x3da20000    # -55.5f

    const v7, 0x41e33333    # 28.4f

    const v8, -0x3cd38000    # -172.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x44151333    # 596.3f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x4418d333    # 611.3f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, -0x3cfa0000    # -134.0f

    const v5, -0x3de6cccd    # -38.3f

    const v6, -0x3d206666    # -111.8f

    const v7, -0x3de6cccd    # -38.3f

    const v8, -0x3cc48000    # -187.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, -0x3d650000    # -77.5f

    const v5, 0x42193333    # 38.3f

    const v6, -0x3daacccd    # -53.3f

    const v7, 0x42193333    # 38.3f

    const v8, -0x3cc48000    # -187.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x4418d333    # 611.3f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x4418d333    # 611.3f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, -0x3cfa0000    # -134.0f

    const v5, -0x3dbc6666    # -48.9f

    const v6, -0x3d206666    # -111.8f

    const v7, -0x3dbc6666    # -48.9f

    const v8, -0x3cc48000    # -187.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, -0x3d650000    # -77.5f

    const v5, 0x4243999a    # 48.9f

    const v6, -0x3daacccd    # -53.3f

    const v7, 0x4243999a    # 48.9f

    const v8, -0x3cc48000    # -187.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x4418d333    # 611.3f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x4418d333    # 611.3f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d056666    # -125.3f

    const v5, -0x3d926666    # -59.4f

    const v6, -0x3d206666    # -111.8f

    const v7, -0x3d926666    # -59.4f

    const v8, -0x3cc48000    # -187.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, -0x3d650000    # -77.5f

    const v5, 0x426d999a    # 59.4f

    const v6, -0x3d833333    # -63.2f

    const v7, 0x426d999a    # 59.4f

    const v8, -0x3cc48000    # -187.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x4418d333    # 611.3f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x441e799a    # 633.9f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3cf08000    # -143.5f

    const v5, -0x3d743333    # -69.9f

    const v6, -0x3d053333    # -125.4f

    const v7, -0x3d743333    # -69.9f

    const v8, -0x3cade666    # -210.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d543333    # -85.9f

    const v5, 0x428bcccd    # 69.9f

    const v6, -0x3d833333    # -63.2f

    const v7, 0x428bcccd    # 69.9f

    const/high16 v8, -0x3cae0000    # -210.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x441e799a    # 633.9f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x44026ccd    # 521.7f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x4313199a    # 147.1f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3cd1cccd    # -174.2f

    const v5, -0x3d593333    # -83.4f

    const v6, -0x3ce0999a    # -159.4f

    const v7, -0x3d593333    # -83.4f

    const/high16 v8, -0x3c8b0000    # -245.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3d516666    # -87.3f

    const v5, 0x42a6cccd    # 83.4f

    const v6, -0x3d80cccd    # -63.8f

    const v7, 0x42a6cccd    # 83.4f

    const v8, -0x3c8b199a    # -244.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, 0x43130000    # 147.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x44026ccd    # 521.7f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x44025333    # 521.3f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x4313999a    # 147.6f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, -0x3d2f0000    # -104.5f

    const v5, -0x3ddd999a    # -40.6f

    const v6, -0x3cf6199a    # -137.9f

    const v7, -0x3d756666    # -69.3f

    const v8, -0x3cd0cccd    # -175.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, -0x3ef00000    # -9.0f

    const v4, -0x3edccccd    # -10.2f

    const v5, -0x3e6f3333    # -18.1f

    const v6, -0x3e4b3333    # -22.6f

    const/high16 v7, -0x3e4c0000    # -22.5f

    const v8, -0x3dee6666    # -36.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3fb33333    # -3.2f

    const v4, -0x3ee4cccd    # -9.7f

    const v5, -0x3f7ccccd    # -4.1f

    const v6, -0x3e5b3333    # -20.6f

    const v7, -0x3f7ccccd    # -4.1f

    const v8, -0x3dfa6666    # -33.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3e8e6666    # -15.1f

    const/high16 v5, 0x3fc00000    # 1.5f

    const v6, -0x3e24cccd    # -27.4f

    const v7, 0x40b66666    # 5.7f

    const v8, -0x3de7999a    # -38.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x409ccccd    # 4.9f

    const v4, -0x3eaccccd    # -13.2f

    const v5, 0x41433333    # 12.2f

    const v6, -0x3e38cccd    # -24.9f

    const v7, 0x41aa6666    # 21.3f

    const v8, -0x3df66666    # -34.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x40266666    # 2.6f

    const v4, -0x3fd33333    # -2.7f

    const v5, 0x40a66666    # 5.2f

    const v6, -0x3f533333    # -5.4f

    const v7, 0x40f66666    # 7.7f

    const v8, -0x3efb3333    # -8.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41dccccd    # 27.6f

    const v4, -0x3e04cccd    # -31.4f

    const v5, 0x42753333    # 61.3f

    const v6, -0x3d7b6666    # -66.3f

    const v7, 0x42753333    # 61.3f

    const v8, -0x3cdbcccd    # -164.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43138000    # 147.5f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x44025333    # 521.3f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x44025333    # 521.3f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x4313999a    # 147.6f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, -0x3d2f0000    # -104.5f

    const v5, -0x3dbd3333    # -48.7f

    const v6, -0x3cf6199a    # -137.9f

    const v7, -0x3d5ccccd    # -81.6f

    const v8, -0x3cd0cccd    # -175.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3edb3333    # -10.3f

    const v4, -0x3edccccd    # -10.2f

    const v5, -0x3e6ccccd    # -18.4f

    const v6, -0x3e4b3333    # -22.6f

    const/high16 v7, -0x3e440000    # -23.5f

    const v8, -0x3dee6666    # -36.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3f933333    # -3.7f

    const v4, -0x3ee4cccd    # -9.7f

    const v5, -0x3f433333    # -5.9f

    const v6, -0x3e5b3333    # -20.6f

    const v7, -0x3f433333    # -5.9f

    const v8, -0x3dfa6666    # -33.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3e8e6666    # -15.1f

    const v5, 0x4039999a    # 2.9f

    const v6, -0x3e24cccd    # -27.4f

    const v7, 0x40f66666    # 7.7f

    const v8, -0x3de7999a    # -38.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x40b33333    # 5.6f

    const v4, -0x3eaccccd    # -13.2f

    const v5, 0x415e6666    # 13.9f

    const v6, -0x3e38cccd    # -24.9f

    const v7, 0x41c33333    # 24.4f

    const v8, -0x3df66666    # -34.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, 0x40400000    # 3.0f

    const v4, -0x3fd33333    # -2.7f

    const v5, 0x40bccccd    # 5.9f

    const v6, -0x3f533333    # -5.4f

    const v7, 0x410ccccd    # 8.8f

    const v8, -0x3efb3333    # -8.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41fccccd    # 31.6f

    const v4, -0x3e04cccd    # -31.4f

    const v5, 0x428c3333    # 70.1f

    const v6, -0x3d7b6666    # -66.3f

    const v7, 0x428c3333    # 70.1f

    const v8, -0x3cdbcccd    # -164.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43138000    # 147.5f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x44025333    # 521.3f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x44012666    # 516.6f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43183333    # 152.2f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3ded999a    # -36.6f

    const v5, -0x3f49999a    # -5.7f

    const v6, -0x3d7f3333    # -64.4f

    const/high16 v7, -0x3e980000    # -14.5f

    const v8, -0x3d526666    # -86.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3e666666    # -19.2f

    const v4, -0x3dd06666    # -43.9f

    const v5, -0x3da5999a    # -54.6f

    const v6, -0x3d78cccd    # -67.6f

    const v7, -0x3d85999a    # -62.6f

    const v8, -0x3d6ecccd    # -72.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3e1a6666    # -28.7f

    const v4, -0x3e79999a    # -16.8f

    const v5, -0x3dbf3333    # -48.2f

    const v6, -0x3dbc6666    # -48.9f

    const v7, -0x3dbf3333    # -48.2f

    const v8, -0x3d54999a    # -85.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3def999a    # -36.1f

    const v5, 0x4195999a    # 18.7f

    const v6, -0x3d78cccd    # -67.6f

    const/high16 v7, 0x423a0000    # 46.5f

    const v8, -0x3d56999a    # -84.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3dcccccd    # 0.1f

    const v8, -0x42333333    # -0.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v5, 0x3fc00000    # 1.5f

    const v6, -0x4099999a    # -0.9f

    const v7, 0x40133333    # 2.3f

    const v8, -0x4059999a    # -1.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41166666    # 9.4f

    const v4, -0x3f466666    # -5.8f

    const v5, 0x4231999a    # 44.4f

    const/high16 v6, -0x3e140000    # -29.5f

    const v7, 0x427c6666    # 63.1f

    const v8, -0x3d6f999a    # -72.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4101999a    # 8.1f

    const v4, -0x3e4f3333    # -22.1f

    const v5, 0x41533333    # 13.2f

    const/high16 v6, -0x3db80000    # -50.0f

    const v7, 0x41533333    # 13.2f

    const v8, -0x3d52999a    # -86.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43a58000    # 331.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x44012666    # 516.6f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x44012666    # 516.6f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43183333    # 152.2f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3ded999a    # -36.6f

    const v5, -0x3f29999a    # -6.7f

    const v6, -0x3d7f3333    # -64.4f

    const/high16 v7, -0x3e780000    # -17.0f

    const v8, -0x3d526666    # -86.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3e4b3333    # -22.6f

    const v4, -0x3dd06666    # -43.9f

    const v5, -0x3d7fcccd    # -64.1f

    const v6, -0x3d78cccd    # -67.6f

    const/high16 v7, -0x3d6d0000    # -73.5f

    const v8, -0x3d6ecccd    # -72.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3df93333    # -33.7f

    const v4, -0x3e79999a    # -16.8f

    const/high16 v5, -0x3d9e0000    # -56.5f

    const v6, -0x3dbc6666    # -48.9f

    const/high16 v7, -0x3d9e0000    # -56.5f

    const v8, -0x3d54999a    # -85.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3def999a    # -36.1f

    const v5, 0x41af3333    # 21.9f

    const v6, -0x3d78cccd    # -67.6f

    const v7, 0x425a6666    # 54.6f

    const v8, -0x3d56999a    # -84.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    const v7, 0x3dcccccd    # 0.1f

    const v8, -0x42333333    # -0.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, -0x41000000    # -0.5f

    const v5, 0x3fe66666    # 1.8f

    const v6, -0x4099999a    # -0.9f

    const v7, 0x402ccccd    # 2.7f

    const v8, -0x4059999a    # -1.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4131999a    # 11.1f

    const v4, -0x3f466666    # -5.8f

    const v5, 0x42506666    # 52.1f

    const/high16 v6, -0x3e140000    # -29.5f

    const/high16 v7, 0x42940000    # 74.0f

    const v8, -0x3d6f999a    # -72.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41166666    # 9.4f

    const v4, -0x3e4f3333    # -22.1f

    const/high16 v5, 0x41780000    # 15.5f

    const/high16 v6, -0x3db80000    # -50.0f

    const/high16 v7, 0x41780000    # 15.5f

    const v8, -0x3d52999a    # -86.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43a58000    # 331.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x44012666    # 516.6f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43edf333    # 475.9f

    const v3, 0x43f53333    # 490.4f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43326666    # 178.4f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3e10cccd    # -29.9f

    const/high16 v5, -0x3f800000    # -4.0f

    const/high16 v6, -0x3da80000    # -54.0f

    const v7, -0x3ed9999a    # -10.4f

    const/high16 v8, -0x3d6c0000    # -74.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3e75999a    # -17.3f

    const v4, -0x3dba6666    # -49.4f

    const/high16 v5, -0x3d5d0000    # -81.5f

    const v6, -0x3d6c6666    # -73.8f

    const v7, -0x3d45cccd    # -93.1f

    const v8, -0x3d643333    # -77.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x41b33333    # -0.2f

    const v4, -0x42333333    # -0.1f

    const v5, -0x41333333    # -0.4f

    const v6, -0x41b33333    # -0.2f

    const v7, -0x40cccccd    # -0.7f

    const v8, -0x41b33333    # -0.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x40cccccd    # -0.7f

    const v4, -0x41666666    # -0.3f

    const v5, -0x40666666    # -1.2f

    const v6, -0x41333333    # -0.4f

    const v7, -0x40666666    # -1.2f

    const v8, -0x41333333    # -0.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3de86666    # -37.9f

    const v4, -0x3ea66666    # -13.6f

    const/high16 v5, -0x3d7e0000    # -65.0f

    const v6, -0x3db86666    # -49.9f

    const/high16 v7, -0x3d7e0000    # -65.0f

    const/high16 v8, -0x3d470000    # -92.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41d8cccd    # 27.1f

    const v4, -0x3d623333    # -78.9f

    const v5, 0x42823333    # 65.1f

    const/high16 v6, -0x3d470000    # -92.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    const v7, 0x3e4ccccd    # 0.2f

    const v8, -0x42333333    # -0.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x3f666666    # 0.9f

    const v4, -0x41666666    # -0.3f

    const v5, 0x3fd9999a    # 1.7f

    const v6, -0x40e66666    # -0.6f

    const v7, 0x40266666    # 2.6f

    const v8, -0x4099999a    # -0.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x415e6666    # 13.9f

    const v4, -0x3f633333    # -4.9f

    const v5, 0x4298999a    # 76.3f

    const v6, -0x3e14cccd    # -29.4f

    const v7, 0x42ba6666    # 93.2f

    const v8, -0x3d64999a    # -77.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x40bccccd    # 5.9f

    const v4, -0x3e60cccd    # -19.9f

    const/high16 v5, 0x41180000    # 9.5f

    const v6, -0x3dd06666    # -43.9f

    const/high16 v7, 0x41180000    # 9.5f

    const v8, -0x3d6c3333    # -73.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43326666    # 178.4f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43f53333    # 490.4f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43bc4000    # 376.5f

    const v3, 0x43a2cccd    # 325.6f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3daf3333    # -52.2f

    const/4 v4, 0x0

    const/high16 v5, -0x3d430000    # -94.5f

    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v7, -0x3d430000    # -94.5f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42593333    # 54.3f

    const v5, 0x42293333    # 42.3f

    const v6, 0x42c46666    # 98.2f

    const/high16 v7, 0x42bd0000    # 94.5f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x42153333    # 37.3f

    const/4 v4, 0x0

    const/high16 v5, 0x42c70000    # 99.5f

    const/high16 v6, 0x42120000    # 36.5f

    const/high16 v7, 0x42c70000    # 99.5f

    const v8, 0x4312b333    # 146.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c8b0000    # -245.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c8b0000    # -245.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43edf333    # 475.9f

    const v4, 0x438ec000    # 285.5f

    const v5, 0x43d48000    # 425.0f

    const v6, 0x43a2cccd    # 325.6f

    const v7, 0x43bc4000    # 376.5f

    const v8, 0x43a2cccd    # 325.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43b4cccd    # 361.6f

    const v3, 0x43a2cccd    # 325.6f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, -0x3d900000    # -60.0f

    const/4 v4, 0x0

    const v5, -0x3d26cccd    # -108.6f

    const/high16 v6, 0x42300000    # 44.0f

    const v7, -0x3d26cccd    # -108.6f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42593333    # 54.3f

    const v5, 0x42426666    # 48.6f

    const v6, 0x42c46666    # 98.2f

    const v7, 0x42d93333    # 108.6f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x425c6666    # 55.1f

    const/4 v4, 0x0

    const v5, 0x42a5cccd    # 82.9f

    const v6, 0x42066666    # 33.6f

    const v7, 0x42d2cccd    # 105.4f

    const v8, 0x429b999a    # 77.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, 0x41100000    # 9.0f

    const v4, 0x418d999a    # 17.7f

    const v5, 0x410e6666    # 8.9f

    const v6, 0x4225999a    # 41.4f

    const v7, 0x410e6666    # 8.9f

    const v8, 0x4289cccd    # 68.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c8b0000    # -245.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c8b0000    # -245.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43edf333    # 475.9f

    const v4, 0x43964000    # 300.5f

    const/high16 v5, 0x43ce0000    # 412.0f

    const v6, 0x43a2cccd    # 325.6f

    const v7, 0x43b4cccd    # 361.6f

    const v8, 0x43a2cccd    # 325.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43e9f333    # 467.9f

    const v3, 0x4377cccd    # 247.8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43da8000    # 437.0f

    const/high16 v4, 0x43ab0000    # 342.0f

    const v5, 0x43b56666    # 362.8f

    const v6, 0x43a2cccd    # 325.6f

    const v7, 0x43a1e666    # 323.8f

    const v8, 0x43a2cccd    # 325.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3da6cccd    # -54.3f

    const/4 v4, 0x0

    const v5, -0x3d3b999a    # -98.2f

    const/high16 v6, 0x42300000    # 44.0f

    const v7, -0x3d3b999a    # -98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42593333    # 54.3f

    const/high16 v5, 0x42300000    # 44.0f

    const v6, 0x42c46666    # 98.2f

    const v7, 0x42c46666    # 98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4210cccd    # 36.2f

    const/4 v4, 0x0

    const/high16 v5, 0x42b30000    # 89.5f

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x4310199a    # 144.1f

    const v8, 0x429b999a    # 77.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41133333    # 9.2f

    const v4, 0x418a6666    # 17.3f

    const v5, 0x4101999a    # 8.1f

    const v6, 0x4225999a    # 41.4f

    const v7, 0x4101999a    # 8.1f

    const v8, 0x4289cccd    # 68.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c8b0000    # -245.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c8b0000    # -245.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43edf333    # 475.9f

    const v4, 0x434e6666    # 206.4f

    const v5, 0x43ec7333    # 472.9f

    const v6, 0x4364e666    # 228.9f

    const v7, 0x43e9f333    # 467.9f

    const v8, 0x4377cccd    # 247.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43eb4000    # 470.5f

    const v3, 0x436cb333    # 236.7f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43d88ccd    # 433.1f

    const/high16 v4, 0x43b70000    # 366.0f

    const v5, 0x43ac4ccd    # 344.6f

    const v6, 0x43aae666    # 341.8f

    const v7, 0x43a1a666    # 323.3f

    const v8, 0x43a6f333    # 333.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, -0x40400000    # -1.5f

    const v4, -0x40cccccd    # -0.7f

    const v5, -0x3fb9999a    # -3.1f

    const v6, -0x4059999a    # -1.3f

    const v7, -0x3f6ccccd    # -4.6f

    const v8, -0x400ccccd    # -1.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3ed1999a    # -10.9f

    const v4, -0x3f7ccccd    # -4.1f

    const v5, -0x3e4b3333    # -22.6f

    const v6, -0x3f333333    # -6.4f

    const v7, -0x3df46666    # -34.9f

    const v8, -0x3f333333    # -6.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3da6cccd    # -54.3f

    const/4 v4, 0x0

    const v5, -0x3d3b999a    # -98.2f

    const/high16 v6, 0x42300000    # 44.0f

    const v7, -0x3d3b999a    # -98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42593333    # 54.3f

    const/high16 v5, 0x42300000    # 44.0f

    const v6, 0x42c46666    # 98.2f

    const v7, 0x42c46666    # 98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4164cccd    # 14.3f

    const/4 v4, 0x0

    const v5, 0x41df3333    # 27.9f

    const v6, -0x3fb9999a    # -3.1f

    const v7, 0x4220cccd    # 40.2f

    const v8, -0x3ef66666    # -8.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41af3333    # 21.9f

    const v4, -0x3efe6666    # -8.1f

    const v5, 0x42d5cccd    # 106.9f

    const v6, -0x3e0f3333    # -30.1f

    const/high16 v7, 0x43120000    # 146.0f

    const/high16 v8, 0x42c30000    # 97.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x40733333    # 3.8f

    const v4, 0x4184cccd    # 16.6f

    const/high16 v5, 0x40c00000    # 6.0f

    const v6, 0x420e6666    # 35.6f

    const/high16 v7, 0x40c00000    # 6.0f

    const v8, 0x4267999a    # 57.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43edf333    # 475.9f

    const v4, 0x43493333    # 201.2f

    const/high16 v5, 0x43ed0000    # 474.0f

    const v6, 0x435c3333    # 220.2f

    const v7, 0x43eb4000    # 470.5f

    const v8, 0x436cb333    # 236.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43c10ccd    # 386.1f

    const v3, 0x43b67333    # 364.9f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3f233333    # -6.9f

    const v4, 0x40f33333    # 7.6f

    const v5, -0x3e84cccd    # -15.7f

    const v6, 0x413e6666    # 11.9f

    const v7, -0x3e4ccccd    # -22.4f

    const v8, 0x413e6666    # 11.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3efe6666    # -8.1f

    const/4 v4, 0x0

    const v5, -0x3eb33333    # -12.8f

    const v6, -0x3fb33333    # -3.2f

    const v7, -0x3e35999a    # -25.3f

    const v8, -0x3e78cccd    # -16.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, -0x3e700000    # -18.0f

    const/high16 v4, -0x3e580000    # -21.0f

    const v5, -0x3dcccccd    # -44.8f

    const v6, -0x3df6cccd    # -34.3f

    const v7, -0x3d6acccd    # -74.6f

    const v8, -0x3df6cccd    # -34.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3da6cccd    # -54.3f

    const/4 v4, 0x0

    const v5, -0x3d3b999a    # -98.2f

    const/high16 v6, 0x42300000    # 44.0f

    const v7, -0x3d3b999a    # -98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42593333    # 54.3f

    const/high16 v5, 0x42300000    # 44.0f

    const v6, 0x42c46666    # 98.2f

    const v7, 0x42c46666    # 98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41f66666    # 30.8f

    const/4 v4, 0x0

    const v5, 0x4268cccd    # 58.2f

    const v6, -0x3e9e6666    # -14.1f

    const v7, 0x42986666    # 76.2f

    const v8, -0x3deecccd    # -36.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4134cccd    # 11.3f

    const v4, -0x3ebccccd    # -12.2f

    const v5, 0x417e6666    # 15.9f

    const v6, -0x3e8e6666    # -15.1f

    const v7, 0x41bd999a    # 23.7f

    const v8, -0x3e8e6666    # -15.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x40e66666    # 7.2f

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const v6, 0x40966666    # 4.7f

    const/high16 v7, 0x41b80000    # 23.0f

    const v8, 0x4154cccd    # 13.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fa66666    # 1.3f

    const/high16 v7, 0x3fc00000    # 1.5f

    const v8, 0x3ff33333    # 1.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3dcccccd    # 0.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x42013333    # 32.3f

    const v4, 0x42233333    # 40.8f

    const v5, 0x42af999a    # 87.8f

    const v6, 0x42a43333    # 82.1f

    const v7, 0x42af999a    # 87.8f

    const/high16 v8, 0x43370000    # 183.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43edf333    # 475.9f

    const v4, 0x4392599a    # 292.7f

    const v5, 0x43d10ccd    # 418.1f

    const v6, 0x43a23333    # 324.4f

    const v7, 0x43c10ccd    # 386.1f

    const v8, 0x43b67333    # 364.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43c44000    # 392.5f

    const v3, 0x43b76666    # 366.8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, -0x3f200000    # -7.0f

    const v4, 0x412b3333    # 10.7f

    const/high16 v5, -0x3e800000    # -16.0f

    const/high16 v6, 0x41e40000    # 28.5f

    const v7, -0x3e29999a    # -26.8f

    const/high16 v8, 0x41e40000    # 28.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3efe6666    # -8.1f

    const/4 v4, 0x0

    const v5, -0x3e21999a    # -27.8f

    const v6, -0x3e3b3333    # -24.6f

    const v7, -0x3ddecccd    # -40.3f

    const v8, -0x3de6cccd    # -38.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, -0x3e700000    # -18.0f

    const/high16 v4, -0x3e580000    # -21.0f

    const v5, -0x3ddccccd    # -40.8f

    const v6, -0x3e05999a    # -31.3f

    const v7, -0x3d72cccd    # -70.6f

    const v8, -0x3e05999a    # -31.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3da6cccd    # -54.3f

    const/4 v4, 0x0

    const v5, -0x3d3b999a    # -98.2f

    const/high16 v6, 0x42300000    # 44.0f

    const v7, -0x3d3b999a    # -98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42593333    # 54.3f

    const/high16 v5, 0x42300000    # 44.0f

    const v6, 0x42c46666    # 98.2f

    const v7, 0x42c46666    # 98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x41f66666    # 30.8f

    const/4 v4, 0x0

    const v5, 0x4258cccd    # 54.2f

    const v6, -0x3ece6666    # -11.1f

    const v7, 0x42906666    # 72.2f

    const v8, -0x3dfacccd    # -33.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4134cccd    # 11.3f

    const v4, -0x3ebccccd    # -12.2f

    const v5, 0x41f73333    # 30.9f

    const v6, -0x3de8cccd    # -37.8f

    const v7, 0x421acccd    # 38.7f

    const v8, -0x3de8cccd    # -37.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4129999a    # 10.6f

    const/4 v4, 0x0

    const v5, 0x412e6666    # 10.9f

    const v6, 0x4179999a    # 15.6f

    const v7, 0x41db3333    # 27.4f

    const v8, 0x420b3333    # 34.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x414e6666    # 12.9f

    const v4, 0x416e6666    # 14.9f

    const v5, 0x42a5999a    # 82.8f

    const v6, 0x42846666    # 66.2f

    const v7, 0x42a5999a    # 82.8f

    const v8, 0x4337199a    # 183.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43edf333    # 475.9f

    const v4, 0x4395999a    # 299.2f

    const v5, 0x43d3b333    # 423.4f

    const v6, 0x43a24000    # 324.5f

    const v7, 0x43c44000    # 392.5f

    const v8, 0x43b76666    # 366.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43aa3333    # 340.4f

    const v3, 0x43c76666    # 398.8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->L:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43aa3333    # 340.4f

    const v3, 0x43c76666    # 398.8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3ece6666    # -11.1f

    const v4, -0x3dd7999a    # -42.1f

    const v5, -0x3dba6666    # -49.4f

    const v6, -0x3d6d999a    # -73.2f

    const/high16 v7, -0x3d420000    # -95.0f

    const v8, -0x3d6d999a    # -73.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3da6cccd    # -54.3f

    const/4 v4, 0x0

    const v5, -0x3d3b999a    # -98.2f

    const/high16 v6, 0x42300000    # 44.0f

    const v7, -0x3d3b999a    # -98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42593333    # 54.3f

    const/high16 v5, 0x42300000    # 44.0f

    const v6, 0x42c46666    # 98.2f

    const v7, 0x42c46666    # 98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4235999a    # 45.4f

    const/4 v4, 0x0

    const v5, 0x42a73333    # 83.6f

    const v6, -0x3e09999a    # -30.8f

    const v7, 0x42bdcccd    # 94.9f

    const v8, -0x3d6e999a    # -72.7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4039999a    # 2.9f

    const v4, -0x3eee6666    # -9.1f

    const/high16 v5, 0x41700000    # 15.0f

    const v6, -0x3e333333    # -25.6f

    const v7, 0x41aa6666    # 21.3f

    const v8, -0x3e333333    # -25.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43b1b333    # 355.4f

    const v4, 0x43d3e666    # 423.8f

    const v5, 0x43abb333    # 343.4f

    const/high16 v6, 0x43cc0000    # 408.0f

    const v7, 0x43aa3333    # 340.4f

    const v8, 0x43c76666    # 398.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43c1b333    # 387.4f

    const v3, 0x43c42666    # 392.3f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->L:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43c1b333    # 387.4f

    const v3, 0x43c42666    # 392.3f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43c1b333    # 387.4f

    const v4, 0x43c42666    # 392.3f

    const v5, 0x43c1b333    # 387.4f

    const v6, 0x43c43333    # 392.4f

    const v7, 0x43c1b333    # 387.4f

    const v8, 0x43c42666    # 392.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x41333333    # -0.4f

    const v4, 0x3f99999a    # 1.2f

    const v5, -0x40cccccd    # -0.7f

    const v6, 0x4019999a    # 2.4f

    const/high16 v7, -0x40800000    # -1.0f

    const v8, 0x40666666    # 3.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3fe66666    # -2.4f

    const v4, 0x41033333    # 8.2f

    const v5, -0x3ec4cccd    # -11.7f

    const v6, 0x41df3333    # 27.9f

    const/high16 v7, -0x3e6c0000    # -18.5f

    const v8, 0x41df3333    # 27.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x40e66666    # 7.2f

    const/4 v4, 0x0

    const v5, 0x4185999a    # 16.7f

    const v6, 0x41a73333    # 20.9f

    const v7, 0x4195999a    # 18.7f

    const v8, 0x41e0cccd    # 28.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3fcccccd    # 1.6f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x4019999a    # 2.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x418e6666    # 17.8f

    const v4, 0x427a6666    # 62.6f

    const v5, 0x42b16666    # 88.7f

    const v6, 0x42993333    # 76.6f

    const v7, 0x42b16666    # 88.7f

    const v8, 0x43568000    # 214.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43edf333    # 475.9f

    const v4, 0x43a1d99a    # 323.7f

    const v5, 0x43cacccd    # 405.6f

    const v6, 0x43a56666    # 330.8f

    const v7, 0x43c1b333    # 387.4f

    const v8, 0x43c42666    # 392.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43bda666    # 379.3f

    const v3, 0x43d3e666    # 423.8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4039999a    # 2.9f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40900000    # 4.5f

    const/high16 v7, 0x40900000    # 4.5f

    const v8, 0x411ccccd    # 9.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x40fccccd    # 7.9f

    const v4, 0x429bcccd    # 77.9f

    const v5, 0x42b86666    # 92.2f

    const v6, 0x42a4cccd    # 82.4f

    const v7, 0x42b86666    # 92.2f

    const v8, 0x436b4ccd    # 235.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const/high16 v4, 0x431f0000    # 159.0f

    const/high16 v5, -0x3d580000    # -84.0f

    const v6, 0x431e199a    # 158.1f

    const v7, -0x3d483333    # -91.9f

    const v8, 0x436a199a    # 234.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43bf999a    # 383.2f

    const v4, 0x43d2999a    # 421.2f

    const v5, 0x43bf199a    # 382.2f

    const v6, 0x43d2a666    # 421.3f

    const v7, 0x43bda666    # 379.3f

    const v8, 0x43d3e666    # 423.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x436bb333    # 235.7f

    const v3, 0x43a2cccd    # 325.6f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3da6cccd    # -54.3f

    const/4 v4, 0x0

    const v5, -0x3d3b999a    # -98.2f

    const/high16 v6, 0x42300000    # 44.0f

    const v7, -0x3d3b999a    # -98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42593333    # 54.3f

    const/high16 v5, 0x42300000    # 44.0f

    const v6, 0x42c46666    # 98.2f

    const v7, 0x42c46666    # 98.2f

    const v8, 0x42c46666    # 98.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x4248cccd    # 50.2f

    const/4 v4, 0x0

    const v5, 0x42b73333    # 91.6f

    const v6, -0x3de9999a    # -37.6f

    const/high16 v7, 0x42c30000    # 97.5f

    const v8, -0x3d53999a    # -86.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, -0x3f866666    # -3.9f

    const v5, 0x40466666    # 3.1f

    const v6, -0x3ee9999a    # -9.4f

    const v7, 0x40f33333    # 7.6f

    const/high16 v8, -0x3ec00000    # -12.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, -0x3f6ccccd    # -4.6f

    const v4, -0x3f8ccccd    # -3.8f

    const v5, -0x3f19999a    # -7.2f

    const/high16 v6, -0x3ee80000    # -9.5f

    const v7, -0x3f066666    # -7.8f

    const v8, -0x3e9ccccd    # -14.2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v3, 0x43a30000    # 326.0f

    const v4, 0x43b50ccd    # 362.1f

    const v5, 0x438e8ccd    # 285.1f

    const v6, 0x43a2cccd    # 325.6f

    const v7, 0x436bb333    # 235.7f

    const v8, 0x43a2cccd    # 325.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "seqPath":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .restart local v1    # "seqPath":Landroid/graphics/Path;
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v2, 0x43c0c000    # 385.5f

    const v3, 0x43d3e666    # 423.8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42ab6666    # 85.7f

    const v5, 0x42b4cccd    # 90.4f

    const v6, 0x42ae999a    # 87.3f

    const v7, 0x42b4cccd    # 90.4f

    const v8, 0x4375199a    # 245.1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const/high16 v2, -0x3c0b0000    # -490.0f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    const v3, 0x43edf333    # 475.9f

    const v4, 0x43ac8ccd    # 345.1f

    const v5, 0x43c0c000    # 385.5f

    const v6, 0x43a84000    # 336.5f

    const v7, 0x43c0c000    # 385.5f

    const v8, 0x43d3e666    # 423.8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;F)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;
    .param p3, "value"    # F

    .prologue
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$1;->$SwitchMap$com$samsung$android$visualeffect$scroll$common$IndexScrollPath$SVGCommand:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFF)V
    .locals 9
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;FFFFFF)V
    .locals 11
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "cmd"    # Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F

    .prologue
    const/4 v7, 0x0

    .local v7, "wasCurve":Z
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$1;->$SwitchMap$com$samsung$android$visualeffect$scroll$common$IndexScrollPath$SVGCommand:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-nez v7, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX1:F

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY1:F

    :cond_0
    return-void

    :pswitch_0
    move v8, p3

    .local v8, "x":F
    move v9, p4

    .local v9, "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->m:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rMoveTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto :goto_0

    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX1:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY1:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto :goto_0

    :pswitch_2
    move v8, p3

    .restart local v8    # "x":F
    move v9, p4

    .restart local v9    # "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->l:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    if-ne p2, v0, :cond_2

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto :goto_0

    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    move v8, p3

    .restart local v8    # "x":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->h:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iput v8, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    goto :goto_0

    .end local v8    # "x":F
    :pswitch_4
    move v9, p4

    .restart local v9    # "y":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    if-ne p2, v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iput v9, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto :goto_0

    .end local v9    # "y":F
    :pswitch_5
    const/4 v7, 0x1

    move v1, p3

    .local v1, "tx1":F
    move v2, p4

    .local v2, "ty1":F
    move/from16 v3, p5

    .local v3, "tx2":F
    move/from16 v4, p6

    .local v4, "ty2":F
    move/from16 v5, p7

    .local v5, "tx":F
    move/from16 v6, p8

    .local v6, "ty":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    if-ne p2, v0, :cond_5

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    add-float/2addr v5, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    add-float/2addr v6, v0

    :cond_5
    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX1:F

    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY1:F

    iput v5, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    iput v6, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto/16 :goto_0

    .end local v1    # "tx1":F
    .end local v2    # "ty1":F
    .end local v3    # "tx2":F
    .end local v4    # "ty2":F
    .end local v5    # "tx":F
    .end local v6    # "ty":F
    :pswitch_6
    const/4 v7, 0x1

    move v3, p3

    .restart local v3    # "tx2":F
    move v4, p4

    .restart local v4    # "ty2":F
    move/from16 v5, p5

    .restart local v5    # "tx":F
    move/from16 v6, p6

    .restart local v6    # "ty":F
    sget-object v0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath$SVGCommand;

    if-ne p2, v0, :cond_6

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    add-float/2addr v5, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    add-float/2addr v6, v0

    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX1:F

    sub-float v1, v0, v10

    .restart local v1    # "tx1":F
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY1:F

    sub-float v2, v0, v10

    .restart local v2    # "ty1":F
    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX1:F

    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY1:F

    iput v5, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastX:F

    iput v6, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->lastY:F

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getCircleCenterX()F
    .locals 2

    .prologue
    const v0, -0x3c8aca7f    # -245.209f

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->ratio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCircleCenterY()F
    .locals 2

    .prologue
    const v0, 0x3c9bc000

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->ratio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCircleRadius()F
    .locals 2

    .prologue
    const v0, 0x42c47646

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->ratio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPath(I)Landroid/graphics/Path;
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->path:[Landroid/graphics/Path;

    aget-object v0, v1, p1

    .local v0, "tPath":Landroid/graphics/Path;
    return-object v0
.end method

.method public getPathTotal()I
    .locals 1

    .prologue
    const/16 v0, 0x17

    return v0
.end method
