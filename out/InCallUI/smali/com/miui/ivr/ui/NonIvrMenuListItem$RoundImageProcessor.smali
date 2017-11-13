.class Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;
.super Ljava/lang/Object;
.source "NonIvrMenuListItem.java"

# interfaces
.implements Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/ivr/ui/NonIvrMenuListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundImageProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/ivr/ui/NonIvrMenuListItem;


# direct methods
.method private constructor <init>(Lcom/miui/ivr/ui/NonIvrMenuListItem;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;->this$0:Lcom/miui/ivr/ui/NonIvrMenuListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/ivr/ui/NonIvrMenuListItem;Lcom/miui/ivr/ui/NonIvrMenuListItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/ivr/ui/NonIvrMenuListItem;
    .param p2, "x1"    # Lcom/miui/ivr/ui/NonIvrMenuListItem$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;-><init>(Lcom/miui/ivr/ui/NonIvrMenuListItem;)V

    return-void
.end method


# virtual methods
.method public processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "originImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 69
    new-instance v1, Lmiui/graphics/BitmapFactory$CropOption;

    # getter for: Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconCornerRadius:I
    invoke-static {}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->access$100()I

    move-result v5

    # getter for: Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconCornerRadius:I
    invoke-static {}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->access$100()I

    move-result v6

    invoke-direct {v1, v5, v6, v7, v7}, Lmiui/graphics/BitmapFactory$CropOption;-><init>(IIII)V

    .line 71
    .local v1, "cropOption":Lmiui/graphics/BitmapFactory$CropOption;
    const/4 v2, 0x0

    .line 73
    .local v2, "destBmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 74
    .local v4, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 76
    .local v3, "srcHeight":I
    # getter for: Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconWidth:I
    invoke-static {}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->access$200()I

    move-result v5

    if-ne v4, v5, :cond_0

    # getter for: Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconHeight:I
    invoke-static {}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->access$300()I

    move-result v5

    if-ne v3, v5, :cond_0

    iget v5, v1, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    if-gtz v5, :cond_0

    iget v5, v1, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    if-gtz v5, :cond_0

    iget v5, v1, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    if-gtz v5, :cond_0

    .line 78
    move-object v2, p1

    .line 90
    .end local v3    # "srcHeight":I
    .end local v4    # "srcWidth":I
    :goto_0
    return-object v2

    .line 80
    .restart local v3    # "srcHeight":I
    .restart local v4    # "srcWidth":I
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 81
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 84
    :cond_1
    # getter for: Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconWidth:I
    invoke-static {}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->access$200()I

    move-result v5

    # getter for: Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconHeight:I
    invoke-static {}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->access$300()I

    move-result v6

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 85
    invoke-static {p1, v2, v1}, Lmiui/graphics/BitmapFactory;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 87
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    .end local v3    # "srcHeight":I
    .end local v4    # "srcWidth":I
    :catch_0
    move-exception v5

    goto :goto_0

    .line 88
    :catch_1
    move-exception v5

    goto :goto_0
.end method
