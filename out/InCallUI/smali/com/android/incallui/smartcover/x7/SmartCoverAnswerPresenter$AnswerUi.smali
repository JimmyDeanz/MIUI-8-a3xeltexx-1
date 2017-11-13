.class public interface abstract Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;
.super Ljava/lang/Object;
.source "SmartCoverAnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnswerUi"
.end annotation


# virtual methods
.method public abstract initAnswerOperLayout()V
.end method

.method public abstract setCallState(ILandroid/telecom/DisconnectCause;I)V
.end method

.method public abstract setPrimary(Lcom/android/incallui/model/CallCardInfo;ZZIZZ)V
.end method

.method public abstract setPrimaryCallElapsedTime(Ljava/lang/String;)V
.end method

.method public abstract showAnswerUi(Z)V
.end method

.method public abstract showHangUpButton(Z)V
.end method

.method public abstract showTextButton(Z)V
.end method
