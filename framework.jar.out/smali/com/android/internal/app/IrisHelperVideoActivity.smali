.class public Lcom/android/internal/app/IrisHelperVideoActivity;
.super Landroid/app/Activity;
.source "IrisHelperVideoActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "IrisHelperImageActivity"

    sput-object v0, Lcom/android/internal/app/IrisHelperVideoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x1090086

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisHelperVideoActivity;->setContentView(I)V

    .line 51
    const v0, 0x10203f0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisHelperVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mTextureView:Landroid/view/TextureView;

    .line 53
    const v0, 0x10203f1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisHelperVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IrisHelperVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IrisHelperVideoActivity$1;-><init>(Lcom/android/internal/app/IrisHelperVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 76
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 79
    .local v1, "surface":Landroid/view/Surface;
    const/4 v2, 0x0

    .line 81
    .local v2, "videoUri":Landroid/net/Uri;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/IrisHelperVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/raw/iris_help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 82
    sget-object v3, Lcom/android/internal/app/IrisHelperVideoActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/IrisHelperVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/raw/iris_help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v2, :cond_1

    .line 86
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 88
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 89
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 92
    :cond_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 94
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v4, 0x9c4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setParameter(II)Z

    .line 95
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 96
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 97
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 100
    iget-object v3, p0, Lcom/android/internal/app/IrisHelperVideoActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/internal/app/IrisHelperVideoActivity$2;

    invoke-direct {v4, p0}, Lcom/android/internal/app/IrisHelperVideoActivity$2;-><init>(Lcom/android/internal/app/IrisHelperVideoActivity;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/app/IrisHelperVideoActivity;->TAG:Ljava/lang/String;

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/android/internal/app/IrisHelperVideoActivity;->TAG:Ljava/lang/String;

    const-string v4, "SecurityException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/android/internal/app/IrisHelperVideoActivity;->TAG:Ljava/lang/String;

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/internal/app/IrisHelperVideoActivity;->TAG:Ljava/lang/String;

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 145
    return-void
.end method
