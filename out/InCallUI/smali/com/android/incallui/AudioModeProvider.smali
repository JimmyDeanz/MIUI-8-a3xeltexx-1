.class Lcom/android/incallui/AudioModeProvider;
.super Ljava/lang/Object;
.source "AudioModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    }
.end annotation


# static fields
.field private static sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;


# instance fields
.field private mAudioMode:I

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMuted:Z

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;

.field private mSupportedModes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/incallui/AudioModeProvider;

    invoke-direct {v0}, Lcom/android/incallui/AudioModeProvider;-><init>()V

    sput-object v0, Lcom/android/incallui/AudioModeProvider;->sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    .line 36
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    .line 37
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/android/incallui/AudioModeProvider$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AudioModeProvider$1;-><init>(Lcom/android/incallui/AudioModeProvider;)V

    iput-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mPhoneListener:Landroid/telecom/Phone$Listener;

    .line 122
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/AudioModeProvider;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/incallui/AudioModeProvider;->sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onSupportedAudioMode(I)V

    .line 95
    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onAudioMode(I)V

    .line 96
    iget-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onMute(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public clearPhone()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    .line 62
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    .line 63
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Lcom/android/incallui/AudioModeProvider;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mPhone:Landroid/telecom/Phone;

    .line 65
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    return v0
.end method

.method public getSupportedModes()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    return v0
.end method

.method public onAudioModeChange(IZ)V
    .locals 3
    .param p1, "newMode"    # I
    .param p2, "muted"    # Z

    .prologue
    .line 68
    iget v2, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    if-eq v2, p1, :cond_0

    .line 69
    iput p1, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    .line 70
    iget-object v2, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .line 71
    .local v1, "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    iget v2, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    invoke-interface {v1, v2}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onAudioMode(I)V

    goto :goto_0

    .line 75
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    if-eq v2, p2, :cond_1

    .line 76
    iput-boolean p2, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    .line 77
    iget-object v2, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .line 78
    .restart local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    iget-boolean v2, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    invoke-interface {v1, v2}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onMute(Z)V

    goto :goto_1

    .line 81
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    :cond_1
    return-void
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 3
    .param p1, "newModeMask"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    .line 86
    iget-object v2, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .line 87
    .local v1, "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    iget v2, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    invoke-interface {v1, v2}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onSupportedAudioMode(I)V

    goto :goto_0

    .line 89
    .end local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public setAudioMode(I)V
    .locals 1
    .param p1, "newMode"    # I

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/AudioModeProvider;->onAudioModeChange(IZ)V

    .line 116
    return-void
.end method

.method public setPhone(Landroid/telecom/Phone;)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/incallui/AudioModeProvider;->mPhone:Landroid/telecom/Phone;

    .line 55
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Lcom/android/incallui/AudioModeProvider;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 56
    return-void
.end method
