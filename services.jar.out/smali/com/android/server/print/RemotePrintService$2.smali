.class Lcom/android/server/print/RemotePrintService$2;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field final synthetic val$printJob:Landroid/print/PrintJobInfo;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$2;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$2;->val$printJob:Landroid/print/PrintJobInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$2;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$2;->val$printJob:Landroid/print/PrintJobInfo;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->access$200(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    .line 202
    return-void
.end method
