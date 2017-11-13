.class public Lcom/android/server/am/VirtualScreen;
.super Ljava/lang/Object;
.source "VirtualScreen.java"


# static fields
.field private static final DEBUG_OFFSET:Z

.field private static final TAG:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private final VIRTUALSCREEN_APP_TRANSITION_DURATION:I

.field private final VIRTUALSCREEN_POSITION_BOTTOM:I

.field private final VIRTUALSCREEN_POSITION_LEFT:I

.field private final VIRTUALSCREEN_POSITION_RIGHT:I

.field private final VIRTUALSCREEN_POSITION_TOP:I

.field private final VIRTUALSCREEN_POSITION_UNKNOWN:I

.field private mAllowAppTransition:Z

.field private mBindDisplayId:I

.field private final mDefaultDisplayRect:Landroid/graphics/Rect;

.field private mDisplayId:I

.field private mFlags:I

.field private mIsVisible:Z

.field private mOffsetUid:I

.field private mPosition:I

.field private mScreen:Landroid/graphics/Rect;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/am/VirtualScreen;->DEBUG_OFFSET:Z

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;I)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v3, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    .line 47
    iput v2, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    .line 48
    iput v2, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    .line 50
    iput v2, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    .line 54
    iput v3, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_UNKNOWN:I

    .line 55
    iput v4, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_LEFT:I

    .line 56
    iput v5, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_TOP:I

    .line 57
    iput v6, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_RIGHT:I

    .line 58
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_BOTTOM:I

    .line 59
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_APP_TRANSITION_DURATION:I

    .line 62
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    .line 63
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenManagerService;->getDefaultDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    .line 64
    iput p3, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    .line 65
    if-eqz p2, :cond_0

    .line 66
    iput-object p2, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 68
    .local v0, "defaultDisplayRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 73
    .local v1, "screen":Landroid/graphics/Rect;
    iput v3, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    .line 74
    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_1

    .line 75
    iput v4, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    .line 84
    .end local v0    # "defaultDisplayRect":Landroid/graphics/Rect;
    .end local v1    # "screen":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v0    # "defaultDisplayRect":Landroid/graphics/Rect;
    .restart local v1    # "screen":Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_2

    .line 77
    iput v6, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_0

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_3

    .line 79
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_0

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_0

    .line 81
    iput v5, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_0
.end method


# virtual methods
.method public allowAppTransition()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    return v0
.end method

.method public computeScreenConfiguration(I)V
    .locals 12
    .param p1, "rotation"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 286
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/VirtualScreenManagerService;->getDefaultDisplayRect()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 331
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/VirtualScreenManagerService;->getInitialDefaultDisplayRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 293
    .local v5, "screenF":Landroid/graphics/RectF;
    packed-switch p1, :pswitch_data_0

    .line 310
    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    .line 311
    .local v1, "ratioX":F
    const/4 v2, 0x0

    .line 314
    .local v2, "ratioY":F
    iget v9, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    if-nez v9, :cond_1

    .line 315
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float v1, v9, v10

    .line 316
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v2, v9, v10

    .line 319
    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 320
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 322
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int v6, v9, v10

    .line 323
    .local v6, "signX":I
    :goto_2
    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-eqz v9, :cond_3

    iget-object v8, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int v7, v8, v9

    .line 325
    .local v7, "signY":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v3, v6, v8

    .line 326
    .local v3, "rotatedX":I
    iget-object v8, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int v4, v7, v8

    .line 327
    .local v4, "rotatedY":I
    int-to-float v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    int-to-float v9, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 329
    iget-object v8, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 330
    const-string v8, "VirtualScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "computeScreenConfiguration(): change rect to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 297
    .end local v1    # "ratioX":F
    .end local v2    # "ratioY":F
    .end local v3    # "rotatedX":I
    .end local v4    # "rotatedY":I
    .end local v6    # "signX":I
    .end local v7    # "signY":I
    :pswitch_1
    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v0, v9, v11, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 298
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v0, v9, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 301
    :pswitch_2
    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v0, v9, v11, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 302
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 305
    :pswitch_3
    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {v0, v9, v11, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 306
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v0, v11, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .restart local v1    # "ratioX":F
    .restart local v2    # "ratioY":F
    :cond_2
    move v6, v8

    .line 322
    goto/16 :goto_2

    .restart local v6    # "signX":I
    :cond_3
    move v7, v8

    .line 323
    goto :goto_3

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public createTransitAnimation(ZLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "enter"    # Z
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x0

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "trans":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 277
    :goto_0
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 279
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 281
    :cond_0
    return-object v0

    .line 242
    :pswitch_0
    if-eqz p1, :cond_1

    .line 243
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 245
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 247
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 250
    :pswitch_1
    if-eqz p1, :cond_2

    .line 251
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 253
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 255
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 258
    :pswitch_2
    if-eqz p1, :cond_3

    .line 259
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 261
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 263
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 266
    :pswitch_3
    if-eqz p1, :cond_4

    .line 267
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 269
    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 271
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getBindDisplayId()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    return v0
.end method

.method public getOffsetByPosition(F)Landroid/graphics/PointF;
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenManagerService;->getDefaultDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 105
    .local v0, "logicalDisplay":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 107
    .local v1, "point":Landroid/graphics/PointF;
    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v2, :pswitch_data_0

    .line 128
    :goto_0
    return-object v1

    .line 109
    :pswitch_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 121
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOffsetUid()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    return v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    return v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hasLayoutPolicy()Z
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultDisplay()Z
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 141
    .local v0, "screenWithOffset":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 142
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public prepareTransition()V
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    goto :goto_0

    .line 225
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAllowAppTransition(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    .line 335
    return-void
.end method

.method public setBindDisplayId(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 193
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 194
    const-string v0, "VirtualScreen"

    const-string v1, "Already binded display"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    .line 197
    :cond_0
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOffset(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 150
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(IIIZ)Z

    move-result v0

    return v0
.end method

.method public setOffset(IIIZ)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "callingUid"    # I
    .param p4, "force"    # Z

    .prologue
    .line 154
    iget v3, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    if-ltz v3, :cond_0

    if-eqz p4, :cond_5

    .line 155
    :cond_0
    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() set offset from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " force : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput p3, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    .line 163
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 164
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    .line 167
    :cond_2
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    .line 168
    iput p2, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    .line 170
    sget-boolean v3, Lcom/android/server/am/VirtualScreen;->DEBUG_OFFSET:Z

    if-eqz v3, :cond_3

    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() mXOffset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mYOffset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 174
    .local v2, "screenWithOffset":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    iget v4, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 176
    .local v0, "defaultRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 177
    .local v1, "isVisible":Z
    iget-boolean v3, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    if-eq v3, v1, :cond_4

    .line 178
    iput-boolean v1, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    .line 179
    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() mIsVisible changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_4
    const/4 v3, 0x1

    .end local v0    # "defaultRect":Landroid/graphics/Rect;
    .end local v1    # "isVisible":Z
    .end local v2    # "screenWithOffset":Landroid/graphics/Rect;
    :goto_0
    return v3

    .line 158
    :cond_5
    if-lez p3, :cond_1

    iget v3, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    if-eq v3, p3, :cond_1

    .line 159
    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() failed set offset current uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wrong uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string/jumbo v1, "{Rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, ", Offset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, ", mBindDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, ", mDefaultDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, ", mOffsetUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, ", mAllowAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    .line 203
    return-void
.end method
