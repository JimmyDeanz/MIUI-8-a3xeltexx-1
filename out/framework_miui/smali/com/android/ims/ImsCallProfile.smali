.class public Lcom/android/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final CALL_TYPE_VOICE:I = 0x2

.field public static final CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final CALL_TYPE_VS:I = 0x8

.field public static final CALL_TYPE_VS_RX:I = 0xa

.field public static final CALL_TYPE_VS_TX:I = 0x9

.field public static final CALL_TYPE_VT:I = 0x4

.field public static final CALL_TYPE_VT_NODIR:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x6

.field public static final CALL_TYPE_VT_TX:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALSTRING_NORMAL:I = 0x0

.field public static final DIALSTRING_SS_CONF:I = 0x1

.field public static final DIALSTRING_USSD:I = 0x2

.field public static final EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final EXTRA_CONFERENCE:Ljava/lang/String; = "conference"

.field public static final EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final EXTRA_E_CALL:Ljava/lang/String; = "e_call"

.field public static final EXTRA_OEM_EXTRAS:Ljava/lang/String; = "OemCallExtras"

.field public static final EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final OIR_DEFAULT:I = 0x0

.field public static final OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final SERVICE_TYPE_NONE:I = 0x0

.field public static final SERVICE_TYPE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsCallProfile"


# instance fields
.field public mCallExtras:Landroid/os/Bundle;

.field public mCallType:I

.field public mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

.field public mRestrictCause:I

.field public mServiceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/android/ims/ImsCallProfile$1;

    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 194
    iput v1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 195
    iput v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 197
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 198
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 201
    iput p1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 202
    iput p2, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 204
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 191
    return-void
.end method

.method public static OIRToPresentation(I)I
    .locals 1
    .param p0, "oir"    # I

    .prologue
    const/4 v0, 0x3

    .line 393
    packed-switch p0, :pswitch_data_0

    .line 403
    :goto_0
    :pswitch_0
    return v0

    .line 395
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 397
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getCallTypeFromVideoState(I)I
    .locals 6
    .param p0, "videoState"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 352
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v2

    .line 353
    .local v2, "videoTx":Z
    invoke-static {p0, v4}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v1

    .line 354
    .local v1, "videoRx":Z
    invoke-static {p0, v3}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v0

    .line 355
    .local v0, "isPaused":Z
    if-eqz v0, :cond_1

    .line 356
    const/4 v3, 0x7

    .line 364
    :cond_0
    :goto_0
    return v3

    .line 357
    :cond_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 358
    const/4 v3, 0x5

    goto :goto_0

    .line 359
    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 360
    const/4 v3, 0x6

    goto :goto_0

    .line 361
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_0

    :cond_4
    move v3, v4

    .line 364
    goto :goto_0
.end method

.method public static getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I
    .locals 2
    .param p0, "callProfile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "videostate":I
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    packed-switch v1, :pswitch_data_0

    .line 333
    :pswitch_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCallProfile;->isVideoPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    or-int/lit8 v0, v0, 0x4

    .line 341
    :goto_1
    return v0

    .line 321
    :pswitch_1
    const/4 v0, 0x1

    .line 322
    goto :goto_0

    .line 324
    :pswitch_2
    const/4 v0, 0x2

    .line 325
    goto :goto_0

    .line 327
    :pswitch_3
    const/4 v0, 0x3

    .line 328
    goto :goto_0

    .line 330
    :pswitch_4
    const/4 v0, 0x0

    .line 331
    goto :goto_0

    .line 339
    :cond_0
    and-int/lit8 v0, v0, -0x5

    goto :goto_1

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isVideoStateSet(II)Z
    .locals 1
    .param p0, "videoState"    # I
    .param p1, "videoStateToCheck"    # I

    .prologue
    .line 423
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static presentationToOIR(I)I
    .locals 1
    .param p0, "presentation"    # I

    .prologue
    .line 373
    packed-switch p0, :pswitch_data_0

    .line 383
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 375
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 377
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 379
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 381
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 294
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 295
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 296
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 216
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 228
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getCallExtraInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallExtraInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 240
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public isVideoPaused()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v0, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Lcom/android/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCallExtras(Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 267
    iget-object v0, p1, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 268
    return-void
.end method

.method public updateCallType(Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 262
    iget v0, p1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 263
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 285
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 288
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 289
    return-void
.end method
