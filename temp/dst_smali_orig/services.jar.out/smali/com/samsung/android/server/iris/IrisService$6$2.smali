.class Lcom/samsung/android/server/iris/IrisService$6$2;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$6;->onAcquired(JLcom/samsung/android/camera/iris/EyeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$6;

.field final synthetic val$deviceId:J

.field final synthetic val$eyeInfo:Lcom/samsung/android/camera/iris/EyeInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$6;JLcom/samsung/android/camera/iris/EyeInfo;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$6$2;->this$1:Lcom/samsung/android/server/iris/IrisService$6;

    iput-wide p2, p0, Lcom/samsung/android/server/iris/IrisService$6$2;->val$deviceId:J

    iput-object p4, p0, Lcom/samsung/android/server/iris/IrisService$6$2;->val$eyeInfo:Lcom/samsung/android/camera/iris/EyeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6$2;->this$1:Lcom/samsung/android/server/iris/IrisService$6;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-wide v2, p0, Lcom/samsung/android/server/iris/IrisService$6$2;->val$deviceId:J

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$6$2;->val$eyeInfo:Lcom/samsung/android/camera/iris/EyeInfo;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/iris/IrisService;->handleAcquired(JLcom/samsung/android/camera/iris/EyeInfo;)V

    return-void
.end method
