.class Lcom/android/incallui/VideoCallFragment$VideoCallSurface;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCallSurface"
.end annotation


# instance fields
.field private mHeight:I

.field private mIsDoneWithSurface:Z

.field private mPresenter:Lcom/android/incallui/VideoCallPresenter;

.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceId:I

.field private mTextureView:Landroid/view/TextureView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;)V
    .locals 6
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "surfaceId"    # I
    .param p3, "textureView"    # Landroid/view/TextureView;

    .prologue
    const/4 v4, -0x1

    .line 155
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "surfaceId"    # I
    .param p3, "textureView"    # Landroid/view/TextureView;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, -0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 145
    iput v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallSurface: surfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    .line 171
    iput p4, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 172
    iput p5, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 173
    iput p2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    .line 175
    invoke-virtual {p0, p3}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    .line 176
    return-void
.end method

.method private createSurface()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurface mSavedSurfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurfaceId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 391
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 392
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSurfaceCreated()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v0, "onSurfaceTextureAvailable: Presenter is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSurfaceDestroyed()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v0, "onSurfaceTextureDestroyed: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSurfaceReleased()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceReleased(I)V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    const-string v0, "setDoneWithSurface: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceDimensions()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSurfaceDimensions, width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceClick(I)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string v0, "onClick: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSurfaceTextureAvailable mSurfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " surfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavedSurfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSurfaceTextureAvailable VideoCallPresenter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 228
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 229
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface()Z

    move-result v0

    .line 238
    .local v0, "surfaceCreated":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceCreated()V

    .line 241
    :cond_0
    return-void

    .line 232
    .end local v0    # "surfaceCreated":Z
    :cond_1
    const-string v1, " onSurfaceTextureAvailable: Replacing with cached surface..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 234
    const/4 v0, 0x1

    .restart local v0    # "surfaceCreated":Z
    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSurfaceTextureDestroyed mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " surfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SavedSurfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SavedSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSurfaceTextureDestroyed VideoCallPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceDestroyed()V

    .line 283
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceReleased()V

    .line 285
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 262
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 308
    return-void
.end method

.method public recreateView(Landroid/view/TextureView;)V
    .locals 3
    .param p1, "view"    # Landroid/view/TextureView;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    .line 186
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 191
    .local v0, "areSameSurfaces":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recreateView: SavedSurfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " areSameSurfaces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 195
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceCreated()V

    .line 199
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    .line 200
    return-void
.end method

.method public resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetPresenter: CurrentPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NewPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    .line 206
    return-void
.end method

.method public setDoneWithSurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDoneWithSurface: SavedSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SavedSurfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    .line 327
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 330
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceReleased()V

    .line 331
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 332
    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 336
    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0
.end method

.method public setSurfaceDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceDimensions, width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iput p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 366
    iput p2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 368
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "setSurfaceDimensions, mSavedSurfaceTexture is NOT equal to null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface()Z

    .line 372
    :cond_0
    return-void
.end method
