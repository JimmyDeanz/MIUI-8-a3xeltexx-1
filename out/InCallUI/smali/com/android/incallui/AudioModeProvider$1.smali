.class Lcom/android/incallui/AudioModeProvider$1;
.super Landroid/telecom/Phone$Listener;
.source "AudioModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AudioModeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AudioModeProvider;


# direct methods
.method constructor <init>(Lcom/android/incallui/AudioModeProvider;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/incallui/AudioModeProvider$1;->this$0:Lcom/android/incallui/AudioModeProvider;

    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V
    .locals 3
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider$1;->this$0:Lcom/android/incallui/AudioModeProvider;

    invoke-static {p2}, Lcom/android/incallui/CallAdapterUtils;->getRoute(Landroid/telecom/AudioState;)I

    move-result v1

    invoke-static {p2}, Lcom/android/incallui/CallAdapterUtils;->isMuted(Landroid/telecom/AudioState;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AudioModeProvider;->onAudioModeChange(IZ)V

    .line 44
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider$1;->this$0:Lcom/android/incallui/AudioModeProvider;

    invoke-static {p2}, Lcom/android/incallui/CallAdapterUtils;->getSupportedRouteMask(Landroid/telecom/AudioState;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AudioModeProvider;->onSupportedAudioModeChange(I)V

    .line 45
    return-void
.end method
