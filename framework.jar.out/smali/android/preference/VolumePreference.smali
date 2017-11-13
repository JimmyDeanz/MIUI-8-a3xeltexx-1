.class public Landroid/preference/VolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VolumePreference$SavedState;,
        Landroid/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const v0, 0x1160023

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    const-string v2, "VolumePreference"

    const-string v3, "cleanup()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 142
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 144
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020461

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    :cond_0
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->revertVolume()V

    .line 154
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 155
    iput-object v4, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 158
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "VolumePreference"

    const-string/jumbo v1, "onActivityStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 133
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 77
    const v1, 0x1020461

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 78
    .local v0, "seekBar":Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 79
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 80
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1, v0}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 81
    const-string v1, "VolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBindDialogView : mStreamType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 89
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 120
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDialogClosed() positiveResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->revertVolume()V

    .line 125
    :cond_0
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    .line 126
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKey() Keycode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v3, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 96
    .local v0, "isdown":Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 113
    goto :goto_0

    .end local v0    # "isdown":Z
    :cond_2
    move v0, v2

    .line 95
    goto :goto_1

    .line 98
    .restart local v0    # "isdown":Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 103
    :sswitch_1
    if-eqz v0, :cond_0

    .line 104
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2, v1}, Landroid/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 108
    :sswitch_2
    if-eqz v0, :cond_0

    .line 109
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMuted(ZZ)V
    .locals 0
    .param p1, "muted"    # Z
    .param p2, "zenMuted"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 170
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/VolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 205
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 200
    check-cast v0, Landroid/preference/VolumePreference$SavedState;

    .line 201
    .local v0, "myState":Landroid/preference/VolumePreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "volumizer"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 162
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 165
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 180
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 185
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/VolumePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 186
    .local v0, "myState":Landroid/preference/VolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 189
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 69
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSteamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput p1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 71
    return-void
.end method
