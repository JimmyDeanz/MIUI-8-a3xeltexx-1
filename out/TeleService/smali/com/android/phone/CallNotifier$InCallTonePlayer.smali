.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .param p2, "toneId"    # I

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 675
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 676
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 678
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 682
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 684
    const/4 v8, 0x0

    .line 687
    .local v8, "toneType":I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 689
    .local v3, "phoneType":I
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_0

    .line 767
    :pswitch_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 691
    :pswitch_1
    const/16 v8, 0x16

    .line 692
    const/16 v9, 0x50

    .line 694
    .local v9, "toneVolume":I
    const v7, 0x7fffffeb

    .line 775
    .local v7, "toneLengthMillis":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 776
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x6

    .line 781
    .local v5, "stream":I
    :cond_0
    :goto_1
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v5    # "stream":I
    .local v6, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_2
    const/4 v1, 0x1

    .line 804
    .local v1, "needToStopTone":Z
    const/4 v2, 0x0

    .line 806
    .local v2, "okToPlayTone":Z
    if-eqz v6, :cond_4

    .line 807
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 808
    .local v4, "ringerMode":I
    if-ne v3, v14, :cond_12

    .line 809
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_b

    .line 810
    if-eqz v4, :cond_2

    if-eq v4, v13, :cond_2

    .line 812
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$500()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 813
    :cond_1
    const/4 v2, 0x1

    .line 814
    const/4 v1, 0x0

    .line 841
    :cond_2
    :goto_3
    monitor-enter p0

    .line 842
    if-eqz v2, :cond_3

    :try_start_1
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_3

    .line 843
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 844
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 851
    :goto_4
    if-eqz v1, :cond_3

    .line 852
    :try_start_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 856
    :cond_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 857
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 858
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 874
    .end local v4    # "ringerMode":I
    :cond_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_5

    .line 875
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)V

    .line 877
    :cond_5
    return-void

    .line 697
    .end local v1    # "needToStopTone":Z
    .end local v2    # "okToPlayTone":Z
    .end local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_2
    if-ne v3, v14, :cond_6

    .line 698
    const/16 v8, 0x60

    .line 699
    const/16 v9, 0x32

    .line 700
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x3e8

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 701
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_6
    if-eq v3, v13, :cond_7

    const/4 v10, 0x3

    if-eq v3, v10, :cond_7

    const/4 v10, 0x5

    if-eq v3, v10, :cond_7

    const/4 v10, 0x4

    if-ne v3, v10, :cond_8

    .line 705
    :cond_7
    const/16 v8, 0x11

    .line 706
    const/16 v9, 0x50

    .line 707
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 709
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_8
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 713
    :pswitch_3
    const/16 v8, 0x12

    .line 714
    const/16 v9, 0x50

    .line 715
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 716
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 719
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_4
    const/16 v8, 0x1b

    .line 720
    const/16 v9, 0x50

    .line 721
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xc8

    .line 722
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 724
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    if-ne v10, v13, :cond_9

    .line 726
    const/16 v8, 0x5d

    .line 727
    const/16 v9, 0x50

    .line 728
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x2ee

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 730
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_9
    const/16 v8, 0x1b

    .line 731
    const/16 v9, 0x50

    .line 732
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xc8

    .line 734
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 736
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_6
    const/16 v8, 0x56

    .line 737
    const/16 v9, 0x50

    .line 738
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 739
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 741
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_7
    const/16 v8, 0x26

    .line 742
    const/16 v9, 0x50

    .line 743
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 744
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 746
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_8
    const/16 v8, 0x25

    .line 747
    const/16 v9, 0x32

    .line 748
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1f4

    .line 749
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 752
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_9
    const/16 v8, 0x5f

    .line 753
    const/16 v9, 0x32

    .line 754
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x177

    .line 755
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 757
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_a
    const/16 v8, 0x57

    .line 758
    const/16 v9, 0x32

    .line 759
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 760
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 762
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_b
    const/16 v8, 0x15

    .line 763
    const/16 v9, 0x50

    .line 764
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 765
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 779
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "stream":I
    goto/16 :goto_1

    .line 783
    .end local v5    # "stream":I
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v6, 0x0

    .restart local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 816
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "needToStopTone":Z
    .restart local v2    # "okToPlayTone":Z
    .restart local v4    # "ringerMode":I
    :cond_b
    const/16 v10, 0x60

    if-eq v8, v10, :cond_c

    const/16 v10, 0x26

    if-eq v8, v10, :cond_c

    const/16 v10, 0x27

    if-eq v8, v10, :cond_c

    const/16 v10, 0x25

    if-eq v8, v10, :cond_c

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_e

    .line 821
    :cond_c
    if-eqz v4, :cond_2

    .line 822
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$500()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 823
    :cond_d
    const/4 v2, 0x1

    .line 824
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 826
    :cond_e
    const/16 v10, 0x57

    if-eq v8, v10, :cond_f

    const/16 v10, 0x56

    if-ne v8, v10, :cond_11

    .line 828
    :cond_f
    if-eqz v4, :cond_2

    if-eq v4, v13, :cond_2

    .line 830
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$500()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 831
    :cond_10
    const/4 v2, 0x1

    .line 832
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 835
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 838
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 847
    :catch_1
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 858
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method
