.class public Lcom/android/incallui/JeejenInCallControlsWidget;
.super Landroid/widget/RelativeLayout;
.source "JeejenInCallControlsWidget.java"


# instance fields
.field private mCallback:Lcom/android/incallui/IJeejenInCallCallback;

.field private mEndCallButton:Landroid/widget/Button;

.field private mSpeakerModeButton:Landroid/widget/ToggleButton;

.field protected mSpeakerWidget:Landroid/view/ViewGroup;

.field private mToggleDialpadButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mEndCallButton:Landroid/widget/Button;

    .line 14
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mToggleDialpadButton:Landroid/widget/ToggleButton;

    .line 16
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    .line 18
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerWidget:Landroid/view/ViewGroup;

    .line 19
    iput-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerModeButton:Landroid/widget/ToggleButton;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/JeejenInCallControlsWidget;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/JeejenInCallControlsWidget;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/JeejenInCallControlsWidget;
    .param p1, "x1"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/incallui/JeejenInCallControlsWidget;->doUpdateSpeakerMode(I)V

    return-void
.end method

.method private doUpdateSpeakerMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 99
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerModeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 114
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerModeButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerModeButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerModeButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bindInCallControlsSpeakerWidget(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "speakerWidget"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerWidget:Landroid/view/ViewGroup;

    .line 31
    const v0, 0x7f0900ba

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerModeButton:Landroid/widget/ToggleButton;

    .line 33
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerModeButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/JeejenInCallControlsWidget$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/JeejenInCallControlsWidget$1;-><init>(Lcom/android/incallui/JeejenInCallControlsWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 56
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mEndCallButton:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mEndCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/JeejenInCallControlsWidget$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/JeejenInCallControlsWidget$2;-><init>(Lcom/android/incallui/JeejenInCallControlsWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mToggleDialpadButton:Landroid/widget/ToggleButton;

    .line 68
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mToggleDialpadButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/JeejenInCallControlsWidget$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/JeejenInCallControlsWidget$3;-><init>(Lcom/android/incallui/JeejenInCallControlsWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public refreshSpeakerMode()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 82
    iget-object v6, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v6}, Lcom/android/incallui/IJeejenInCallCallback;->getSpeakerModeCount()I

    move-result v2

    .line 83
    .local v2, "modeCount":I
    const/4 v4, 0x0

    .line 84
    .local v4, "supportedModeCount":I
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-gt v4, v3, :cond_1

    .line 85
    iget-object v6, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v6, v0}, Lcom/android/incallui/IJeejenInCallCallback;->isSpeakerModeSupported(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    if-le v4, v3, :cond_3

    .line 90
    .local v3, "shown":Z
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mSpeakerModeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 92
    if-eqz v3, :cond_2

    .line 93
    iget-object v5, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    invoke-interface {v5}, Lcom/android/incallui/IJeejenInCallCallback;->getSpeakerMode()I

    move-result v1

    .line 94
    .local v1, "mode":I
    invoke-direct {p0, v1}, Lcom/android/incallui/JeejenInCallControlsWidget;->doUpdateSpeakerMode(I)V

    .line 96
    .end local v1    # "mode":I
    :cond_2
    return-void

    .end local v3    # "shown":Z
    :cond_3
    move v3, v5

    .line 89
    goto :goto_1

    .line 90
    .restart local v3    # "shown":Z
    :cond_4
    const/16 v5, 0x8

    goto :goto_2
.end method

.method public setCallback(Lcom/android/incallui/IJeejenInCallCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/incallui/IJeejenInCallCallback;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    .line 27
    return-void
.end method

.method public updateToggleDialpadState(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 79
    return-void
.end method
