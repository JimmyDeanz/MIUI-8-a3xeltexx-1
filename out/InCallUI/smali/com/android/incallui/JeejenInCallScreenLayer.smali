.class public Lcom/android/incallui/JeejenInCallScreenLayer;
.super Landroid/widget/RelativeLayout;
.source "JeejenInCallScreenLayer.java"


# instance fields
.field private mCallCardPhotoWidget:Landroid/view/ViewGroup;

.field private mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

.field private mCallback:Lcom/android/incallui/IJeejenInCallCallback;

.field private mInCallControlsSpeakerWidget:Landroid/view/ViewGroup;

.field private mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

.field private mIncomingCallWidget:Lcom/android/incallui/JeejenIncomingCallWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    .line 13
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardPhotoWidget:Landroid/view/ViewGroup;

    .line 14
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

    .line 15
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mIncomingCallWidget:Lcom/android/incallui/JeejenIncomingCallWidget;

    .line 16
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsSpeakerWidget:Landroid/view/ViewGroup;

    .line 18
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/JeejenInCallScreenLayer;)Lcom/android/incallui/IJeejenInCallCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/JeejenInCallScreenLayer;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 41
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 28
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/JeejenCallCardWidget;

    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    .line 29
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardPhotoWidget:Landroid/view/ViewGroup;

    .line 30
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/JeejenInCallControlsWidget;

    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

    .line 31
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsSpeakerWidget:Landroid/view/ViewGroup;

    .line 33
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/JeejenIncomingCallWidget;

    iput-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mIncomingCallWidget:Lcom/android/incallui/JeejenIncomingCallWidget;

    .line 35
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    iget-object v1, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardPhotoWidget:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/incallui/JeejenCallCardWidget;->bindCallCardPhotoWidget(Landroid/view/ViewGroup;)V

    .line 36
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

    iget-object v1, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsSpeakerWidget:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/incallui/JeejenInCallControlsWidget;->bindInCallControlsSpeakerWidget(Landroid/view/ViewGroup;)V

    .line 37
    return-void
.end method

.method public refreshSpeakerMode()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

    invoke-virtual {v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->refreshSpeakerMode()V

    .line 119
    return-void
.end method

.method public setCallback(Lcom/android/incallui/IJeejenInCallCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/incallui/IJeejenInCallCallback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    .line 45
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenInCallControlsWidget;->setCallback(Lcom/android/incallui/IJeejenInCallCallback;)V

    .line 46
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mIncomingCallWidget:Lcom/android/incallui/JeejenIncomingCallWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenIncomingCallWidget;->setCallback(Lcom/android/incallui/IJeejenInCallCallback;)V

    .line 47
    return-void
.end method

.method public showInCallControlsWidget(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 50
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->nowSecondIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsSpeakerWidget:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 55
    if-eqz p1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v0}, Lcom/android/incallui/JeejenCallCardWidget;->switchToIncallLayout()V

    .line 57
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

    invoke-virtual {v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->refreshSpeakerMode()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 53
    goto :goto_1

    :cond_2
    move v1, v2

    .line 54
    goto :goto_2

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/JeejenCallCardWidget;->updateDialerDigits(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showIncomingCallWidget(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->nowSecondIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/JeejenInCallScreenLayer$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/JeejenInCallScreenLayer$1;-><init>(Lcom/android/incallui/JeejenInCallScreenLayer;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mIncomingCallWidget:Lcom/android/incallui/JeejenIncomingCallWidget;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/incallui/JeejenIncomingCallWidget;->setVisibility(I)V

    .line 76
    if-eqz p1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v0}, Lcom/android/incallui/JeejenCallCardWidget;->switchToIncomingLayout()V

    goto :goto_0

    .line 75
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/JeejenCallCardWidget;->updateDialerDigits(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCallState(Ljava/lang/String;)V
    .locals 1
    .param p1, "callState"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->nowSecondIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenCallCardWidget;->updateCallState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDialerDigits(Ljava/lang/String;)V
    .locals 1
    .param p1, "dialerDigits"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenCallCardWidget;->updateDialerDigits(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public updateDistrict(Ljava/lang/String;)V
    .locals 1
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->nowSecondIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenCallCardWidget;->updateDistrict(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateElapsedTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "elapsedTime"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->nowSecondIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenCallCardWidget;->updateElapsedTime(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateNameAndPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->nowSecondIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/JeejenCallCardWidget;->updateNameAndPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateToggleDialpadState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mCallCardWidget:Lcom/android/incallui/JeejenCallCardWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenCallCardWidget;->updateToggleDialpadState(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer;->mInCallControlsWidget:Lcom/android/incallui/JeejenInCallControlsWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenInCallControlsWidget;->updateToggleDialpadState(Z)V

    .line 111
    return-void
.end method
