.class Lcom/android/server/SdpLogService$SdpLogHandler;
.super Landroid/os/Handler;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpLogHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpLogService.Handler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpLogService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpLogService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/SdpLogService$SdpLogHandler;->this$0:Lcom/android/server/SdpLogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SdpLogService;
    .param p2, "x1"    # Lcom/android/server/SdpLogService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpLogService$SdpLogHandler;-><init>(Lcom/android/server/SdpLogService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    const-string v1, "System Ready!"

    # invokes: Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/SdpLogService;->access$200(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Save into File!"

    # invokes: Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/SdpLogService;->access$200(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpLogService$SdpLogHandler;->this$0:Lcom/android/server/SdpLogService;

    # invokes: Lcom/android/server/SdpLogService;->saveToFile()V
    invoke-static {v1}, Lcom/android/server/SdpLogService;->access$300(Lcom/android/server/SdpLogService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SdpLogService.Handler"

    const-string v2, "Exception occurred during message handling..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
