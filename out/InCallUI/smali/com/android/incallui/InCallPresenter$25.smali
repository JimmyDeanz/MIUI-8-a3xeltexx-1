.class Lcom/android/incallui/InCallPresenter$25;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->playUpgradePromptTone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$25;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 979
    const/4 v3, 0x0

    .line 981
    .local v3, "toneGenerator":Landroid/media/ToneGenerator;
    const/16 v5, 0x1a

    .line 982
    .local v5, "toneType":I
    const/16 v6, 0x50

    .line 983
    .local v6, "toneVolume":I
    const/4 v2, 0x0

    .line 984
    .local v2, "stream":I
    :try_start_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 985
    const/4 v2, 0x6

    .line 987
    :cond_0
    new-instance v4, Landroid/media/ToneGenerator;

    invoke-direct {v4, v2, v6}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    .end local v3    # "toneGenerator":Landroid/media/ToneGenerator;
    .local v4, "toneGenerator":Landroid/media/ToneGenerator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v1, v7, :cond_1

    .line 989
    :try_start_1
    invoke-virtual {v4, v5}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 990
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    :cond_1
    const-string v7, "playUpgradePromptTone"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 996
    if-eqz v4, :cond_4

    .line 997
    invoke-virtual {v4}, Landroid/media/ToneGenerator;->release()V

    move-object v3, v4

    .line 1000
    .end local v1    # "i":I
    .end local v4    # "toneGenerator":Landroid/media/ToneGenerator;
    .restart local v3    # "toneGenerator":Landroid/media/ToneGenerator;
    :cond_2
    :goto_1
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to playUpgradePromptTone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 996
    if-eqz v3, :cond_2

    .line 997
    invoke-virtual {v3}, Landroid/media/ToneGenerator;->release()V

    goto :goto_1

    .line 996
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    .line 997
    invoke-virtual {v3}, Landroid/media/ToneGenerator;->release()V

    :cond_3
    throw v7

    .line 996
    .end local v3    # "toneGenerator":Landroid/media/ToneGenerator;
    .restart local v1    # "i":I
    .restart local v4    # "toneGenerator":Landroid/media/ToneGenerator;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "toneGenerator":Landroid/media/ToneGenerator;
    .restart local v3    # "toneGenerator":Landroid/media/ToneGenerator;
    goto :goto_3

    .line 993
    .end local v3    # "toneGenerator":Landroid/media/ToneGenerator;
    .restart local v4    # "toneGenerator":Landroid/media/ToneGenerator;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "toneGenerator":Landroid/media/ToneGenerator;
    .restart local v3    # "toneGenerator":Landroid/media/ToneGenerator;
    goto :goto_2

    .end local v3    # "toneGenerator":Landroid/media/ToneGenerator;
    .restart local v4    # "toneGenerator":Landroid/media/ToneGenerator;
    :cond_4
    move-object v3, v4

    .end local v4    # "toneGenerator":Landroid/media/ToneGenerator;
    .restart local v3    # "toneGenerator":Landroid/media/ToneGenerator;
    goto :goto_1
.end method
