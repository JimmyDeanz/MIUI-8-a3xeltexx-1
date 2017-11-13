.class public interface abstract Lcom/android/incallui/CallCardPresenter$CallCardUi;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallCardUi"
.end annotation


# virtual methods
.method public abstract controlBannerTranslateY(ZZZZ)V
.end method

.method public abstract controlBigAvatar(ZZ)V
.end method

.method public abstract controlSmallAvatarTranslateY()V
.end method

.method public abstract getSingleCallerInfoTopSpace(I)I
.end method

.method public abstract hideBanner(Z)V
.end method

.method public abstract hideSmallAvatar(Z)V
.end method

.method public abstract hideVideoBanner()V
.end method

.method public abstract setCallCardImage(Landroid/graphics/drawable/Drawable;ZZ)V
.end method

.method public abstract setCallCardMask(ZZZ)V
.end method

.method public abstract setDoubleCallInfoVisible(Z)V
.end method

.method public abstract setDoublePrimary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V
.end method

.method public abstract setDoublePrimaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setDoublePrimaryCallInfoVisible(Z)V
.end method

.method public abstract setDoublePrimaryCallState(ILandroid/telecom/DisconnectCause;)V
.end method

.method public abstract setDoublePrimaryName(Ljava/lang/String;ZZLjava/lang/String;)V
.end method

.method public abstract setDoubleSecondary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V
.end method

.method public abstract setDoubleSecondaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setDoubleSecondaryCallInfoVisible(Z)V
.end method

.method public abstract setDoubleSecondaryCallState(ILandroid/telecom/DisconnectCause;)V
.end method

.method public abstract setDoubleSecondaryName(Ljava/lang/String;ZZLjava/lang/String;)V
.end method

.method public abstract setSingleCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setSingleCallInfo(Lcom/android/incallui/model/CallCardInfo;ZZIZZ)V
.end method

.method public abstract setSingleCallInfoVisible(Z)V
.end method

.method public abstract setSingleCallName(Ljava/lang/String;ZZLjava/lang/String;Z)V
.end method

.method public abstract setSingleCallState(IIIZLandroid/telecom/DisconnectCause;I)V
.end method

.method public abstract setSinglePhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract setSmallAvatar(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract showAnswerIncomingBanner()V
.end method

.method public abstract showDialBanner()V
.end method

.method public abstract showIncomingBanner()V
.end method

.method public abstract showSmallAvatar(I)V
.end method

.method public abstract showVideoBanner()V
.end method

.method public abstract updateSuspectInfo(Z)V
.end method

.method public abstract updateSuspectInfoOnline(Ljava/lang/String;)V
.end method
