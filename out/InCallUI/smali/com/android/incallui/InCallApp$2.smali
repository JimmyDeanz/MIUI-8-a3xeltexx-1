.class Lcom/android/incallui/InCallApp$2;
.super Landroid/os/AsyncTask;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallApp;->updateInCallWallpaper(Z)V
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
.field final synthetic this$0:Lcom/android/incallui/InCallApp;

.field final synthetic val$isUseLockWallpaper:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallApp;Z)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/incallui/InCallApp$2;->this$0:Lcom/android/incallui/InCallApp;

    iput-boolean p2, p0, Lcom/android/incallui/InCallApp$2;->val$isUseLockWallpaper:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallApp$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/incallui/InCallApp$2;->this$0:Lcom/android/incallui/InCallApp;

    iget-boolean v1, p0, Lcom/android/incallui/InCallApp$2;->val$isUseLockWallpaper:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->updateInCallWallPaperDirectly(Z)V

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method
