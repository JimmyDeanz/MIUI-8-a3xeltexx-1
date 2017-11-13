.class final Lcom/android/incallui/CallerInfo$1;
.super Landroid/os/AsyncTask;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfo;->doYellowPageQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;ZLcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/incallui/CallerInfo;
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
        "Lmiui/yellowpage/YellowPagePhone;",
        ">;"
    }
.end annotation


# instance fields
.field private mYpImgLoadedHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$isIncoming:Z

.field final synthetic val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$previousResult:Lcom/android/incallui/CallerInfo;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/incallui/CallerInfo$1;->val$previousResult:Lcom/android/incallui/CallerInfo;

    iput-object p2, p0, Lcom/android/incallui/CallerInfo$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p3, p0, Lcom/android/incallui/CallerInfo$1;->val$cookie:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/incallui/CallerInfo$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/incallui/CallerInfo$1;->val$number:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/incallui/CallerInfo$1;->val$isIncoming:Z

    iput p7, p0, Lcom/android/incallui/CallerInfo$1;->val$token:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallerInfo$1;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallerInfo$1;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1;->mYpImgLoadedHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 625
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallerInfo$1;->doInBackground([Ljava/lang/Void;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lmiui/yellowpage/YellowPagePhone;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallerInfo$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallerInfo$1;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallerInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 650
    :goto_0
    return-object v1

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    const-string v1, "doYellowPageQuery: getPhoneInfo has error"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 625
    check-cast p1, Lmiui/yellowpage/YellowPagePhone;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallerInfo$1;->onPostExecute(Lmiui/yellowpage/YellowPagePhone;)V

    return-void
.end method

.method protected onPostExecute(Lmiui/yellowpage/YellowPagePhone;)V
    .locals 4
    .param p1, "phone"    # Lmiui/yellowpage/YellowPagePhone;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1;->val$previousResult:Lcom/android/incallui/CallerInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/incallui/CallerInfo;->queryState:I

    .line 656
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1;->val$previousResult:Lcom/android/incallui/CallerInfo;

    iput-object p1, v0, Lcom/android/incallui/CallerInfo;->yellowPagePhone:Lmiui/yellowpage/YellowPagePhone;

    .line 658
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiui/yellowpage/YellowPagePhone;->isYellowPage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/CallerInfo$1;->val$isIncoming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallerInfo$1;->val$isIncoming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lmiui/yellowpage/YellowPagePhone;->isSuspect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    :cond_0
    new-instance v0, Lcom/android/incallui/CallerInfo$1$2;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/CallerInfo$1$2;-><init>(Lcom/android/incallui/CallerInfo$1;Lmiui/yellowpage/YellowPagePhone;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallerInfo$1$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1;->val$listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lcom/android/incallui/CallerInfo$1;->val$token:I

    iget-object v2, p0, Lcom/android/incallui/CallerInfo$1;->val$cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/incallui/CallerInfo$1;->val$previousResult:Lcom/android/incallui/CallerInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    .line 684
    :cond_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/incallui/CallerInfo$1;->val$previousResult:Lcom/android/incallui/CallerInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/incallui/CallerInfo;->queryState:I

    .line 631
    new-instance v0, Lcom/android/incallui/CallerInfo$1$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallerInfo$1$1;-><init>(Lcom/android/incallui/CallerInfo$1;)V

    iput-object v0, p0, Lcom/android/incallui/CallerInfo$1;->mYpImgLoadedHandler:Landroid/os/Handler;

    .line 639
    return-void
.end method
