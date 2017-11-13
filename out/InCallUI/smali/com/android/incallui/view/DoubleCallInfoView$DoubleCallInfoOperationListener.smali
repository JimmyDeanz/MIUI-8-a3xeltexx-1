.class public interface abstract Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;
.super Ljava/lang/Object;
.source "DoubleCallInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/DoubleCallInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DoubleCallInfoOperationListener"
.end annotation


# virtual methods
.method public abstract enablePrimaryHangUp()Z
.end method

.method public abstract hungUpPrimaryCall()V
.end method

.method public abstract hungUpSecondaryCall()V
.end method

.method public abstract onRequestPrimaryCallActive()V
.end method

.method public abstract onRequestSecondaryCallActive()V
.end method

.method public abstract showConferenceCallManager()V
.end method
