.class Lcom/samsung/android/server/iris/IrisService$6$4;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$6;->onError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$6;

.field final synthetic val$deviceId:J

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$6;JI)V
    .locals 0

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$6$4;->this$1:Lcom/samsung/android/server/iris/IrisService$6;

    iput-wide p2, p0, Lcom/samsung/android/server/iris/IrisService$6$4;->val$deviceId:J

    iput p4, p0, Lcom/samsung/android/server/iris/IrisService$6$4;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6$4;->this$1:Lcom/samsung/android/server/iris/IrisService$6;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-wide v2, p0, Lcom/samsung/android/server/iris/IrisService$6$4;->val$deviceId:J

    iget v1, p0, Lcom/samsung/android/server/iris/IrisService$6$4;->val$error:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/iris/IrisService;->handleError(JI)V

    .line 1563
    return-void
.end method
