.class public final Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPowerRequest"
.end annotation


# static fields
.field public static final POLICY_BRIGHT:I = 0x3

.field public static final POLICY_DIM:I = 0x2

.field public static final POLICY_DOZE:I = 0x1

.field public static final POLICY_OFF:I


# instance fields
.field public autoBrightnessForEbookOnly:Z

.field public autoBrightnessLowerLimit:I

.field public autoBrightnessUpperLimit:I

.field public blockScreenOn:Z

.field public boostScreenBrightness:Z

.field public brightnessSetByUser:Z

.field public coverClosed:Z

.field public dozeScreenBrightness:I

.field public dozeScreenState:I

.field public forceDimBrightness:Z

.field public forceLcdBacklightOffEnabled:Z

.field public hasRetailModeApp:Z

.field public isAlpmMode:Z

.field public isLidClosed:Z

.field public isOutdoorMode:Z

.field public lastGoToSleepReason:I

.field public lastMultiScreenState:I

.field public lastUpdateCoverStateTime:J

.field public lowPowerMode:Z

.field public mFTAMode:Z

.field public maxBrightness:I

.field public minBrightness:I

.field public policy:I

.field public policySub:I

.field public screenAutoBrightnessAdjustment:F

.field public screenBrightness:I

.field public screenBrightnessScaleFactor:F

.field public temporaryScreenBrightnessSettingOverride:I

.field public useAutoBrightness:Z

.field public useClearViewBrightnessMode:Z

.field public useColorWeaknessMode:Z

.field public useProximitySensor:Z

.field public useTemporaryScreenBrightnessSettingOverride:Z

.field public wakeUpEvenThoughProximityPositive:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 280
    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 281
    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    .line 282
    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    .line 286
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 290
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    .line 293
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 296
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    .line 300
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 301
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    .line 305
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hasRetailModeApp:Z

    .line 308
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    .line 310
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 314
    iput v3, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 315
    iput v3, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policySub:I

    .line 316
    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastMultiScreenState:I

    .line 317
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 318
    const/16 v0, 0xff

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 320
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 321
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    .line 322
    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 323
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 280
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 281
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    .line 282
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    .line 286
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 290
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    .line 293
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 296
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    .line 300
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 301
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    .line 305
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hasRetailModeApp:Z

    .line 308
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    .line 310
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 327
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 328
    return-void
.end method

.method public static policyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "policy"    # I

    .prologue
    .line 557
    packed-switch p0, :pswitch_data_0

    .line 567
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 559
    :pswitch_0
    const-string v0, "OFF"

    goto :goto_0

    .line 561
    :pswitch_1
    const-string v0, "DOZE"

    goto :goto_0

    .line 563
    :pswitch_2
    const-string v0, "DIM"

    goto :goto_0

    .line 565
    :pswitch_3
    const-string v0, "BRIGHT"

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    .line 335
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 336
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policySub:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policySub:I

    .line 337
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastMultiScreenState:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastMultiScreenState:I

    .line 338
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 339
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 340
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 341
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    .line 342
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 343
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    .line 344
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 345
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 346
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 347
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 350
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 351
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 352
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    .line 353
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    .line 357
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    .line 360
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 364
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    .line 368
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 369
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    .line 372
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 375
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hasRetailModeApp:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hasRetailModeApp:Z

    .line 379
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 383
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    .line 387
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTemporaryScreenBrightnessSettingOverride:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTemporaryScreenBrightnessSettingOverride:Z

    .line 388
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    .line 389
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    .line 392
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    .line 393
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    .line 396
    iget-wide v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    iput-wide v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    .line 398
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    .line 400
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 402
    return-void
.end method

.method public equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 4
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    .line 411
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policySub:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policySub:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastMultiScreenState:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastMultiScreenState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTemporaryScreenBrightnessSettingOverride:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTemporaryScreenBrightnessSettingOverride:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    iget-wide v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hasRetailModeApp:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hasRetailModeApp:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 406
    instance-of v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public isBrightOrDim()Z
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", policySub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policySub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastMultiScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastMultiScreenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brightnessSetByUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boostScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoBrightnessLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoBrightnessUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoBrightnessForEbookOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceLcdBacklightOffEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAlpmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenBrightnessScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastGoToSleepReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wakeUpEvenThoughProximityPositive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FTAMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTemporaryScreenBrightnessSettingOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temporaryScreenBrightnessSettingOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceDimBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useClearViewBrightnessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useColorWeaknessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdateCoverStateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasRetailModeApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hasRetailModeApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLidClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOutdoorMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
