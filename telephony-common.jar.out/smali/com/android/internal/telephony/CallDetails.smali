.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0x0

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VS_RX:I = 0x2

.field public static final CALL_TYPE_VS_TX:I = 0x1

.field public static final CALL_TYPE_VT:I = 0x3


# instance fields
.field public call_domain:I

.field public call_isMpty:Z

.field public call_type:I

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 116
    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 117
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 119
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 123
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 124
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 125
    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Call$CallType;)V
    .locals 5
    .param p1, "callType"    # Lcom/android/internal/telephony/Call$CallType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_0

    .line 133
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 134
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 187
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_1

    .line 136
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 137
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_2

    .line 139
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 140
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 141
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_3

    .line 142
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 143
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_4

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 147
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qcif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_5

    .line 150
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 151
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qvga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_6

    .line 154
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 155
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 156
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_7

    .line 157
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 158
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 159
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_8

    .line 160
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 161
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_9

    .line 164
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 165
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd720"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_a

    .line 168
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 169
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "cif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 171
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_b

    .line 172
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 173
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "cif_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 175
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_c

    .line 176
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 177
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qvga_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 179
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_d

    .line 180
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 181
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd720_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 184
    :cond_d
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 185
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 192
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 193
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 194
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 197
    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 198
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public static callTypeToVideoState(I)I
    .locals 2
    .param p0, "callType"    # I

    .prologue
    .line 417
    const/4 v0, 0x2

    .line 419
    .local v0, "videoState":I
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 420
    const/4 v0, 0x5

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 422
    const/4 v0, 0x6

    goto :goto_0

    .line 423
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 424
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 222
    .local v1, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 223
    const/4 v4, 0x0

    .line 235
    :goto_0
    return-object v4

    .line 227
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 229
    if-eqz v1, :cond_1

    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v4, v1

    .line 235
    goto :goto_0
.end method

.method public static getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .param p0, "extras"    # [Ljava/lang/String;
    .param p1, "needDecode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 261
    :cond_0
    return-object v4

    .line 249
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 250
    .local v5, "s":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 251
    .local v6, "sep_index":I
    if-gez v6, :cond_2

    .line 249
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "value":Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_3

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 256
    :cond_4
    const-string v7, ""

    goto :goto_2
.end method

.method public static videoStateToCallType(I)I
    .locals 3
    .param p0, "videoState"    # I

    .prologue
    .line 399
    invoke-static {p0}, Lcom/android/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v1

    .line 400
    .local v1, "imsCallType":I
    const/4 v0, 0x0

    .line 402
    .local v0, "callType":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 403
    const/4 v0, 0x1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 405
    const/4 v0, 0x2

    goto :goto_0

    .line 406
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 407
    const/4 v0, 0x3

    goto :goto_0

    .line 408
    :cond_3
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 410
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getBundleFromExtras()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 270
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "+"

    invoke-static {v4, v5}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public getCsvFromExtras()Ljava/lang/String;
    .locals 7

    .prologue
    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const-string v4, ""

    .line 296
    :goto_0
    return-object v4

    .line 291
    :cond_0
    const-string v0, "+"

    .line 292
    .local v0, "ALLOW_CHARS":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "+"

    invoke-static {v4, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 296
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getExtraStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isChanged(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 3
    .param p1, "details"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "changed":Z
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    .line 384
    :cond_0
    const/4 v1, 0x0

    .line 395
    :goto_0
    return v1

    .line 387
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    if-eq v1, v2, :cond_3

    .line 388
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 392
    const/4 v0, 0x1

    :cond_4
    move v1, v0

    .line 395
    goto :goto_0
.end method

.method public setExtraValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 205
    return-void
.end method

.method public setExtrasFromCsv(Ljava/lang/String;)V
    .locals 2
    .param p1, "newExtras"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 301
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public setIsMpty(Z)V
    .locals 0
    .param p1, "isMpty"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    .line 305
    return-void
.end method

.method public toCallType()Lcom/android/internal/telephony/Call$CallType;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v3, "participants"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 311
    .local v0, "isConferenceCall":Z
    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v3, "resolution"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v5, :cond_e

    .line 314
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_1

    .line 315
    if-eqz v0, :cond_0

    .line 316
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    .line 358
    :goto_0
    return-object v2

    .line 318
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 320
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_b

    .line 321
    if-eqz v0, :cond_2

    .line 322
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 323
    :cond_2
    const-string v2, "qcif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 325
    :cond_3
    const-string v2, "qvga"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 327
    :cond_4
    const-string v2, "hd_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 328
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 329
    :cond_5
    const-string v2, "hd720"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 330
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 331
    :cond_6
    const-string v2, "cif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 332
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 333
    :cond_7
    const-string v2, "cif_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 334
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 335
    :cond_8
    const-string v2, "qvga_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 336
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 337
    :cond_9
    const-string v2, "hd720_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 338
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 340
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 342
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v4, :cond_c

    .line 343
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 344
    :cond_c
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v5, :cond_d

    .line 345
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 347
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 349
    :cond_e
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v4, :cond_11

    .line 350
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_f

    .line 351
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 352
    :cond_f
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_10

    .line 353
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 355
    :cond_10
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0

    .line 358
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extras : <MASKED>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMpty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
