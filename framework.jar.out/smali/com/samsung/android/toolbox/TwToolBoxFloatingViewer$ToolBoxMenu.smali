.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToolBoxMenu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;",
        ">;"
    }
.end annotation


# instance fields
.field action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

.field angleDegree:F

.field aniExpand:Landroid/animation/ValueAnimator;

.field background:Landroid/graphics/drawable/Drawable;

.field backgroundInverse:Landroid/graphics/drawable/Drawable;

.field bounds:Landroid/graphics/Rect;

.field isAnimating:Z

.field isEnabled:Z

.field isFunctionShortcut:Z

.field isPressed:Z

.field isRectangleShape:Z

.field operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

.field packageName:Ljava/lang/String;

.field priority:I

.field shadow:Landroid/graphics/drawable/BitmapDrawable;

.field shadowBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

.field toggleStatus:Z

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 735
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->angleDegree:F

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->x:F

    .line 738
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->APP_GENERIC:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    .line 739
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    .line 740
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    .line 741
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isPressed:Z

    .line 742
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isRectangleShape:Z

    .line 743
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 744
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    .line 746
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    .line 779
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)I
    .locals 3
    .param p1, "o"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .prologue
    .line 783
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 784
    .local v0, "myPriority":Ljava/lang/Integer;
    iget v2, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 785
    .local v1, "oPriority":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 712
    check-cast p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->compareTo(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)I

    move-result v0

    return v0
.end method
