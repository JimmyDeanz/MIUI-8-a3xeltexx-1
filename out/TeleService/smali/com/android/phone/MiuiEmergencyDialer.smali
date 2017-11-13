.class public Lcom/android/phone/MiuiEmergencyDialer;
.super Landroid/app/Activity;
.source "MiuiEmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final DIALER_KEYS:[I


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field mDigits:Landroid/widget/EditText;

.field private mLastNumber:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/MiuiEmergencyDialer;->DIALER_KEYS:[I

    return-void

    :array_0
    .array-data 4
        0x7f0e0032
        0x7f0e0023
        0x7f0e0024
        0x7f0e0025
        0x7f0e0026
        0x7f0e0027
        0x7f0e0028
        0x7f0e0029
        0x7f0e002a
        0x7f0e0035
        0x7f0e0036
        0x7f0e0034
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/android/phone/MiuiEmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiEmergencyDialer$1;-><init>(Lcom/android/phone/MiuiEmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    const v0, 0x7f080232

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MiuiEmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080233

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->performHapticFeedback(I)Z

    .line 323
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 324
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 325
    return-void
.end method

.method private placeCall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 535
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 536
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {p0, v1}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 542
    :cond_0
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 558
    :goto_0
    return-void

    .line 545
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 547
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->finish()V

    .line 550
    invoke-virtual {p0, v4, v4}, Lcom/android/phone/MiuiEmergencyDialer;->overridePendingTransition(II)V

    goto :goto_0

    .line 555
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 556
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiEmergencyDialer;->showDialog(I)V

    goto :goto_0
.end method

.method private setupKeypad()V
    .locals 7

    .prologue
    .line 284
    sget-object v0, Lcom/android/phone/MiuiEmergencyDialer;->DIALER_KEYS:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v2, v0, v1

    .line 288
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 289
    .local v3, "key":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "id":I
    .end local v3    # "key":Landroid/view/View;
    :cond_0
    const v6, 0x7f0e0036

    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 295
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 296
    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 637
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 638
    .local v0, "notEmpty":Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0045

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 642
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 643
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 644
    return-void

    .end local v0    # "notEmpty":Z
    :cond_0
    move v0, v1

    .line 637
    goto :goto_0

    .line 638
    .restart local v0    # "notEmpty":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0044

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MiuiEmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 148
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 124
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->finish()V

    .line 430
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MiuiEmergencyDialer;->overridePendingTransition(II)V

    .line 431
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 425
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 347
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 348
    invoke-direct {p0, v3}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 352
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 353
    invoke-direct {p0, v4}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 357
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 358
    invoke-direct {p0, v5}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 362
    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 363
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 367
    :pswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 368
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 372
    :pswitch_6
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 373
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 377
    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 378
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 382
    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 383
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 387
    :pswitch_9
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 388
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 392
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 393
    invoke-direct {p0, v2}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 397
    :pswitch_b
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 398
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 402
    :pswitch_c
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiEmergencyDialer;->playTone(I)V

    .line 403
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 407
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->performHapticFeedback(I)Z

    .line 408
    invoke-direct {p0}, Lcom/android/phone/MiuiEmergencyDialer;->placeCall()V

    goto :goto_0

    .line 412
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->onBackPressed()V

    goto :goto_0

    .line 415
    :pswitch_f
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 419
    :pswitch_10
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x7f0e0023
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x8

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const-string v8, "statusbar"

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    iput-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 155
    const-string v8, "accessibility"

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    iput-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 159
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x4080000

    or-int/2addr v8, v9

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x300

    invoke-virtual {v8, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 170
    const v8, 0x7f04001f

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->setContentView(I)V

    .line 172
    const v8, 0x7f0e003e

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 173
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 174
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 176
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 177
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 179
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelected(Z)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->maybeAddNumberFormatting()V

    .line 184
    const v8, 0x7f0e0032

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 185
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/phone/MiuiEmergencyDialer;->setupKeypad()V

    .line 189
    :cond_1
    const v8, 0x7f0e002e

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDelete:Landroid/view/View;

    .line 190
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    const v8, 0x7f0e002d

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v8, 0x7f0e002c

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDialButton:Landroid/view/View;

    .line 197
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 198
    .local v6, "res":Landroid/content/res/Resources;
    const v8, 0x7f0d0008

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 199
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :goto_0
    if-eqz p1, :cond_2

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 208
    :cond_2
    invoke-static {p0}, Lcom/android/phone/ImageUtils;->getEmergencyBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 210
    const v8, 0x7f0e0050

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 215
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_4

    const-string v8, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 216
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v8, p0}, Lmiui/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "number":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 218
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .end local v5    # "number":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v9

    .line 225
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_5

    .line 227
    :try_start_1
    new-instance v8, Landroid/media/ToneGenerator;

    const/16 v10, 0x8

    const/16 v11, 0x50

    invoke-direct {v8, v10, v11}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :cond_5
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/android/phone/MiuiEmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    return-void

    .line 201
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "data":Landroid/net/Uri;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_6
    iget-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "data":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v8, "EmergencyDialer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught while creating local tone generator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 233
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-nez p1, :cond_0

    .line 611
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08022f

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiEmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiEmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 619
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 621
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 248
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    return-void

    .line 248
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 437
    iget-object v6, p0, Lcom/android/phone/MiuiEmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/MiuiEmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 460
    :cond_0
    :goto_0
    return v8

    .line 443
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 446
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 447
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v2, v6, v7

    .line 448
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 449
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 450
    .local v0, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 451
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 452
    .local v5, "y":I
    if-le v4, v1, :cond_1

    if-ge v4, v2, :cond_1

    if-le v5, v3, :cond_1

    if-ge v5, v0, :cond_1

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 455
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 340
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 333
    :pswitch_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/phone/MiuiEmergencyDialer;->placeCall()V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x7f0e003e
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 303
    packed-switch p1, :pswitch_data_0

    .line 318
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->finish()V

    .line 315
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MiuiEmergencyDialer;->placeCall()V

    goto :goto_1

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 468
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 481
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 470
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 477
    :sswitch_1
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiEmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 468
    :sswitch_data_0
    .sparse-switch
        0x7f0e002e -> :sswitch_0
        0x7f0e0036 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 523
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 528
    :cond_0
    monitor-exit v1

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 626
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 627
    if-nez p1, :cond_0

    move-object v0, p2

    .line 628
    check-cast v0, Landroid/app/AlertDialog;

    .line 629
    .local v0, "alert":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiEmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 631
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 254
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 255
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 489
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDTMFToneEnabled:Z

    .line 494
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 497
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 511
    invoke-direct {p0}, Lcom/android/phone/MiuiEmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 512
    return-void

    .line 489
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "EmergencyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 504
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 129
    return-void
.end method

.method playTone(I)V
    .locals 6
    .param p1, "tone"    # I

    .prologue
    .line 571
    iget-boolean v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiEmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 581
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 582
    .local v1, "ringerMode":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 587
    iget-object v3, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 588
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    .line 589
    const-string v2, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    monitor-exit v3

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 594
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v2, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 595
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
