.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static final V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field public final bearer:I

.field public final bearerBitmask:I

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public final id:I

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final modemCognitive:Z

.field public final mtu:I

.field public final mvnoMatchData:Ljava/lang/String;

.field public final mvnoType:Ljava/lang/String;

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public final types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "bearerBitmask"    # I
    .param p19, "profileId"    # I
    .param p20, "modemCognitive"    # Z
    .param p21, "maxConns"    # I
    .param p22, "waitTime"    # I
    .param p23, "maxConnsTime"    # I
    .param p24, "mtu"    # I
    .param p25, "mvnoType"    # Ljava/lang/String;
    .param p26, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 110
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 113
    if-nez p4, :cond_0

    const-string v2, "Emergency"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const-string p4, ""

    .line 117
    :cond_0
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 119
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 120
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 121
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 122
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 123
    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 124
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 125
    move/from16 v0, p12

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 126
    move-object/from16 v0, p13

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p13

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, p13, v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 132
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 133
    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 134
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int v2, v2, p18

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    .line 135
    move/from16 v0, p19

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 136
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 137
    move/from16 v0, p21

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 138
    move/from16 v0, p22

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 139
    move/from16 v0, p23

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 140
    move/from16 v0, p24

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 141
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static arrayFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v6, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    :cond_0
    return-object v6

    .line 271
    :cond_1
    const-string v7, "\\s*;\\s*"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "apnStrings":[Ljava/lang/String;
    move-object v3, v2

    .local v3, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    .line 273
    .local v1, "apnString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 274
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_2

    .line 275
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 31
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 175
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 252
    :goto_0
    return-object v1

    .line 179
    :cond_0
    const-string v1, "^\\[ApnSettingV3\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const/16 v30, 0x3

    .line 181
    .local v30, "version":I
    const-string v1, "^\\[ApnSettingV3\\]\\s*"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 189
    :goto_1
    const-string v1, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 190
    .local v28, "a":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    .line 191
    const/4 v1, 0x0

    goto :goto_0

    .line 182
    .end local v28    # "a":[Ljava/lang/String;
    .end local v30    # "version":I
    :cond_1
    const-string v1, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const/16 v30, 0x2

    .line 184
    .restart local v30    # "version":I
    const-string v1, "^\\[ApnSettingV2\\]\\s*"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 186
    .end local v30    # "version":I
    :cond_2
    const/16 v30, 0x1

    .restart local v30    # "version":I
    goto :goto_1

    .line 196
    .restart local v28    # "a":[Ljava/lang/String;
    :cond_3
    const/16 v1, 0xc

    :try_start_0
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 204
    .local v13, "authType":I
    :goto_2
    const/16 v19, 0x0

    .line 205
    .local v19, "bearerBitmask":I
    const/16 v20, 0x0

    .line 206
    .local v20, "profileId":I
    const/16 v21, 0x0

    .line 207
    .local v21, "modemCognitive":Z
    const/16 v22, 0x0

    .line 208
    .local v22, "maxConns":I
    const/16 v23, 0x0

    .line 209
    .local v23, "waitTime":I
    const/16 v24, 0x0

    .line 210
    .local v24, "maxConnsTime":I
    const/16 v25, 0x0

    .line 211
    .local v25, "mtu":I
    const-string v26, ""

    .line 212
    .local v26, "mvnoType":Ljava/lang/String;
    const-string v27, ""

    .line 213
    .local v27, "mvnoMatchData":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, v30

    if-ne v0, v1, :cond_5

    .line 214
    move-object/from16 v0, v28

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    new-array v14, v1, [Ljava/lang/String;

    .line 215
    .local v14, "typeArray":[Ljava/lang/String;
    const/16 v1, 0xd

    const/4 v2, 0x0

    move-object/from16 v0, v28

    array-length v3, v0

    add-int/lit8 v3, v3, -0xd

    move-object/from16 v0, v28

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    const-string v15, "IP"

    .line 217
    .local v15, "protocol":Ljava/lang/String;
    const-string v16, "IP"

    .line 218
    .local v16, "roamingProtocol":Ljava/lang/String;
    const/16 v17, 0x1

    .line 252
    .local v17, "carrierEnabled":Z
    :cond_4
    :goto_3
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    aget-object v4, v28, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v28, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v28, v4

    const/4 v5, 0x1

    aget-object v5, v28, v5

    const/4 v6, 0x2

    aget-object v6, v28, v6

    const/4 v7, 0x3

    aget-object v7, v28, v7

    const/4 v8, 0x7

    aget-object v8, v28, v8

    const/16 v9, 0x8

    aget-object v9, v28, v9

    const/16 v10, 0x9

    aget-object v10, v28, v10

    const/4 v11, 0x4

    aget-object v11, v28, v11

    const/4 v12, 0x5

    aget-object v12, v28, v12

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    .end local v13    # "authType":I
    .end local v14    # "typeArray":[Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v17    # "carrierEnabled":Z
    .end local v19    # "bearerBitmask":I
    .end local v20    # "profileId":I
    .end local v21    # "modemCognitive":Z
    .end local v22    # "maxConns":I
    .end local v23    # "waitTime":I
    .end local v24    # "maxConnsTime":I
    .end local v25    # "mtu":I
    .end local v26    # "mvnoType":Ljava/lang/String;
    .end local v27    # "mvnoMatchData":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 198
    .local v29, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    .restart local v13    # "authType":I
    goto :goto_2

    .line 220
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "bearerBitmask":I
    .restart local v20    # "profileId":I
    .restart local v21    # "modemCognitive":Z
    .restart local v22    # "maxConns":I
    .restart local v23    # "waitTime":I
    .restart local v24    # "maxConnsTime":I
    .restart local v25    # "mtu":I
    .restart local v26    # "mvnoType":Ljava/lang/String;
    .restart local v27    # "mvnoMatchData":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_6

    .line 221
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 223
    :cond_6
    const/16 v1, 0xd

    aget-object v1, v28, v1

    const-string v2, "\\s*\\|\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 224
    .restart local v14    # "typeArray":[Ljava/lang/String;
    const/16 v1, 0xe

    aget-object v15, v28, v1

    .line 225
    .restart local v15    # "protocol":Ljava/lang/String;
    const/16 v1, 0xf

    aget-object v16, v28, v1

    .line 226
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    const/16 v1, 0x10

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 228
    .restart local v17    # "carrierEnabled":Z
    const/16 v1, 0x11

    aget-object v1, v28, v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v19

    .line 230
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x16

    if-le v1, v2, :cond_7

    .line 231
    const/16 v1, 0x13

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 233
    const/16 v1, 0x12

    :try_start_1
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 234
    const/16 v1, 0x14

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 235
    const/16 v1, 0x15

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 236
    const/16 v1, 0x16

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v24

    .line 240
    :cond_7
    :goto_4
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x17

    if-le v1, v2, :cond_8

    .line 242
    const/16 v1, 0x17

    :try_start_2
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v25

    .line 246
    :cond_8
    :goto_5
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 247
    const/16 v1, 0x18

    aget-object v26, v28, v1

    .line 248
    const/16 v1, 0x19

    aget-object v27, v28, v1

    goto/16 :goto_3

    .line 243
    :catch_1
    move-exception v1

    goto :goto_5

    .line 237
    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "imsiDB"    # Ljava/lang/String;
    .param p1, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 382
    .local v3, "len":I
    const/4 v2, 0x0

    .line 384
    .local v2, "idxCompare":I
    if-gtz v3, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v4

    .line 385
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_0

    .line 387
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 388
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 389
    .local v0, "c":C
    const/16 v5, 0x78

    if-eq v0, v5, :cond_2

    const/16 v5, 0x58

    if-eq v0, v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 387
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "c":C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isEnterpriseType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v0, "ent1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ent2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "mvnoType"    # Ljava/lang/String;
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 399
    const-string v5, "spn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    :cond_0
    :goto_0
    return v3

    .line 404
    :cond_1
    const-string v5, "imsi"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {p2, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 417
    goto :goto_0

    .line 409
    :cond_3
    const-string v5, "gid"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 412
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v2, :cond_2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 360
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-nez v5, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v4

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 364
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isEnterpriseType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "hipri"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 368
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 362
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public defaultInt(I)I
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 493
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "num":I
    :cond_0
    return p1
.end method

.method public defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 489
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 436
    instance-of v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v5, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v4

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "ret":Z
    move-object v0, p1

    .line 446
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 450
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 452
    .local v2, "areUsersEqual":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 454
    .local v1, "arePasswordsEqual":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equalsExceptID(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 460
    instance-of v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v5, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    .line 461
    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 462
    .local v2, "obj":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toStringExceptID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toStringExceptID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 463
    .local v3, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 464
    .local v1, "areUsersEqual":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 466
    .local v0, "arePasswordsEqual":Z
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equalsType(Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, "count":I
    const/4 v4, 0x0

    .line 472
    .local v4, "result":Z
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 473
    .local v5, "t":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 474
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 475
    const/4 v4, 0x1

    .line 472
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    .end local v5    # "t":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .end local v4    # "result":Z
    :goto_1
    return v4

    .restart local v4    # "result":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasChanged(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 483
    instance-of v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 484
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 485
    .local v0, "obj":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-eq v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasMvnoParams()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV3] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 298
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toStringExceptID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV3] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 332
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 338
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 342
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
