.class public Lcom/android/services/telephony/DisconnectCauseUtil;
.super Ljava/lang/Object;
.source "DisconnectCauseUtil.java"


# direct methods
.method public static toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;
    .locals 1
    .param p0, "telephonyDisconnectCause"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    return-object v0
.end method

.method public static toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;
    .locals 7
    .param p0, "telephonyDisconnectCause"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    .line 53
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-static {p0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCauseCode(I)I

    move-result v1

    invoke-static {v6, p0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCauseLabel(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v6, p0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCauseDescription(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectReason(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCauseTone(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static toTelecomDisconnectCauseCode(I)I
    .locals 4
    .param p0, "telephonyDisconnectCause"    # I

    .prologue
    const/4 v0, 0x0

    .line 67
    packed-switch p0, :pswitch_data_0

    .line 137
    :pswitch_0
    const-string v1, "DisconnectCauseUtil.toTelecomDisconnectCauseCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized Telephony DisconnectCause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :goto_0
    :pswitch_1
    return v0

    .line 69
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 72
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 75
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 78
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 81
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 84
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 95
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 124
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_a
    const/16 v0, 0x9

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private static toTelecomDisconnectCauseDescription(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telephonyDisconnectCause"    # I

    .prologue
    const v2, 0x7f08022e

    .line 224
    if-nez p0, :cond_0

    .line 225
    const-string v1, ""

    .line 315
    :goto_0
    return-object v1

    .line 228
    :cond_0
    const/4 v0, 0x0

    .line 229
    .local v0, "resourceId":Ljava/lang/Integer;
    sparse-switch p1, :sswitch_data_0

    .line 315
    :goto_1
    if-nez v0, :cond_5

    const-string v1, ""

    goto :goto_0

    .line 231
    :sswitch_0
    const v1, 0x7f080079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    goto :goto_1

    .line 235
    :sswitch_1
    const v1, 0x7f08028b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 236
    goto :goto_1

    .line 239
    :sswitch_2
    const v1, 0x7f080075

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 240
    goto :goto_1

    .line 243
    :sswitch_3
    const v1, 0x7f08007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 244
    goto :goto_1

    .line 247
    :sswitch_4
    const v1, 0x7f08007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 248
    goto :goto_1

    .line 251
    :sswitch_5
    const v1, 0x7f08007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 252
    goto :goto_1

    .line 259
    :sswitch_6
    const v1, 0x7f080225

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 260
    goto :goto_1

    .line 268
    :sswitch_7
    invoke-static {p0}, Lcom/android/phone/ImsUtil;->isWfcModeWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 270
    :cond_1
    invoke-static {p0}, Lcom/android/phone/ImsUtil;->isWfcEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    const v1, 0x7f080220

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_2
    const v1, 0x7f08021f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 275
    goto :goto_1

    .line 280
    :sswitch_8
    const v1, 0x7f080221

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 281
    goto :goto_1

    .line 285
    :sswitch_9
    invoke-static {p0}, Lcom/android/phone/ImsUtil;->isWfcModeWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 287
    :cond_3
    invoke-static {p0}, Lcom/android/phone/ImsUtil;->isWfcEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    const v1, 0x7f080223

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 290
    :cond_4
    const v1, 0x7f080222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 292
    goto/16 :goto_1

    .line 298
    :sswitch_a
    const v1, 0x7f080224

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 299
    goto/16 :goto_1

    .line 304
    :sswitch_b
    const v1, 0x7f0800ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 305
    goto/16 :goto_1

    .line 315
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_7
        0x12 -> :sswitch_9
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_5
        0x18 -> :sswitch_4
        0x25 -> :sswitch_8
        0x26 -> :sswitch_a
        0x28 -> :sswitch_b
        0x2b -> :sswitch_6
        0x31 -> :sswitch_1
    .end sparse-switch
.end method

.method private static toTelecomDisconnectCauseLabel(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telephonyDisconnectCause"    # I

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 150
    const-string v1, ""

    .line 216
    :goto_0
    return-object v1

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "resourceId":Ljava/lang/Integer;
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_1
    :pswitch_0
    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 156
    :pswitch_1
    const v1, 0x7f080068

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 157
    goto :goto_1

    .line 160
    :pswitch_2
    const v1, 0x7f080069

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    goto :goto_1

    .line 164
    :pswitch_3
    const v1, 0x7f08006a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 165
    goto :goto_1

    .line 168
    :pswitch_4
    const v1, 0x7f08006b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 169
    goto :goto_1

    .line 172
    :pswitch_5
    const v1, 0x7f08006c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    goto :goto_1

    .line 176
    :pswitch_6
    const v1, 0x7f08006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 177
    goto :goto_1

    .line 180
    :pswitch_7
    const v1, 0x7f08006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    goto :goto_1

    .line 184
    :pswitch_8
    const v1, 0x7f08006e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 185
    goto :goto_1

    .line 189
    :pswitch_9
    const v1, 0x7f080070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 190
    goto :goto_1

    .line 193
    :pswitch_a
    const v1, 0x7f080071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 194
    goto :goto_1

    .line 197
    :pswitch_b
    const v1, 0x7f080072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 198
    goto :goto_1

    .line 201
    :pswitch_c
    const v1, 0x7f080073

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 202
    goto :goto_1

    .line 205
    :pswitch_d
    const v1, 0x7f080074

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    goto :goto_1

    .line 210
    :pswitch_e
    const v1, 0x7f08007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 211
    goto :goto_1

    .line 216
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_e
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private static toTelecomDisconnectCauseTone(I)I
    .locals 1
    .param p0, "telephonyDisconnectCause"    # I

    .prologue
    .line 331
    sparse-switch p0, :sswitch_data_0

    .line 359
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 333
    :sswitch_0
    const/16 v0, 0x11

    goto :goto_0

    .line 336
    :sswitch_1
    const/16 v0, 0x12

    goto :goto_0

    .line 339
    :sswitch_2
    const/16 v0, 0x26

    goto :goto_0

    .line 342
    :sswitch_3
    const/16 v0, 0x25

    goto :goto_0

    .line 346
    :sswitch_4
    const/16 v0, 0x5f

    goto :goto_0

    .line 349
    :sswitch_5
    const/16 v0, 0x15

    goto :goto_0

    .line 354
    :sswitch_6
    const/16 v0, 0x1b

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x12 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1b -> :sswitch_4
        0x1c -> :sswitch_3
        0x1d -> :sswitch_2
        0x24 -> :sswitch_6
    .end sparse-switch
.end method

.method private static toTelecomDisconnectReason(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "telephonyDisconnectCause"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-static {p0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "causeAsString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 323
    .end local v0    # "causeAsString":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "causeAsString":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
