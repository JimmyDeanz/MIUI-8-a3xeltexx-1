.class public Lcom/android/incallui/util/ImageLoadHelper;
.super Ljava/lang/Object;
.source "ImageLoadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;,
        Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;
    }
.end annotation


# static fields
.field private static helper:Lcom/android/incallui/util/ImageLoadHelper;


# instance fields
.field private mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/android/incallui/util/ImageLoadHelper;

    invoke-direct {v0}, Lcom/android/incallui/util/ImageLoadHelper;-><init>()V

    sput-object v0, Lcom/android/incallui/util/ImageLoadHelper;->helper:Lcom/android/incallui/util/ImageLoadHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static getHelper()Lcom/android/incallui/util/ImageLoadHelper;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/incallui/util/ImageLoadHelper;->helper:Lcom/android/incallui/util/ImageLoadHelper;

    return-object v0
.end method


# virtual methods
.method public loadImage(Landroid/graphics/drawable/Drawable;Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "listener"    # Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;

    .prologue
    const/4 v1, 0x1

    .line 29
    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    iput-boolean v1, v0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->isCancelled:Z

    .line 31
    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->cancel(Z)Z

    .line 33
    :cond_0
    new-instance v0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;-><init>(Lcom/android/incallui/util/ImageLoadHelper;Landroid/graphics/drawable/Drawable;Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;)V

    iput-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    .line 34
    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    return-void
.end method

.method public releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    iput-boolean v1, v0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->isCancelled:Z

    .line 40
    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->cancel(Z)Z

    .line 42
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper;->mImageLoadTask:Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;

    .line 43
    return-void
.end method
