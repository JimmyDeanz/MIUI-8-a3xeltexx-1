.class final Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmartClipRemoteRequestDispatcherProxy"
.end annotation


# instance fields
.field private DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDispatcher:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

.field private mGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SmartClipRemoteRequestDispatcher_ViewRootImpl"

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    new-instance v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;-><init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    iput-object p2, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->isDebugMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    return-void
.end method

.method static synthetic access$3100(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipMetaDataExtraction(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method private dispatchSmartClipMetaDataExtraction(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 4
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    iget-object v1, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .local v1, "requestInfo":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    iget v3, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iput v3, v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget v3, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    iput v3, v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    const/4 v2, 0x0

    .local v2, "winFrame":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .end local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    iget-object v3, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V

    .restart local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    iget-object v3, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->doExtractSmartClipData(Landroid/view/View;)Z

    :goto_0
    return-void

    .end local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    :cond_0
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v3, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V

    .restart local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 4
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SmartClipRemoteRequestDispatcher_ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSmartClipRemoteRequest : req id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    const-string v1, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v3, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;-><init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
