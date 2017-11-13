.class Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;
.super Landroid/os/AsyncTask;
.source "JeejenCallCardWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/JeejenCallCardWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/JeejenCallCardWidget;


# direct methods
.method public constructor <init>(Lcom/android/incallui/JeejenCallCardWidget;Ljava/lang/String;)V
    .locals 0
    .param p2, "pn"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->this$0:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->mPn:Ljava/lang/String;

    .line 346
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, "ins":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->this$0:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v3}, Lcom/android/incallui/JeejenCallCardWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->mPn:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/JeejenContactPhotoUtils;->openContactPhotoInputStream(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    :cond_0
    if-eqz v1, :cond_1

    .line 366
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 370
    :cond_1
    :goto_0
    return-object v2

    .line 357
    :cond_2
    :try_start_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 364
    if-eqz v1, :cond_1

    .line 366
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v3

    goto :goto_0

    .line 359
    :catch_1
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 366
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 368
    :catch_2
    move-exception v3

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 366
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 370
    :cond_3
    :goto_1
    throw v2

    .line 368
    :catch_3
    move-exception v3

    goto :goto_0

    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->this$0:Lcom/android/incallui/JeejenCallCardWidget;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;
    invoke-static {v0, v1}, Lcom/android/incallui/JeejenCallCardWidget;->access$002(Lcom/android/incallui/JeejenCallCardWidget;Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;)Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    .line 390
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 341
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->this$0:Lcom/android/incallui/JeejenCallCardWidget;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;
    invoke-static {v0, v1}, Lcom/android/incallui/JeejenCallCardWidget;->access$002(Lcom/android/incallui/JeejenCallCardWidget;Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;)Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    .line 381
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->mPn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->this$0:Lcom/android/incallui/JeejenCallCardWidget;

    # getter for: Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberOnPhoto:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/JeejenCallCardWidget;->access$100(Lcom/android/incallui/JeejenCallCardWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->this$0:Lcom/android/incallui/JeejenCallCardWidget;

    # invokes: Lcom/android/incallui/JeejenCallCardWidget;->doUpdatePhoto(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1}, Lcom/android/incallui/JeejenCallCardWidget;->access$200(Lcom/android/incallui/JeejenCallCardWidget;Landroid/graphics/Bitmap;)V

    .line 384
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 341
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
