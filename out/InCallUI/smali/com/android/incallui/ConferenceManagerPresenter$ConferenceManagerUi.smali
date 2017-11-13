.class public interface abstract Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
.super Ljava/lang/Object;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceManagerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConferenceManagerUi"
.end annotation


# virtual methods
.method public abstract customStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method public abstract displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract getTwoContactsName()[Ljava/lang/String;
.end method

.method public abstract initConferenceView()V
.end method

.method public abstract isFragmentVisible()Z
.end method

.method public abstract setConferenceCallerElapsedTime(Ljava/lang/String;)V
.end method

.method public abstract setConferenceDescription(Ljava/lang/String;)V
.end method

.method public abstract setRowVisible(IZ)V
.end method

.method public abstract setupEndButtonForRow(ILjava/lang/String;Z)V
.end method

.method public abstract setupSeparateButtonForRow(ILjava/lang/String;Z)V
.end method

.method public abstract showAddParticipant(Z)V
.end method

.method public abstract startAddParticipant(Ljava/lang/String;)V
.end method
