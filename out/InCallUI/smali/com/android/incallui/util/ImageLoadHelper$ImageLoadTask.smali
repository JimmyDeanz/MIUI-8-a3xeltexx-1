.class Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;
.super Landroid/os/AsyncTask;
.source "ImageLoadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/ImageLoadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/incallui/model/CallCardImage;",
        ">;"
    }
.end annotation


# instance fields
.field volatile isCancelled:Z

.field listener:Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;

.field mImage:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/incallui/util/ImageLoadHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/ImageLoadHelper;Landroid/graphics/drawable/Drawable;Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;)V
    .locals 1
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "listener"    # Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->this$0:Lcom/android/incallui/util/ImageLoadHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->isCancelled:Z

    .line 52
    iput-object p2, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->mImage:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p3, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->listener:Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;

    .line 54
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/incallui/model/CallCardImage;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 62
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 63
    .local v0, "app":Lcom/android/incallui/InCallApp;
    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getInCallWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->mImage:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v4, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isUseLockWallPaper()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallApp;->updateInCallWallPaperDirectly(Z)V

    .line 66
    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getInCallWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->mImage:Landroid/graphics/drawable/Drawable;

    .line 70
    .end local v0    # "app":Lcom/android/incallui/InCallApp;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->mImage:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 71
    iget-object v4, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->mImage:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->isCancelled:Z

    if-nez v4, :cond_2

    .line 76
    invoke-static {v1}, Lcom/android/incallui/ImageUtils;->getFullScreenLargePhotoBlurBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78
    .local v3, "photoBmp":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/incallui/model/CallCardImage;

    invoke-direct {v2}, Lcom/android/incallui/model/CallCardImage;-><init>()V

    .line 79
    .local v2, "callCardImage":Lcom/android/incallui/model/CallCardImage;
    iget-object v4, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->mImage:Landroid/graphics/drawable/Drawable;

    iput-object v4, v2, Lcom/android/incallui/model/CallCardImage;->avatar:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object v3, v2, Lcom/android/incallui/model/CallCardImage;->background:Landroid/graphics/Bitmap;

    .line 83
    .end local v2    # "callCardImage":Lcom/android/incallui/model/CallCardImage;
    .end local v3    # "photoBmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->doInBackground([Ljava/lang/Void;)Lcom/android/incallui/model/CallCardImage;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/incallui/model/CallCardImage;)V
    .locals 1
    .param p1, "callCardImage"    # Lcom/android/incallui/model/CallCardImage;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->listener:Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->listener:Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;->onImageLoaded(Lcom/android/incallui/model/CallCardImage;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/android/incallui/model/CallCardImage;

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/ImageLoadHelper$ImageLoadTask;->onPostExecute(Lcom/android/incallui/model/CallCardImage;)V

    return-void
.end method
