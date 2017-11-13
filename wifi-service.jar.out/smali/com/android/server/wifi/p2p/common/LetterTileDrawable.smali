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

    .line 61
    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sColors:I

    .line 70
    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontPadding:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRectF:Landroid/graphics/RectF;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [C

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    .line 99
    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sSafetyColors:I

    .line 100
    sput v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sWarningColors:I

    .line 101
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

    .line 110
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    iput v4, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontSize:I

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mScale:F

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mOffset:F

    .line 87
    iput-boolean v4, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mIsCircle:Z

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    .line 96
    iput-boolean v4, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mAvailableNumber:Z

    .line 107
    iput v5, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicWidth:I

    .line 108
    iput v5, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicHeight:I

    .line 111
    iput-object p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mResources:Landroid/content/res/Resources;

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 116
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sColors:I

    if-nez v0, :cond_0

    .line 117
    const v0, 0x106017f

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sColors:I

    .line 118
    const v0, 0x1060183

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDefaultColor:I

    .line 119
    const v0, 0x106000b

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontColor:I

    .line 120
    const v0, 0x1130005

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sLetterToTileRatio:F

    .line 121
    const v0, 0x10502b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontPadding:I

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->preloadDefaultPhotos(Landroid/content/res/Resources;)V

    .line 124
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const v1, 0x1040a81

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 126
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    const v0, 0x1060184

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sSafetyColors:I

    .line 130
    const v0, 0x1060185

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sWarningColors:I

    .line 131
    const v0, 0x1060186

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDangerColors:I

    .line 132
    const v0, 0x1080591

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_SAFETY:Landroid/graphics/Bitmap;

    .line 134
    const v0, 0x1080592

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_WARNING:Landroid/graphics/Bitmap;

    .line 136
    const v0, 0x1080593

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_DANGER:Landroid/graphics/Bitmap;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sColors:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    const v0, 0x106017e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeColor:I

    .line 142
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    sput v4, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeWidth:I

    .line 145
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    return-void
.end method

.method private getSpamLevelColor(I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_0

    .line 377
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getColor()I

    move-result v0

    :goto_0
    return v0

    .line 371
    :pswitch_0
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sSafetyColors:I

    goto :goto_0

    .line 373
    :pswitch_1
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sWarningColors:I

    goto :goto_0

    .line 375
    :pswitch_2
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDangerColors:I

    goto :goto_0

    .line 369
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
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 390
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getBitmapForDefaultAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 384
    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_SAFETY:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 386
    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_WARNING:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 388
    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->SPAM_LEVEL_ICON_DANGER:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 382
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
    .line 150
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 151
    .local v0, "font":Landroid/graphics/Typeface;
    return-object v0
.end method

.method public static isLetters(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 353
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method private preloadDefaultPhotos(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v1, 0x10802a4

    .line 395
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR:Landroid/graphics/Bitmap;

    .line 397
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_1:Landroid/graphics/Bitmap;

    .line 399
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_2:Landroid/graphics/Bitmap;

    .line 401
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_3:Landroid/graphics/Bitmap;

    .line 423
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 157
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
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

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 178
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

    .line 179
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

    .line 185
    sget-object v2, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    sget-object v2, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    return-void
.end method

.method protected drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 192
    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    if-lez v0, :cond_2

    .line 193
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getSpamLevelColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    :goto_0
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 200
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

    .line 202
    .local v11, "strokeRect":Landroid/graphics/RectF;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 204
    .local v10, "minDimension":I
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mIsCircle:Z

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Util;->getCornerRadius(Landroid/content/res/Resources;I)F

    move-result v9

    .line 206
    .local v9, "cornerRadius":F
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 207
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 208
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 215
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

    .line 219
    :cond_0
    const/4 v3, 0x1

    .line 220
    .local v3, "numberOfLetters":I
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 221
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mAvailableNumber:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v12, :cond_1

    .line 222
    const/4 v3, 0x2

    .line 223
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    iget-object v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v12

    .line 226
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontSize:I

    if-eqz v0, :cond_4

    .line 227
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    :goto_2
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sFirstChar:[C

    sget-object v4, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 235
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
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

    .line 252
    .end local v3    # "numberOfLetters":I
    :goto_3
    return-void

    .line 195
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "minDimension":I
    .end local v11    # "strokeRect":Landroid/graphics/RectF;
    :cond_2
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 210
    .restart local v8    # "bounds":Landroid/graphics/Rect;
    .restart local v10    # "minDimension":I
    .restart local v11    # "strokeRect":Landroid/graphics/RectF;
    :cond_3
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 211
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 230
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

    .line 245
    .end local v3    # "numberOfLetters":I
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    if-lez v0, :cond_6

    .line 246
    iget v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->getSpamLevelIcon(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 250
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :goto_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v7, v0, v1, p1}, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    goto :goto_3

    .line 248
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
    .line 255
    iget-wide v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 256
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR:Landroid/graphics/Bitmap;

    .line 266
    :goto_0
    return-object v0

    .line 258
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    const-wide/16 v2, 0x4

    rem-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 266
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 260
    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_1:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 262
    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_2:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 264
    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->DEFAULT_AVATAR_3:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 258
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
    .line 271
    iget-wide v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 272
    :cond_0
    sget v0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sDefaultColor:I

    .line 274
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
    .line 439
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
    .line 434
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
    .line 292
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicWidth:I

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->intrinsicHeight:I

    .line 430
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    return-void
.end method

.method public setAvailableNumber(Z)V
    .locals 0
    .param p1, "availableNumber"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mAvailableNumber:Z

    .line 362
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 288
    return-void
.end method

.method public setContactDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setContactId(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 339
    iput-wide p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mContactId:J

    .line 340
    return-void
.end method

.method public setIsCircular(Z)V
    .locals 0
    .param p1, "isCircle"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mIsCircle:Z

    .line 336
    return-void
.end method

.method public setLetterSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->sTileFontSize:I

    .line 358
    return-void
.end method

.method public setOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 321
    const/high16 v0, -0x41000000    # -0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 322
    iput p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mOffset:F

    .line 323
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 303
    iput p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mScale:F

    .line 304
    return-void
.end method

.method public setSpamLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/android/server/wifi/p2p/common/LetterTileDrawable;->mSpamLevel:I

    .line 366
    return-void
.end method
