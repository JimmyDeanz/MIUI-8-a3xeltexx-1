.class public Lcom/android/server/wifi/p2p/common/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTileDrawable.java"


# static fields
.field private static DEFAULT_AVATAR:Landroid/graphics/Bitmap; = null

.field private static DEFAULT_AVATAR_1:Landroid/graphics/Bitmap; = null

.field private static DEFAULT_AVATAR_2:Landroid/graphics/Bitmap; = null

.field private static DEFAULT_AVATAR_3:Landroid/graphics/Bitmap; = null

.field private static SPAM_LEVEL_ICON_DANGER:Landroid/graphics/Bitmap; = null

.field private static SPAM_LEVEL_ICON_SAFETY:Landroid/graphics/Bitmap; = null

.field private static SPAM_LEVEL_ICON_WARNING:Landroid/graphics/Bitmap; = null

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field private static sColors:I

.field private static sDangerColors:I

.field private static sDefaultColor:I

.field private static final sFirstChar:[C

.field private static sLetterToTileRatio:F

.field protected static final sPaint:Landroid/graphics/Paint;

.field protected static final sRect:Landroid/graphics/Rect;

.field protected static final sRectF:Landroid/graphics/RectF;

.field private static sSafetyColors:I

.field protected static sStrokeColor:I

.field protected static final sStrokePaint:Landroid/graphics/Paint;

.field protected static sStrokeWidth:I

.field private static sTileFontColor:I

.field private static sTileFontPadding:I

.field private static sWarningColors:I


# instance fields
.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field private mAvailableNumber:Z

.field private mContactId:J

.field private mDisplayName:Ljava/lang/String;

.field protected mIsCircle:Z

.field protected mOffset:F

.field protected final mPaint:Landroid/graphics/Paint;

.field protected mResources:Landroid/content/res/Resources;

.field protected mScale:F

.field private mSpamLevel:I

.field private sTileFontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sColors:I

    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontPadding:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRectF:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [C

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sSafetyColors:I

    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sWarningColors:I

    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDangerColors:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v4, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mOffset:F

    iput-boolean v4, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mIsCircle:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    iput-boolean v4, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mAvailableNumber:Z

    iput v5, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicWidth:I

    iput v5, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicHeight:I

    iput-object p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mResources:Landroid/content/res/Resources;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sColors:I

    if-nez v0, :cond_0

    const v0, 0x106017f

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sColors:I

    const v0, 0x1060183

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDefaultColor:I

    const v0, 0x106000b

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontColor:I

    const v0, 0x1130005

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sLetterToTileRatio:F

    const v0, 0x10502b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontPadding:I

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->preloadDefaultPhotos(Landroid/content/res/Resources;)V

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const v1, 0x1040a81

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x1060184

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sSafetyColors:I

    const v0, 0x1060185

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sWarningColors:I

    const v0, 0x1060186

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDangerColors:I

    const v0, 0x1080591

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_SAFETY:Landroid/graphics/Bitmap;

    const v0, 0x1080592

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_WARNING:Landroid/graphics/Bitmap;

    const v0, 0x1080593

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_DANGER:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sColors:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x106017e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeColor:I

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sput v4, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeWidth:I

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private getSpamLevelColor(I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getColor()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sSafetyColors:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sWarningColors:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDangerColors:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSpamLevelIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "level"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getBitmapForDefaultAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_SAFETY:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_WARNING:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_DANGER:Landroid/graphics/Bitmap;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontStyle"    # I

    .prologue
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .local v0, "font":Landroid/graphics/Typeface;
    return-object v0
.end method

.method public static isLetters(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method private preloadDefaultPhotos(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v1, 0x10802a4

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_1:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_2:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_3:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "destRect":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v1, v2

    .local v1, "halfLength":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    if-lez v0, :cond_2

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getSpamLevelColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .local v8, "bounds":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/RectF;

    iget v0, v8, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeWidth:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v8, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    sget v6, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v11, v0, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v11, "strokeRect":Landroid/graphics/RectF;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .local v10, "minDimension":I
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mIsCircle:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Util;->getCornerRadius(Landroid/content/res/Resources;I)F

    move-result v9

    .local v9, "cornerRadius":F
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .end local v9    # "cornerRadius":F
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->isLetters(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mAvailableNumber:Z

    if-eqz v0, :cond_5

    :cond_0
    const/4 v3, 0x1

    .local v3, "numberOfLetters":I
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v2

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mAvailableNumber:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v12, :cond_1

    const/4 v3, 0x2

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v12

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontSize:I

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_2
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    sget-object v4, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v13

    sget-object v5, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sget-object v6, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v13

    sub-float/2addr v0, v5

    sget v5, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontPadding:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    sget-object v6, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .end local v3    # "numberOfLetters":I
    :goto_3
    return-void

    .end local v8    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "minDimension":I
    .end local v11    # "strokeRect":Landroid/graphics/RectF;
    :cond_2
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .restart local v8    # "bounds":Landroid/graphics/Rect;
    .restart local v10    # "minDimension":I
    .restart local v11    # "strokeRect":Landroid/graphics/RectF;
    :cond_3
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .restart local v3    # "numberOfLetters":I
    :cond_4
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mScale:F

    sget v4, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sLetterToTileRatio:F

    mul-float/2addr v1, v4

    int-to-float v4, v10

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    .end local v3    # "numberOfLetters":I
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getSpamLevelIcon(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :goto_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v7, v0, v1, p1}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    goto :goto_3

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getBitmapForDefaultAvatar()Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4
.end method

.method protected getBitmapForDefaultAvatar()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    const-wide/16 v2, 0x4

    rem-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_1:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_2:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_3:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getColor()I
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDefaultColor:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mResources:Landroid/content/res/Resources;

    iget-wide v2, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/common/Util;->getDefaultPhotoBackgroundColor(J)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicHeight:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAvailableNumber(Z)V
    .locals 0
    .param p1, "availableNumber"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mAvailableNumber:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setContactDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setContactId(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    return-void
.end method

.method public setIsCircular(Z)V
    .locals 0
    .param p1, "isCircle"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mIsCircle:Z

    return-void
.end method

.method public setLetterSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontSize:I

    return-void
.end method

.method public setOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    const/high16 v0, -0x41000000    # -0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mOffset:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    iput p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mScale:F

    return-void
.end method

.method public setSpamLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    return-void
.end method
