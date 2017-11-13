.class public Lcom/android/incallui/VideoCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "VideoCallFragment.java"

# interfaces
.implements Lcom/android/incallui/VideoCallPresenter$VideoCallUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallFragment$VideoCallSurface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/VideoCallPresenter;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;"
    }
.end annotation


# static fields
.field private static sDisplaySize:Landroid/graphics/Point;

.field private static sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

.field private static sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

.field private static sVideoSurfacesInUse:Z


# instance fields
.field private mBackground:Landroid/widget/LinearLayout;

.field private mIsActivityRestart:Z

.field private mIsLandscape:Z

.field private mIsLayoutComplete:Z

.field private mVideoPreview:Lcom/android/incallui/view/VoLTEVideoPreview;

.field private mVideoViews:Landroid/view/View;

.field private mVideoViewsStub:Landroid/view/ViewStub;

.field private mZoomControl:Lcom/android/incallui/ZoomControlBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 83
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 84
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 85
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoCallFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/VideoCallFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/incallui/VideoCallFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/VideoCallFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    return p1
.end method

.method private centerDisplayView(Landroid/view/View;)V
    .locals 0
    .param p1, "displayVideo"    # Landroid/view/View;

    .prologue
    .line 539
    return-void
.end method

.method private inflateVideoCallViews()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const v8, 0x7f0900ff

    const v4, 0x7f0900fe

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateVideoCallViews mVideoViews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    .line 1203
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/VideoCallFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/VideoCallFragment$2;-><init>(Lcom/android/incallui/VideoCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    .line 1216
    .local v6, "displaySurface":Landroid/view/TextureView;
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ZoomControlBar;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    .line 1217
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/ZoomControlBar;->setEnabled(Z)V

    .line 1219
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mBackground:Landroid/widget/LinearLayout;

    .line 1221
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/view/VoLTEVideoPreview;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoPreview:Lcom/android/incallui/view/VoLTEVideoPreview;

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateVideoCallViews: sVideoSurfacesInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getScreenSize()Landroid/graphics/Point;

    move-result-object v7

    .line 1227
    .local v7, "screenSize":Landroid/graphics/Point;
    :goto_0
    invoke-direct {p0, v6, v7}, Lcom/android/incallui/VideoCallFragment;->setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V

    .line 1229
    sget-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    if-nez v0, :cond_3

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " inflateVideoCallViews screenSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    iget-object v3, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V

    sput-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 1237
    new-instance v3, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    invoke-direct {v3, v0, v4, v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;)V

    sput-object v3, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 1239
    sput-boolean v2, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 1249
    .end local v6    # "displaySurface":Landroid/view/TextureView;
    .end local v7    # "screenSize":Landroid/graphics/Point;
    :cond_1
    :goto_1
    return-void

    .line 1226
    .restart local v6    # "displaySurface":Landroid/view/TextureView;
    :cond_2
    sget-object v7, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    goto :goto_0

    .line 1243
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    :cond_3
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    .line 1245
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    goto :goto_1
.end method

.method private inflateVideoUi(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 634
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 635
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 637
    if-eqz p1, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 642
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_1
    return-void

    .line 634
    .end local v0    # "visibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private onPresenterChanged(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPresenterChanged: Presenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    .line 889
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V

    .line 891
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    .line 892
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V

    .line 894
    :cond_1
    return-void
.end method

.method private setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "size"    # Landroid/graphics/Point;

    .prologue
    .line 1260
    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1261
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1262
    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1263
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceSizeAndTranslation: Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IsLayoutComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IsLandscape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    if-eqz v1, :cond_0

    .line 1272
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V

    .line 1274
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanupSurfaces()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 874
    const-string v0, "cleanupSurfaces"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    .line 876
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    .line 877
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 879
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    .line 880
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    .line 881
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 883
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 884
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->createPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 2

    .prologue
    .line 614
    const-string v1, "createPresenter"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    new-instance v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/VideoCallPresenter;-><init>()V

    .line 616
    .local v0, "presenter":Lcom/android/incallui/VideoCallPresenter;
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->onPresenterChanged(Lcom/android/incallui/VideoCallPresenter;)V

    .line 617
    return-object v0
.end method

.method public enableZoomControl(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 847
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    if-nez v0, :cond_1

    .line 848
    const-string v0, "Zoom control is null. Can\'t reset zoom control"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ZoomControlBar;->setEnabled(Z)V

    .line 853
    if-nez p1, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    invoke-virtual {v0, v1}, Lcom/android/incallui/ZoomControlBar;->setZoomIndex(I)V

    .line 855
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    invoke-virtual {v0, v1}, Lcom/android/incallui/ZoomControlBar;->setZoomMax(I)V

    goto :goto_0
.end method

.method public getDisplaySurfaceSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 1078
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayVideoSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 928
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 952
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    .line 953
    const/4 v0, 0x0

    .line 955
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewSurfaceSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 942
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewVideoSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 937
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1182
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1183
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1185
    return-object v1
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getUi()Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    .locals 0

    .prologue
    .line 625
    return-object p0
.end method

.method public hideVideoUi()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 716
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f0900fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 718
    .local v0, "incomingVideoView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 719
    .local v1, "previewVideoView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 722
    :cond_0
    if-eqz v1, :cond_1

    .line 723
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 726
    .end local v0    # "incomingVideoView":Landroid/view/View;
    .end local v1    # "previewVideoView":Landroid/view/View;
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/incallui/VideoCallFragment;->inflateVideoUi(Z)V

    .line 727
    invoke-virtual {p0, v4}, Lcom/android/incallui/VideoCallFragment;->showZoomControl(Z)V

    .line 728
    return-void
.end method

.method public initPreviewPosition()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoPreview:Lcom/android/incallui/view/VoLTEVideoPreview;

    invoke-virtual {v0}, Lcom/android/incallui/view/VoLTEVideoPreview;->initPreviewPosition()V

    .line 592
    :cond_0
    return-void
.end method

.method public isDisplayVideoSurfaceCreated()Z
    .locals 3

    .prologue
    .line 907
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 908
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDisplayVideoSurfaceCreated returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    return v0

    .line 907
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewVideoSurfaceCreated()Z
    .locals 3

    .prologue
    .line 917
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 918
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isPreviewVideoSurfaceCreated returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    return v0

    .line 917
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated: IsLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->init(Landroid/content/Context;)V

    .line 433
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 416
    sget-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsActivityRestart:Z

    .line 417
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 447
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 449
    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 452
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 453
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/incallui/VideoCallFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/VideoCallFragment$1;-><init>(Lcom/android/incallui/VideoCallFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 473
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 576
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 577
    const-string v0, "onDestroyView:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    .line 571
    const-string v0, "onPause:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 478
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 480
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    if-nez v0, :cond_1

    .line 481
    :cond_0
    const-string v0, "onSaveInstanceState: outState or zoom control is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string v0, "zoomIndex"

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    invoke-virtual {v1}, Lcom/android/incallui/ZoomControlBar;->getZoomIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    const-string v0, "maxZoom"

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    invoke-virtual {v1}, Lcom/android/incallui/ZoomControlBar;->getZoomMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    const-string v1, "zoomVisibility"

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    invoke-virtual {v0}, Lcom/android/incallui/ZoomControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState: savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStop()V

    .line 565
    const-string v0, "onStop:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 549
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated: VideoSurfacesInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    const v0, 0x7f0900f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    .line 557
    sget-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V

    .line 560
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 493
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewStateRestored : savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    if-nez v0, :cond_1

    .line 497
    :cond_0
    const-string v0, "onViewStateRestored: saved Instance or zoom control is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    const-string v1, "maxZoom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ZoomControlBar;->setZoomMax(I)V

    .line 502
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    const-string v1, "zoomIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ZoomControlBar;->setZoomIndex(I)V

    .line 503
    const-string v0, "zoomVisibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallFragment;->showZoomControl(Z)V

    goto :goto_0
.end method

.method public setDisplayRotation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayRotation: orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    .line 1046
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 1048
    .local v0, "display":Landroid/view/TextureView;
    if-nez v0, :cond_1

    .line 1054
    .end local v0    # "display":Landroid/view/TextureView;
    :cond_0
    :goto_0
    return-void

    .line 1052
    .restart local v0    # "display":Landroid/view/TextureView;
    :cond_1
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_0
.end method

.method public setDisplaySurfaceSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1068
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1069
    .local v0, "isDisplaySurfaceAvailable":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplaySurfaceSize: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDisplaySurfaceAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    if-eqz v0, :cond_0

    .line 1072
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setSurfaceDimensions(II)V

    .line 1074
    :cond_0
    return-void

    .line 1068
    .end local v0    # "isDisplaySurfaceAvailable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayVideoAlpha(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1119
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_1

    .line 1120
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 1121
    .local v0, "displayVideo":Landroid/view/TextureView;
    if-nez v0, :cond_0

    .line 1122
    const-string v1, "Display Video texture view is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    .end local v0    # "displayVideo":Landroid/view/TextureView;
    :goto_0
    return-void

    .line 1125
    .restart local v0    # "displayVideo":Landroid/view/TextureView;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setAlpha(F)V

    goto :goto_0

    .line 1127
    .end local v0    # "displayVideo":Landroid/view/TextureView;
    :cond_1
    const-string v1, "Display Surface is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplayVideoSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayVideoSize: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_1

    .line 1105
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 1106
    .local v0, "displayVideo":Landroid/view/TextureView;
    if-nez v0, :cond_0

    .line 1107
    const-string v1, "Display Video texture view is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    .end local v0    # "displayVideo":Landroid/view/TextureView;
    :goto_0
    return-void

    .line 1110
    .restart local v0    # "displayVideo":Landroid/view/TextureView;
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    .line 1111
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallFragment;->setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V

    goto :goto_0

    .line 1113
    .end local v0    # "displayVideo":Landroid/view/TextureView;
    :cond_1
    const-string v1, "Display Video Surface is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFullScreenMode(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoPreview:Lcom/android/incallui/view/VoLTEVideoPreview;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/VoLTEVideoPreview;->setFullScreenMode(Z)V

    .line 585
    :cond_0
    return-void
.end method

.method public setFullScreenPreviewPosition()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoPreview:Lcom/android/incallui/view/VoLTEVideoPreview;

    invoke-virtual {v0}, Lcom/android/incallui/view/VoLTEVideoPreview;->setFullScreenPreviewPosition()V

    .line 599
    :cond_0
    return-void
.end method

.method public setPreviewGravity(I)V
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewGravity: gravity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v2, :cond_0

    .line 986
    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    .line 988
    .local v1, "preview":Landroid/view/TextureView;
    if-nez v1, :cond_1

    .line 997
    .end local v1    # "preview":Landroid/view/TextureView;
    :cond_0
    :goto_0
    return-void

    .line 992
    .restart local v1    # "preview":Landroid/view/TextureView;
    :cond_1
    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 993
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 994
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setPreviewMargin(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewMargin: left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " right="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v2, :cond_0

    .line 1004
    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    .line 1005
    .local v1, "preview":Landroid/view/TextureView;
    if-nez v1, :cond_1

    .line 1013
    .end local v1    # "preview":Landroid/view/TextureView;
    :cond_0
    :goto_0
    return-void

    .line 1008
    .restart local v1    # "preview":Landroid/view/TextureView;
    :cond_1
    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1009
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1010
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 1011
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setPreviewOnTouchListener(Z)V
    .locals 1
    .param p1, "isSet"    # Z

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoPreview:Lcom/android/incallui/view/VoLTEVideoPreview;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/VoLTEVideoPreview;->setOnTouchListener(Z)V

    .line 606
    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewSize: width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 968
    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v2, :cond_0

    .line 969
    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    .line 971
    .local v1, "preview":Landroid/view/TextureView;
    if-nez v1, :cond_1

    .line 980
    .end local v1    # "preview":Landroid/view/TextureView;
    :cond_0
    :goto_0
    return-void

    .line 975
    .restart local v1    # "preview":Landroid/view/TextureView;
    :cond_1
    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 976
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 977
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 978
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setPreviewSurfaceSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1058
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1059
    .local v0, "isPreviewSurfaceAvailable":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurfaceSize: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isPreviewSurfaceAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    if-eqz v0, :cond_0

    .line 1062
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setSurfaceDimensions(II)V

    .line 1064
    :cond_0
    return-void

    .line 1058
    .end local v0    # "isPreviewSurfaceAvailable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBackground(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mBackground:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mBackground:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1193
    :cond_0
    return-void

    .line 1191
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPreviewVideo(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 701
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, "previewVideoView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 704
    if-eqz p1, :cond_1

    .line 705
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showVideoBidrectionalUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 686
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/VideoCallFragment;->inflateVideoUi(Z)V

    .line 688
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f0900fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 689
    .local v0, "incomingVideoView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 691
    .local v1, "previewVideoView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 694
    :cond_0
    if-eqz v1, :cond_1

    .line 695
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 696
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 698
    :cond_1
    return-void
.end method

.method public showVideoReceptionUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 668
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/VideoCallFragment;->inflateVideoUi(Z)V

    .line 670
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f0900fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 671
    .local v0, "incomingVideoView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 673
    .local v1, "previewVideoView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_0
    if-eqz v1, :cond_1

    .line 677
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/VideoCallFragment;->showZoomControl(Z)V

    .line 680
    return-void
.end method

.method public showVideoTransmissionUi()V
    .locals 4

    .prologue
    .line 650
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/VideoCallFragment;->inflateVideoUi(Z)V

    .line 652
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f0900fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 653
    .local v0, "incomingVideoView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 655
    .local v1, "previewVideoView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 656
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 658
    :cond_0
    if-eqz v1, :cond_1

    .line 659
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 660
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 662
    :cond_1
    return-void
.end method

.method public showZoomControl(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show zoom control = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    if-nez v0, :cond_0

    .line 817
    const-string v0, "Zoom control null. Can\'t show zoom control"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mZoomControl:Lcom/android/incallui/ZoomControlBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/incallui/ZoomControlBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
