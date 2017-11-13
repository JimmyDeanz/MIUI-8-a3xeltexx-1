.class final Lcom/android/incallui/CallerInfo$2;
.super Landroid/os/AsyncTask;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfo;->doMiProfileQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/incallui/CallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lmiui/provider/MiProfileResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$previousResult:Lcom/android/incallui/CallerInfo;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/incallui/CallerInfo$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/CallerInfo$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/CallerInfo$2;->val$previousResult:Lcom/android/incallui/CallerInfo;

    iput-object p4, p0, Lcom/android/incallui/CallerInfo$2;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput p5, p0, Lcom/android/incallui/CallerInfo$2;->val$token:I

    iput-object p6, p0, Lcom/android/incallui/CallerInfo$2;->val$cookie:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 698
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallerInfo$2;->doInBackground([Ljava/lang/Void;)Lmiui/provider/MiProfileResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lmiui/provider/MiProfileResult;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallerInfo$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallerInfo$2;->val$number:Ljava/lang/String;

    invoke-static {v1, v2}, Lmiui/provider/MiProfileResult;->queryPhoneMiProfile(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/MiProfileResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 711
    :goto_0
    return-object v1

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 709
    const-string v1, "CallerInfo"

    const-string v2, "doMiProfileQuery has error."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 698
    check-cast p1, Lmiui/provider/MiProfileResult;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallerInfo$2;->onPostExecute(Lmiui/provider/MiProfileResult;)V

    return-void
.end method

.method protected onPostExecute(Lmiui/provider/MiProfileResult;)V
    .locals 4
    .param p1, "miProfileResult"    # Lmiui/provider/MiProfileResult;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$2;->val$previousResult:Lcom/android/incallui/CallerInfo;

    iput-object p1, v0, Lcom/android/incallui/CallerInfo;->miProfile:Lmiui/provider/MiProfileResult;

    .line 718
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$2;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$2;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lcom/android/incallui/CallerInfo$2;->val$token:I

    iget-object v2, p0, Lcom/android/incallui/CallerInfo$2;->val$cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/incallui/CallerInfo$2;->val$previousResult:Lcom/android/incallui/CallerInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    .line 721
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 701
    return-void
.end method
