.class Lcom/android/incallui/CallerInfo$1$2;
.super Landroid/os/AsyncTask;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfo$1;->onPostExecute(Lmiui/yellowpage/YellowPagePhone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallerInfo$1;

.field final synthetic val$phone:Lmiui/yellowpage/YellowPagePhone;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallerInfo$1;Lmiui/yellowpage/YellowPagePhone;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/incallui/CallerInfo$1$2;->this$0:Lcom/android/incallui/CallerInfo$1;

    iput-object p2, p0, Lcom/android/incallui/CallerInfo$1$2;->val$phone:Lmiui/yellowpage/YellowPagePhone;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 660
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallerInfo$1$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 663
    const/4 v1, 0x0

    .line 665
    .local v1, "photo":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallerInfo$1$2;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v2, v2, Lcom/android/incallui/CallerInfo$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/incallui/CallerInfo$1$2;->val$phone:Lmiui/yellowpage/YellowPagePhone;

    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/incallui/CallerInfo$1$2;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v3, v3, Lcom/android/incallui/CallerInfo$1;->val$number:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/incallui/CallerInfo$1$2;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-boolean v6, v6, Lcom/android/incallui/CallerInfo$1;->val$isIncoming:Z

    invoke-static {v2, v4, v5, v3, v6}, Lmiui/yellowpage/YellowPageImgLoader;->loadPhoneDisplayAd(Landroid/content/Context;JLjava/lang/String;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 671
    :goto_0
    if-eqz v1, :cond_0

    .line 672
    iget-object v2, p0, Lcom/android/incallui/CallerInfo$1$2;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v2, v2, Lcom/android/incallui/CallerInfo$1;->val$previousResult:Lcom/android/incallui/CallerInfo;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/incallui/CallerInfo$1$2;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v4, v4, Lcom/android/incallui/CallerInfo$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, v2, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 674
    iget-object v2, p0, Lcom/android/incallui/CallerInfo$1$2;->this$0:Lcom/android/incallui/CallerInfo$1;

    iget-object v2, v2, Lcom/android/incallui/CallerInfo$1;->val$previousResult:Lcom/android/incallui/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    .line 675
    iget-object v2, p0, Lcom/android/incallui/CallerInfo$1$2;->this$0:Lcom/android/incallui/CallerInfo$1;

    # getter for: Lcom/android/incallui/CallerInfo$1;->mYpImgLoadedHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallerInfo$1;->access$000(Lcom/android/incallui/CallerInfo$1;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 677
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    const-string v2, "doYellowPageQuery: loadPhoneDisplayAd has error"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
