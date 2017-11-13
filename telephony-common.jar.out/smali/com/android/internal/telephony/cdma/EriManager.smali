.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field static final ERI_FROM_MODEM:I = 0x2

.field static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mIsEriFileLoaded:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 108
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 109
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 110
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 111
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 12
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    const v11, 0x10400cc

    const v10, 0x10400ca

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 304
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-eqz v5, :cond_2

    .line 305
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 306
    .local v1, "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v1, :cond_2

    .line 308
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 312
    .local v3, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    const/4 v5, 0x7

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 313
    if-ne p1, v9, :cond_1

    .line 314
    sget-object v5, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_ALPHA:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "operatorAlpha":Ljava/lang/String;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEriDisplayInformation - Roaming Indicator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", OperatorAlpha: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v5, "Chameleon"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    const-string v2, "Samsung"

    .line 319
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    invoke-direct {v3, p0, v5, v6, v2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .end local v2    # "operatorAlpha":Ljava/lang/String;
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1
    move-object v4, v3

    .line 505
    .end local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .local v4, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_0
    return-object v4

    .line 329
    .end local v4    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 426
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-nez v5, :cond_4

    .line 428
    const-string v5, "CDMA"

    const-string v6, "ERI File not loaded"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-le p2, v7, :cond_3

    .line 431
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v7, v9, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_1
    move-object v4, v3

    .line 505
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .restart local v4    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    .line 332
    .end local v4    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_0
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v8, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 336
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 339
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400cb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v9, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 343
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 346
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v7, v9, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 350
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 355
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400cd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 359
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 362
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400ce

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 366
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 369
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400cf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 373
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 376
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400d0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 380
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_1

    .line 383
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400d1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 387
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 390
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400d2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 394
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 397
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 401
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 404
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400d4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 408
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 411
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400d5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 415
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 418
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400d6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p1, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 422
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 438
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_3
    packed-switch p2, :pswitch_data_1

    .line 464
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-string v7, "ERI text"

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 440
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v8, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 445
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 448
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v6, 0x10400cb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v9, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 453
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 456
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v7, v9, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 461
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 469
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 470
    .restart local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 471
    .local v0, "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_6

    .line 476
    if-nez v0, :cond_5

    .line 477
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERI defRoamInd "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found in ERI file ...on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v8, v8, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 489
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v6, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 496
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_6
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_1

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 438
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2
    .param p1, "roamingIndicator"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/EriInfo;

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 20

    .prologue
    .line 161
    const/4 v13, 0x0

    .line 162
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    .line 163
    .local v15, "stream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 166
    .local v14, "r":Landroid/content/res/Resources;
    :try_start_0
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: check for alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    new-instance v16, Ljava/io/FileInputStream;

    const-string v2, "/system/etc/eri.xml"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_1
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: find alternate file for one binary"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v15, v16

    .line 179
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 180
    const/4 v2, 0x0

    invoke-interface {v13, v15, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 181
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: opened alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 190
    :goto_1
    if-nez v13, :cond_0

    .line 191
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: open normal file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const v2, 0x1110008

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 196
    :cond_0
    :try_start_3
    const-string v2, "EriFile"

    invoke-static {v13, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "VersionNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "NumberOfEriEntries"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "EriFileType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 204
    const/4 v12, 0x0

    .line 206
    .local v12, "parsedEriEntries":I
    :cond_1
    :goto_2
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 207
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v12, v2, :cond_2

    .line 210
    const-string v2, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Parsing ERI file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " defined, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " parsed!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: eri parsing successful, file loaded"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    instance-of v2, v13, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_3

    .line 244
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 247
    :cond_3
    if-eqz v15, :cond_4

    .line 248
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 254
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    :cond_4
    :goto_3
    return-void

    .line 174
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_5
    new-instance v16, Ljava/io/FileInputStream;

    const v2, 0x1040448

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 182
    :catch_0
    move-exception v9

    .line 183
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_4
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: no alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v13, 0x0

    .line 188
    goto/16 :goto_1

    .line 185
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 186
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: no parser for alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 213
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    :cond_6
    :try_start_6
    const-string v2, "CallPromptId"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 214
    const/4 v2, 0x0

    const-string v18, "Id"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 215
    .local v10, "id":I
    const/4 v2, 0x0

    const-string v18, "CallPromptText"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 216
    .local v17, "text":Ljava/lang/String;
    if-ltz v10, :cond_8

    const/4 v2, 0x2

    if-gt v10, v2, :cond_8

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v17, v2, v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 240
    .end local v10    # "id":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    .end local v17    # "text":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 241
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v2, "CDMA"

    const-string v18, "Got exception while loading ERI file."

    move-object/from16 v0, v18

    invoke-static {v2, v0, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 243
    instance-of v2, v13, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_7

    .line 244
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 247
    :cond_7
    if-eqz v15, :cond_4

    .line 248
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 250
    :catch_3
    move-exception v2

    goto :goto_3

    .line 219
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "id":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "text":Ljava/lang/String;
    :cond_8
    :try_start_9
    const-string v2, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Parsing ERI file: found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " CallPromptId"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 243
    .end local v10    # "id":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    .end local v17    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v2

    instance-of v0, v13, Landroid/content/res/XmlResourceParser;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 244
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 247
    :cond_9
    if-eqz v15, :cond_a

    .line 248
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 252
    :cond_a
    :goto_6
    throw v2

    .line 222
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_b
    const-string v2, "EriInfo"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const/4 v2, 0x0

    const-string v18, "RoamingIndicator"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 225
    .local v3, "roamingIndicator":I
    const/4 v2, 0x0

    const-string v18, "IconIndex"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 226
    .local v4, "iconIndex":I
    const/4 v2, 0x0

    const-string v18, "IconMode"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 227
    .local v5, "iconMode":I
    const/4 v2, 0x0

    const-string v18, "EriText"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "eriText":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "CallPromptId"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 230
    .local v7, "callPromptId":I
    const/4 v2, 0x0

    const-string v18, "AlertId"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 231
    .local v8, "alertId":I
    add-int/lit8 v12, v12, 0x1

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v2, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 250
    .end local v3    # "roamingIndicator":I
    .end local v4    # "iconIndex":I
    .end local v5    # "iconMode":I
    .end local v6    # "eriText":Ljava/lang/String;
    .end local v7    # "callPromptId":I
    .end local v8    # "alertId":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    goto/16 :goto_3

    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    :catch_5
    move-exception v18

    goto :goto_6

    .line 185
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 182
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method


# virtual methods
.method public IsDomesticRoaming(II)Z
    .locals 3
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 536
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->IsInternationalRoaming(II)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 541
    goto :goto_0
.end method

.method public IsInternationalRoaming(II)Z
    .locals 3
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    const/4 v1, 0x0

    .line 522
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 526
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    .line 527
    .local v0, "eriText":Ljava/lang/String;
    const-string v2, "International Roaming"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "International"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Premium International"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "International Services"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "International Voice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Int\'l Voice/Data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    .line 116
    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 513
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 517
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 134
    :goto_0
    return-void

    .line 122
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
