.class Lcom/samsung/android/server/iris/IrisService$6$1;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$6;->onEnrollResult(JIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$6;

.field final synthetic val$deviceId:J

.field final synthetic val$groupId:I

.field final synthetic val$irisId:I

.field final synthetic val$remaining:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$6;JIII)V
    .locals 0

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->this$1:Lcom/samsung/android/server/iris/IrisService$6;

    iput-wide p2, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->val$deviceId:J

    iput p4, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->val$irisId:I

    iput p5, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->val$groupId:I

    iput p6, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->val$remaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->this$1:Lcom/samsung/android/server/iris/IrisService$6;

    iget-object v1, v0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-wide v2, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->val$deviceId:J

    iget v4, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->val$irisId:I

    iget v5, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->val$groupId:I

    iget v6, p0, Lcom/samsung/android/server/iris/IrisService$6$1;->val$remaining:I

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/iris/IrisService;->handleEnrollResult(JIII)V

    .line 1533
    return-void
.end method
