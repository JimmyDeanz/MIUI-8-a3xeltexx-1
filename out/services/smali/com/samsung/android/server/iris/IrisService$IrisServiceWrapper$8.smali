.class Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->rename(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$irisId:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iput p2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->val$irisId:I

    iput p3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->val$effectiveGroupId:I

    iput-object p4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$3500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->this$1:Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    iget-object v1, v1, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/iris/IrisService;->access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->val$irisId:I

    iget v3, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->val$effectiveGroupId:I

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper$8;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/iris/IrisUtils;->renameIrisForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 1995
    return-void
.end method
