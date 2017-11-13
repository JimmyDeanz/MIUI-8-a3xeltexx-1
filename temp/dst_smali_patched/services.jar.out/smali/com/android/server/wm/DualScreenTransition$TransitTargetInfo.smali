.class Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
.super Ljava/lang/Object;
.source "DualScreenTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DualScreenTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitTargetInfo"
.end annotation


# instance fields
.field displayId:I

.field final finalMatrix:Landroid/graphics/Matrix;

.field height:I

.field final initialMatrix:Landroid/graphics/Matrix;

.field layer:I

.field surface:Landroid/view/SurfaceControl;

.field width:I

.field win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V
    .locals 1
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "layer"    # I
    .param p3, "win"    # Lcom/android/server/wm/WindowState;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "displayId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->finalMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iput p2, p0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->layer:I

    iput-object p3, p0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    iput p4, p0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iput p5, p0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iput p6, p0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    return-void
.end method
