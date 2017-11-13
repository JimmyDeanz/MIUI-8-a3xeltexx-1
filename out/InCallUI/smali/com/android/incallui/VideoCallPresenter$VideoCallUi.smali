.class public interface abstract Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoCallUi"
.end annotation


# virtual methods
.method public abstract cleanupSurfaces()V
.end method

.method public abstract enableZoomControl(Z)V
.end method

.method public abstract getDisplaySurfaceSize()Landroid/graphics/Point;
.end method

.method public abstract getDisplayVideoSurface()Landroid/view/Surface;
.end method

.method public abstract getPreviewSize()Landroid/graphics/Point;
.end method

.method public abstract getPreviewSurfaceSize()Landroid/graphics/Point;
.end method

.method public abstract getPreviewVideoSurface()Landroid/view/Surface;
.end method

.method public abstract getScreenSize()Landroid/graphics/Point;
.end method

.method public abstract hideVideoUi()V
.end method

.method public abstract initPreviewPosition()V
.end method

.method public abstract isDisplayVideoSurfaceCreated()Z
.end method

.method public abstract isPreviewVideoSurfaceCreated()Z
.end method

.method public abstract setDisplayRotation(I)V
.end method

.method public abstract setDisplaySurfaceSize(II)V
.end method

.method public abstract setDisplayVideoAlpha(F)V
.end method

.method public abstract setDisplayVideoSize(II)V
.end method

.method public abstract setFullScreenMode(Z)V
.end method

.method public abstract setFullScreenPreviewPosition()V
.end method

.method public abstract setPreviewGravity(I)V
.end method

.method public abstract setPreviewMargin(IIII)V
.end method

.method public abstract setPreviewOnTouchListener(Z)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setPreviewSurfaceSize(II)V
.end method

.method public abstract showBackground(Z)V
.end method

.method public abstract showVideoBidrectionalUi()V
.end method

.method public abstract showVideoReceptionUi()V
.end method

.method public abstract showVideoTransmissionUi()V
.end method
