.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mEnableMmsServerTime:Z

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 78
    sput-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 83
    sput-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 88
    sput-boolean v1, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "pduDataStream"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 68
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 73
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 109
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 110
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 111
    .local v0, "cscFeature":Lcom/sec/android/app/CscFeature;
    iput-boolean v3, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 112
    const-string v2, "CscFeature_Message_DisplayMmsTimeAs"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "displayMmsTimeAs":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/google/android/mms/pdu/PduParser;->isServerTime(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    .line 114
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 3
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 68
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 73
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 116
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 117
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 118
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 119
    .local v0, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v2, "CscFeature_Message_DisplayMmsTimeAs"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "displayMmsTimeAs":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/mms/pdu/PduParser;->isServerTime(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    .line 121
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 40
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 2040
    if-nez p0, :cond_0

    .line 2041
    const/16 v37, 0x0

    .line 2247
    :goto_0
    return v37

    .line 2045
    :cond_0
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 2048
    .local v8, "messageType":I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 2049
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    .line 2051
    const/16 v37, 0x0

    goto :goto_0

    .line 2055
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2244
    const/16 v37, 0x0

    goto :goto_0

    .line 2058
    :pswitch_0
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 2059
    .local v34, "srContentType":[B
    if-nez v34, :cond_2

    .line 2060
    const/16 v37, 0x0

    goto :goto_0

    .line 2064
    :cond_2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v35

    .line 2065
    .local v35, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v35, :cond_3

    .line 2066
    const/16 v37, 0x0

    goto :goto_0

    .line 2070
    :cond_3
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 2071
    .local v36, "srTransactionId":[B
    if-nez v36, :cond_15

    .line 2072
    const/16 v37, 0x0

    goto :goto_0

    .line 2078
    .end local v34    # "srContentType":[B
    .end local v35    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v36    # "srTransactionId":[B
    :pswitch_1
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 2079
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_4

    .line 2080
    const/16 v37, 0x0

    goto :goto_0

    .line 2084
    :cond_4
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 2085
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_15

    .line 2086
    const/16 v37, 0x0

    goto :goto_0

    .line 2092
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 2093
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_5

    .line 2094
    const/16 v37, 0x0

    goto :goto_0

    .line 2098
    :cond_5
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v12

    .line 2099
    .local v12, "niExpiry":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v12

    if-nez v37, :cond_6

    .line 2100
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2104
    :cond_6
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v11

    .line 2105
    .local v11, "niMessageClass":[B
    if-nez v11, :cond_7

    .line 2106
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2110
    :cond_7
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 2111
    .local v14, "niMessageSize":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v14

    if-nez v37, :cond_8

    .line 2112
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2116
    :cond_8
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 2117
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_15

    .line 2118
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2124
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niMessageClass":[B
    .end local v12    # "niExpiry":J
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 2125
    .local v17, "nriStatus":I
    if-nez v17, :cond_9

    .line 2126
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2130
    :cond_9
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 2131
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_15

    .line 2132
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2138
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 2139
    .local v19, "rcContentType":[B
    if-nez v19, :cond_a

    .line 2140
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2144
    :cond_a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 2145
    .local v20, "rcDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v20

    if-nez v37, :cond_15

    .line 2146
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2152
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 2153
    .local v4, "diDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v4

    if-nez v37, :cond_b

    .line 2154
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2158
    :cond_b
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 2159
    .local v3, "diMessageId":[B
    if-nez v3, :cond_c

    .line 2160
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2164
    :cond_c
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 2165
    .local v6, "diStatus":I
    if-nez v6, :cond_d

    .line 2166
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2170
    :cond_d
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 2171
    .local v7, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_15

    .line 2172
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2178
    .end local v3    # "diMessageId":[B
    .end local v4    # "diDate":J
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 2179
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_15

    .line 2180
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2186
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 2187
    .local v22, "roDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v22

    if-nez v37, :cond_e

    .line 2188
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2192
    :cond_e
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 2193
    .local v24, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_f

    .line 2194
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2198
    :cond_f
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 2199
    .local v25, "roMessageId":[B
    if-nez v25, :cond_10

    .line 2200
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2204
    :cond_10
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2205
    .local v26, "roReadStatus":I
    if-nez v26, :cond_11

    .line 2206
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2210
    :cond_11
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 2211
    .local v27, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_15

    .line 2212
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2218
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 2219
    .local v28, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_12

    .line 2220
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2224
    :cond_12
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2225
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_13

    .line 2226
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2230
    :cond_13
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2231
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_14

    .line 2232
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2236
    :cond_14
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 2237
    .local v31, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_15

    .line 2238
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2247
    .end local v28    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 2055
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2001
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2002
    :cond_0
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_2

    .line 2030
    :cond_1
    :goto_0
    return v2

    .line 2008
    :cond_2
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_3

    .line 2009
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 2010
    .local v0, "contentId":[B
    if-eqz v0, :cond_1

    .line 2011
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 2012
    goto :goto_0

    .line 2021
    .end local v0    # "contentId":[B
    :cond_3
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_1

    .line 2022
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 2023
    .local v1, "contentType":[B
    if-eqz v1, :cond_1

    .line 2024
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 2025
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1401
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1402
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1403
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1404
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v3, -0x1

    .line 1367
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1368
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1369
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1370
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1371
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1373
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1374
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1375
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1383
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1384
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1378
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1379
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1387
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1388
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1391
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isServerTime(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "displayTimeAs"    # Ljava/lang/String;
    .param p1, "initValue"    # Z

    .prologue
    .line 124
    if-nez p0, :cond_1

    .line 132
    .end local p1    # "initValue":Z
    :cond_0
    :goto_0
    return p1

    .line 127
    .restart local p1    # "initValue":Z
    :cond_1
    const-string v0, "phone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const/4 p1, 0x0

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "server"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 p1, 0x1

    goto :goto_0
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    .line 1351
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1362
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1355
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1362
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1355
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 1307
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1332
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1311
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1332
    const/4 v0, 0x1

    goto :goto_0

    .line 1311
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1113
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 12
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1705
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v10, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p0, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1707
    :cond_0
    const/4 v0, 0x0

    .line 1708
    .local v0, "contentType":[B
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1709
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    .line 1710
    .local v9, "temp":I
    sget-boolean v10, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    const/4 v10, -0x1

    if-ne v10, v9, :cond_1

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1711
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1713
    and-int/lit16 v1, v9, 0xff

    .line 1715
    .local v1, "cur":I
    const/16 v10, 0x20

    if-ge v1, v10, :cond_7

    .line 1716
    const/4 v6, 0x0

    .line 1718
    .local v6, "length":I
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1724
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 1725
    .local v8, "startPos":I
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1726
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    .line 1727
    sget-boolean v10, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v10, :cond_2

    const/4 v10, -0x1

    if-ne v10, v9, :cond_2

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1719
    .end local v8    # "startPos":I
    :catch_0
    move-exception v2

    .line 1720
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "parseValueLength Exception!"

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1721
    const/4 v10, 0x0

    .line 1764
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "length":I
    :goto_0
    return-object v10

    .line 1728
    .restart local v6    # "length":I
    .restart local v8    # "startPos":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1729
    and-int/lit16 v4, v9, 0xff

    .line 1731
    .local v4, "first":I
    const/16 v10, 0x20

    if-lt v4, v10, :cond_4

    const/16 v10, 0x7f

    if-gt v4, v10, :cond_4

    .line 1732
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1747
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1748
    .local v3, "endPos":I
    sub-int v10, v8, v3

    sub-int v7, v6, v10

    .line 1749
    .local v7, "parameterLen":I
    if-lez v7, :cond_3

    .line 1750
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p0, p1, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1753
    :cond_3
    if-gez v7, :cond_8

    .line 1754
    const-string v10, "PduParser"

    const-string v11, "Corrupt MMS message"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    sget-object v10, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    goto :goto_0

    .line 1733
    .end local v3    # "endPos":I
    .end local v7    # "parameterLen":I
    :cond_4
    const/16 v10, 0x7f

    if-le v4, v10, :cond_6

    .line 1734
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1736
    .local v5, "index":I
    sget-object v10, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_5

    .line 1737
    sget-object v10, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    .line 1739
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1740
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    .line 1743
    .end local v5    # "index":I
    :cond_6
    const-string v10, "PduParser"

    const-string v11, "Corrupt content-type"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    sget-object v10, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    goto :goto_0

    .line 1757
    .end local v4    # "first":I
    .end local v6    # "length":I
    .end local v8    # "startPos":I
    :cond_7
    const/16 v10, 0x7f

    if-gt v1, v10, :cond_9

    .line 1758
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v10, v0

    .line 1764
    goto :goto_0

    .line 1760
    :cond_9
    sget-object v10, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 20
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1534
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    if-nez p0, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1535
    :cond_0
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-gtz v18, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1537
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1538
    .local v15, "startPos":I
    const/16 v16, 0x0

    .line 1539
    .local v16, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1540
    .local v11, "lastLen":I
    :goto_0
    if-lez v11, :cond_c

    .line 1541
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    .line 1542
    .local v13, "param":I
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_2

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1543
    :cond_2
    add-int/lit8 v11, v11, -0x1

    .line 1545
    sparse-switch v13, :sswitch_data_0

    .line 1676
    const/16 v18, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1677
    const-string v18, "PduParser"

    const-string v19, "Corrupt Content-Type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1561
    :sswitch_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1562
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1563
    .local v8, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1564
    const/16 v18, 0x7f

    move/from16 v0, v18

    if-le v8, v0, :cond_4

    .line 1566
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1568
    .local v10, "index":I
    sget-object v18, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    .line 1569
    sget-object v18, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 1570
    .local v17, "type":[B
    const/16 v18, 0x83

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    .end local v10    # "index":I
    .end local v17    # "type":[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1583
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1584
    goto :goto_0

    .line 1576
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 1577
    .restart local v17    # "type":[B
    if-eqz v17, :cond_3

    if-eqz p1, :cond_3

    .line 1578
    const/16 v18, 0x83

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1601
    .end local v8    # "first":I
    .end local v17    # "type":[B
    :sswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1602
    .local v14, "start":[B
    if-eqz v14, :cond_5

    if-eqz p1, :cond_5

    .line 1603
    const/16 v18, 0x99

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1607
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1608
    goto/16 :goto_0

    .line 1625
    .end local v14    # "start":[B
    :sswitch_2
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1626
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1627
    .local v9, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1629
    const/16 v18, 0x20

    move/from16 v0, v18

    if-le v9, v0, :cond_6

    const/16 v18, 0x7f

    move/from16 v0, v18

    if-lt v9, v0, :cond_7

    :cond_6
    if-nez v9, :cond_9

    .line 1632
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1634
    .local v6, "charsetStr":[B
    :try_start_0
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v5

    .line 1636
    .local v5, "charsetInt":I
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    .end local v5    # "charsetInt":I
    .end local v6    # "charsetStr":[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1651
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1652
    goto/16 :goto_0

    .line 1637
    .restart local v6    # "charsetStr":[B
    :catch_0
    move-exception v7

    .line 1639
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string v18, "PduParser"

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1640
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1644
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 1645
    .local v4, "charset":I
    if-eqz p1, :cond_8

    .line 1646
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1664
    .end local v4    # "charset":I
    .end local v9    # "firstValue":I
    :sswitch_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    .line 1665
    .local v12, "name":[B
    if-eqz v12, :cond_a

    if-eqz p1, :cond_a

    .line 1666
    const/16 v18, 0x97

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1670
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1671
    goto/16 :goto_0

    .line 1679
    .end local v12    # "name":[B
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1685
    .end local v13    # "param":I
    :cond_c
    if-eqz v11, :cond_d

    .line 1686
    const-string v18, "PduParser"

    const-string v19, "Corrupt Content-Type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_d
    return-void

    .line 1545
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v7, 0x0

    .line 1189
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1190
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1191
    const/4 v3, 0x0

    .line 1192
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1193
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1194
    .local v5, "temp":I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-ne v8, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1200
    :cond_1
    if-nez v5, :cond_2

    .line 1233
    :goto_0
    return-object v7

    .line 1204
    :cond_2
    and-int/lit16 v2, v5, 0xff

    .line 1205
    .local v2, "first":I
    if-nez v2, :cond_3

    .line 1206
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1210
    const/16 v8, 0x20

    if-ge v2, v8, :cond_4

    .line 1212
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1221
    :cond_4
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1224
    .local v6, "textString":[B
    if-eqz v0, :cond_5

    .line 1225
    :try_start_1
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 1233
    goto :goto_0

    .line 1213
    .end local v6    # "textString":[B
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "parseValueLength Exception!"

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "textString":[B
    :cond_5
    :try_start_2
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 1229
    :catch_1
    move-exception v1

    .line 1230
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v7, 0x0

    .line 1773
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1774
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1775
    const/4 v3, 0x0

    .line 1776
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1777
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1778
    .local v5, "temp":I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-ne v8, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1784
    :cond_1
    if-nez v5, :cond_2

    .line 1814
    :goto_0
    return-object v7

    .line 1787
    :cond_2
    and-int/lit16 v2, v5, 0xff

    .line 1789
    .local v2, "first":I
    if-lez v2, :cond_4

    .line 1790
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1791
    const/16 v8, 0x20

    if-ge v2, v8, :cond_3

    .line 1793
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1802
    :cond_3
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1805
    .local v6, "textString":[B
    if-eqz v0, :cond_5

    .line 1806
    :try_start_1
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v6    # "textString":[B
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    :goto_1
    move-object v7, v3

    .line 1814
    goto :goto_0

    .line 1794
    :catch_0
    move-exception v1

    .line 1795
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "parseValueLength Exception!"

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1808
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "textString":[B
    :cond_5
    :try_start_2
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 1810
    :catch_1
    move-exception v1

    .line 1811
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1476
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1477
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1478
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1479
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1480
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1481
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1482
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v2, v1

    .line 1484
    :goto_0
    return-wide v2

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    .line 1444
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1445
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1446
    .local v4, "temp":I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v8, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1447
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1449
    .local v0, "count":I
    if-le v0, v9, :cond_2

    .line 1450
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1453
    :cond_2
    const-wide/16 v2, 0x0

    .line 1455
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1456
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1457
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v8, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1458
    :cond_3
    shl-long/2addr v2, v9

    .line 1459
    and-int/lit16 v5, v4, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 1455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1462
    :cond_4
    return-wide v2
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1421
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1422
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1423
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1424
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v3, -0x1

    .line 1127
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1128
    :cond_0
    const/4 v0, 0x0

    .line 1129
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1130
    .local v1, "temp":I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1146
    :goto_0
    return v2

    .line 1134
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 1135
    shl-int/lit8 v0, v0, 0x7

    .line 1136
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1137
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1138
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1139
    goto :goto_0

    .line 1143
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 1144
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1146
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1164
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1165
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1166
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1167
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 1169
    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 1172
    .end local v0    # "first":I
    :goto_0
    return v0

    .line 1171
    .restart local v0    # "first":I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 1172
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 1175
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1245
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1263
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1266
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1267
    .local v0, "temp":I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1268
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1271
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1286
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1272
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1275
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1278
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    .line 1496
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1497
    :cond_0
    new-array v0, p1, [B

    .line 1498
    .local v0, "area":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1499
    .local v1, "readLen":I
    if-ge v1, p1, :cond_1

    .line 1500
    const/4 v1, -0x1

    .line 1502
    .end local v1    # "readLen":I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 18

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v15, :cond_1

    .line 143
    const/4 v12, 0x0

    .line 276
    :cond_0
    :goto_0
    return-object v12

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v15, :cond_2

    .line 150
    const/4 v12, 0x0

    goto :goto_0

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v16, 0x8c

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v7

    .line 160
    .local v7, "messageType":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v16, 0x84

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 164
    .local v2, "contType":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 165
    const-string v15, "check mandatory headers failed!"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 166
    const/4 v12, 0x0

    goto :goto_0

    .line 169
    :cond_3
    const/16 v15, 0x80

    if-eq v15, v7, :cond_4

    const/16 v15, 0x84

    if-ne v15, v7, :cond_6

    .line 173
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v15, :cond_5

    .line 177
    const/4 v12, 0x0

    goto :goto_0

    .line 180
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 181
    .local v4, "ctTypeStr":Ljava/lang/String;
    const-string v15, "text/plain"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-string v16, "application/vnd.wap.multipart.mixed"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x84

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 188
    .end local v4    # "ctTypeStr":Ljava/lang/String;
    :cond_6
    packed-switch v7, :pswitch_data_0

    .line 275
    const-string v15, "Parser doesn\'t support this message type in this version!"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 276
    const/4 v12, 0x0

    goto :goto_0

    .line 193
    :pswitch_0
    new-instance v14, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v14, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v14

    .line 194
    goto/16 :goto_0

    .line 199
    .end local v14    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v13, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v13, v15}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v13, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v13

    .line 200
    goto/16 :goto_0

    .line 205
    .end local v13    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v8, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v15}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v8

    .line 207
    goto/16 :goto_0

    .line 212
    .end local v8    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v9, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v9, v15}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v9, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v9

    .line 214
    goto/16 :goto_0

    .line 219
    .end local v9    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v12, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 222
    .local v12, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    .line 223
    .local v3, "contentType":[B
    if-nez v3, :cond_7

    .line 224
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 227
    :cond_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 228
    .restart local v4    # "ctTypeStr":Ljava/lang/String;
    const-string v15, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "application/vnd.wap.multipart.related"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "text/plain"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 237
    const-string v15, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 240
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 241
    .local v6, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_0

    .line 245
    .end local v6    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 250
    .end local v3    # "contentType":[B
    .end local v4    # "ctTypeStr":Ljava/lang/String;
    .end local v12    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v5, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v15}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v5

    .line 252
    goto/16 :goto_0

    .line 257
    .end local v5    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v15}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v1, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v1

    .line 259
    goto/16 :goto_0

    .line 264
    .end local v1    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v10, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v15}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v10

    .line 266
    goto/16 :goto_0

    .line 271
    .end local v10    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v11, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11, v15}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v11

    .line 273
    goto/16 :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 32
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 287
    if-nez p1, :cond_1

    .line 288
    const/4 v12, 0x0

    .line 941
    :cond_0
    :goto_0
    return-object v12

    .line 290
    :cond_1
    const/4 v13, 0x1

    .line 291
    .local v13, "keepParsing":Z
    new-instance v12, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 293
    .local v12, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_2
    :goto_1
    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v28

    if-lez v28, :cond_0

    .line 294
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 295
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 297
    .local v11, "headerField":I
    const/16 v28, 0x20

    move/from16 v0, v28

    if-lt v11, v0, :cond_3

    const/16 v28, 0x7f

    move/from16 v0, v28

    if-gt v11, v0, :cond_3

    .line 298
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 299
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 304
    .local v5, "bVal":[B
    goto :goto_1

    .line 306
    .end local v5    # "bVal":[B
    :cond_3
    packed-switch v11, :pswitch_data_0

    .line 936
    :pswitch_0
    const-string v28, "Unknown header"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 313
    .local v17, "messageType":I
    packed-switch v17, :pswitch_data_1

    .line 333
    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 334
    :catch_0
    move-exception v7

    .line 335
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 337
    const/4 v12, 0x0

    goto :goto_0

    .line 330
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/4 v12, 0x0

    goto :goto_0

    .line 338
    :catch_1
    move-exception v7

    .line 339
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 340
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 373
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "messageType":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 380
    .local v26, "value":I
    :try_start_1
    move/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 381
    :catch_2
    move-exception v7

    .line 382
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 384
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 385
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v7

    .line 386
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 387
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 397
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 402
    .local v26, "value":J
    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 403
    .end local v26    # "value":J
    :catch_4
    move-exception v7

    .line 404
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 405
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 413
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 415
    .restart local v26    # "value":J
    sget-boolean v28, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    if-nez v28, :cond_4

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v26, v28, v30

    .line 418
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mEnableMmsServerTime = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-boolean v29, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Time value = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 420
    :cond_4
    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 421
    .end local v26    # "value":J
    :catch_5
    move-exception v7

    .line 422
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 423
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 434
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 439
    .restart local v26    # "value":J
    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    .line 440
    .end local v26    # "value":J
    :catch_6
    move-exception v7

    .line 441
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 442
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 468
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_7
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v26

    .line 469
    .local v26, "value":[B
    if-eqz v26, :cond_2

    .line 475
    :try_start_5
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_1

    .line 476
    :catch_7
    move-exception v7

    .line 477
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 478
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_8
    move-exception v7

    .line 479
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 480
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 490
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":[B
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 491
    .local v26, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_5

    .line 493
    :try_start_6
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_a

    goto/16 :goto_1

    .line 494
    :catch_9
    move-exception v7

    .line 495
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 496
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_a
    move-exception v7

    .line 497
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 498
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 501
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_5
    const-string v28, "Subject is null!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 514
    .end local v26    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 516
    .restart local v26    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_2

    .line 522
    :try_start_7
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 523
    :catch_b
    move-exception v7

    .line 524
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 525
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_c
    move-exception v7

    .line 526
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 527
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 538
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 540
    .restart local v26    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_2

    .line 541
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 542
    .local v4, "address":[B
    if-eqz v4, :cond_7

    .line 543
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 548
    .local v21, "str":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 549
    .local v8, "endIndex":I
    if-lez v8, :cond_6

    .line 550
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 553
    :cond_6
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_e

    .line 561
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_7
    :try_start_9
    move-object/from16 v0, v26

    invoke-virtual {v12, v0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_f

    goto/16 :goto_1

    .line 562
    :catch_d
    move-exception v7

    .line 563
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 554
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "endIndex":I
    .restart local v21    # "str":Ljava/lang/String;
    :catch_e
    move-exception v7

    .line 555
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 556
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 564
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :catch_f
    move-exception v7

    .line 565
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 566
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 580
    .end local v4    # "address":[B
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_b
    :try_start_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_11

    .line 587
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 592
    .local v24, "token":I
    :try_start_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    move-result-wide v22

    .line 597
    .local v22, "timeValue":J
    const/16 v28, 0x81

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    add-long v22, v22, v28

    .line 608
    :cond_8
    :try_start_c
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1, v11}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_10

    goto/16 :goto_1

    .line 609
    :catch_10
    move-exception v7

    .line 610
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 611
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 581
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "timeValue":J
    .end local v24    # "token":I
    :catch_11
    move-exception v7

    .line 582
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v28, "parseValueLength Exception!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 583
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 593
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v24    # "token":I
    :catch_12
    move-exception v7

    .line 594
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 595
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 621
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "token":I
    :pswitch_c
    const/4 v9, 0x0

    .line 623
    .local v9, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_14

    .line 630
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 633
    .local v10, "fromToken":I
    const/16 v28, 0x80

    move/from16 v0, v28

    if-ne v0, v10, :cond_b

    .line 635
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 636
    if-eqz v9, :cond_a

    .line 637
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 638
    .restart local v4    # "address":[B
    if-eqz v4, :cond_a

    .line 639
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 640
    .restart local v21    # "str":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 641
    .restart local v8    # "endIndex":I
    if-lez v8, :cond_9

    .line 642
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 645
    :cond_9
    :try_start_e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_15

    .line 667
    .end local v4    # "address":[B
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_a
    :goto_2
    const/16 v28, 0x89

    :try_start_f
    move/from16 v0, v28

    invoke-virtual {v12, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_17

    goto/16 :goto_1

    .line 668
    :catch_13
    move-exception v7

    .line 669
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 624
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "fromToken":I
    :catch_14
    move-exception v7

    .line 625
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v28, "parseValueLength Exception!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 626
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 646
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "address":[B
    .restart local v8    # "endIndex":I
    .restart local v10    # "fromToken":I
    .restart local v21    # "str":Ljava/lang/String;
    :catch_15
    move-exception v7

    .line 647
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 648
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 654
    .end local v4    # "address":[B
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v21    # "str":Ljava/lang/String;
    :cond_b
    :try_start_10
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v28, "insert-address-token"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_16

    .restart local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .line 656
    .end local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_16
    move-exception v7

    .line 657
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 658
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 670
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_17
    move-exception v7

    .line 671
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 672
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 679
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10    # "fromToken":I
    :pswitch_d
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 680
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .line 686
    .local v15, "messageClass":I
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v15, v0, :cond_f

    .line 689
    const/16 v28, 0x80

    move/from16 v0, v28

    if-ne v0, v15, :cond_c

    .line 690
    :try_start_11
    const-string v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_19

    goto/16 :goto_1

    .line 706
    :catch_18
    move-exception v7

    .line 707
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 693
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :cond_c
    const/16 v28, 0x81

    move/from16 v0, v28

    if-ne v0, v15, :cond_d

    .line 694
    :try_start_12
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_19

    goto/16 :goto_1

    .line 708
    :catch_19
    move-exception v7

    .line 709
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 710
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 697
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_d
    const/16 v28, 0x82

    move/from16 v0, v28

    if-ne v0, v15, :cond_e

    .line 698
    :try_start_13
    const-string v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 701
    :cond_e
    const/16 v28, 0x83

    move/from16 v0, v28

    if-ne v0, v15, :cond_2

    .line 702
    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_19

    goto/16 :goto_1

    .line 714
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 715
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 716
    .local v16, "messageClassString":[B
    if-eqz v16, :cond_2

    .line 718
    const/16 v28, 0x8a

    :try_start_14
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1b

    goto/16 :goto_1

    .line 719
    :catch_1a
    move-exception v7

    .line 720
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 721
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v7

    .line 722
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 723
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 731
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "messageClass":I
    .end local v16    # "messageClassString":[B
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 738
    .local v25, "version":I
    const/16 v28, 0x8d

    :try_start_15
    move/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_15
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_15 .. :try_end_15} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1d

    goto/16 :goto_1

    .line 739
    :catch_1c
    move-exception v7

    .line 740
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 742
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 743
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_1d
    move-exception v7

    .line 744
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 745
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 755
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "version":I
    :pswitch_f
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_1f

    .line 763
    :try_start_17
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    .line 770
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 772
    .local v20, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_2

    .line 778
    const/16 v28, 0xa0

    :try_start_18
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_21

    goto/16 :goto_1

    .line 780
    :catch_1e
    move-exception v7

    .line 781
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 756
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v20    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1f
    move-exception v7

    .line 757
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v28, "parseValueLength Exception!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 758
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 764
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_20
    move-exception v7

    .line 765
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 766
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 782
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v20    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_21
    move-exception v7

    .line 783
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 784
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 795
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_10
    :try_start_19
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_23

    .line 803
    :try_start_1a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_24

    .line 811
    :try_start_1b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .line 816
    .local v18, "perviouslySentDate":J
    const/16 v28, 0xa1

    move-wide/from16 v0, v18

    move/from16 v2, v28

    invoke-virtual {v12, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_22

    goto/16 :goto_1

    .line 818
    .end local v18    # "perviouslySentDate":J
    :catch_22
    move-exception v7

    .line 819
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 820
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 796
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_23
    move-exception v7

    .line 797
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v28, "parseValueLength Exception!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 798
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 804
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_24
    move-exception v7

    .line 805
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 806
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 838
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    :try_start_1c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_25

    .line 845
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 848
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 839
    :catch_25
    move-exception v7

    .line 840
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v28, "parseValueLength Exception!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 841
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 865
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_12
    :try_start_1d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_27

    .line 872
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 876
    :try_start_1e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_26

    goto/16 :goto_1

    .line 877
    :catch_26
    move-exception v7

    .line 878
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 879
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 866
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_27
    move-exception v7

    .line 867
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v28, "parseValueLength Exception!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 868
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 891
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_13
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 899
    :pswitch_14
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 901
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 904
    .local v6, "contentType":[B
    if-eqz v6, :cond_10

    .line 910
    const/16 v28, 0x84

    :try_start_1f
    move/from16 v0, v28

    invoke-virtual {v12, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_29

    .line 920
    :cond_10
    :goto_3
    const/16 v28, 0x99

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    check-cast v28, [B

    sput-object v28, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 923
    const/16 v28, 0x83

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    check-cast v28, [B

    sput-object v28, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 925
    const/4 v13, 0x0

    .line 926
    goto/16 :goto_1

    .line 911
    :catch_28
    move-exception v7

    .line 912
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 913
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_29
    move-exception v7

    .line 914
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 915
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_14
        :pswitch_5
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_1
        :pswitch_e
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_7
        :pswitch_4
        :pswitch_f
        :pswitch_10
        :pswitch_3
        :pswitch_3
        :pswitch_11
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_12
        :pswitch_3
        :pswitch_12
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_13
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_3
    .end packed-switch

    .line 313
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 20
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .prologue
    .line 1827
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1828
    :cond_0
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    if-nez p2, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1829
    :cond_1
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    if-gtz p3, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1847
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 1848
    .local v9, "startPos":I
    const/4 v12, 0x0

    .line 1849
    .local v12, "tempPos":I
    move/from16 v7, p3

    .line 1850
    .local v7, "lastLen":I
    :cond_3
    :goto_0
    if-lez v7, :cond_11

    .line 1851
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1852
    .local v5, "header":I
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_4

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1853
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 1855
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v5, v0, :cond_d

    .line 1857
    sparse-switch v5, :sswitch_data_0

    .line 1952
    const/16 v17, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1953
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/16 v17, 0x0

    .line 1990
    .end local v5    # "header":I
    :goto_1
    return v17

    .line 1863
    .restart local v5    # "header":I
    :sswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1864
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_5

    .line 1865
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1868
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1869
    sub-int v17, v9, v12

    sub-int v7, p3, v17

    .line 1870
    goto :goto_0

    .line 1876
    .end local v3    # "contentLocation":[B
    :sswitch_1
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 1877
    .local v2, "contentId":[B
    if-eqz v2, :cond_6

    .line 1878
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1881
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1882
    sub-int v17, v9, v12

    sub-int v7, p3, v17

    .line 1883
    goto :goto_0

    .line 1899
    .end local v2    # "contentId":[B
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1900
    const/4 v8, 0x0

    .line 1902
    .local v8, "len":I
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1908
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1909
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1910
    .local v15, "thisStartPos":I
    const/4 v14, 0x0

    .line 1911
    .local v14, "thisEndPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    .line 1913
    .local v16, "value":I
    const/16 v17, 0x80

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1914
    sget-object v17, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1927
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1928
    sub-int v17, v15, v14

    move/from16 v0, v17

    if-ge v0, v8, :cond_8

    .line 1929
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    .line 1930
    const/16 v17, 0x98

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1931
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1936
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1937
    sub-int v17, v15, v14

    move/from16 v0, v17

    if-ge v0, v8, :cond_8

    .line 1938
    sub-int v17, v15, v14

    sub-int v6, v8, v17

    .line 1939
    .local v6, "last":I
    new-array v10, v6, [B

    .line 1940
    .local v10, "temp":[B
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1944
    .end local v6    # "last":I
    .end local v10    # "temp":[B
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1945
    sub-int v17, v9, v12

    sub-int v7, p3, v17

    .line 1946
    goto/16 :goto_0

    .line 1903
    .end local v14    # "thisEndPos":I
    .end local v15    # "thisStartPos":I
    .end local v16    # "value":I
    :catch_0
    move-exception v4

    .line 1904
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v17, "parseValueLength Exception!"

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1905
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1915
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "thisEndPos":I
    .restart local v15    # "thisStartPos":I
    .restart local v16    # "value":I
    :cond_9
    const/16 v17, 0x81

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1916
    sget-object v17, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1917
    :cond_a
    const/16 v17, 0x82

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1918
    sget-object v17, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1920
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1922
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_2

    .line 1956
    .end local v8    # "len":I
    .end local v14    # "thisEndPos":I
    .end local v15    # "thisStartPos":I
    .end local v16    # "value":I
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1959
    :cond_d
    const/16 v17, 0x20

    move/from16 v0, v17

    if-lt v5, v0, :cond_f

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-gt v5, v0, :cond_f

    .line 1961
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1962
    .local v11, "tempHeader":[B
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1965
    .local v13, "tempValue":[B
    const/16 v17, 0x1

    const-string v18, "Content-Transfer-Encoding"

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1967
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1970
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1971
    sub-int v17, v9, v12

    sub-int v7, p3, v17

    .line 1972
    goto/16 :goto_0

    .line 1977
    .end local v11    # "tempHeader":[B
    .end local v13    # "tempValue":[B
    :cond_f
    const/16 v17, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1978
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1981
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1985
    .end local v5    # "header":I
    :cond_11
    if-eqz v7, :cond_12

    .line 1986
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1990
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1857
    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;
    .locals 28
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "contType"    # [B

    .prologue
    .line 952
    if-nez p1, :cond_1

    .line 953
    const/4 v4, 0x0

    .line 1101
    :cond_0
    :goto_0
    return-object v4

    .line 956
    :cond_1
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 958
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 959
    .local v9, "ctTypeStr":Ljava/lang/String;
    const-string v26, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 962
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 964
    .local v8, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v8, :cond_0

    .line 965
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v13

    .line 966
    .local v13, "headerLength":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 967
    .local v10, "dataLength":I
    new-instance v17, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 968
    .local v17, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v25

    .line 969
    .local v25, "startPos":I
    if-gtz v25, :cond_3

    .line 971
    const/4 v4, 0x0

    goto :goto_0

    .line 975
    :cond_3
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 976
    .local v15, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 977
    .local v7, "contentType":[B
    if-eqz v7, :cond_6

    .line 978
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 984
    :goto_2
    const/16 v26, 0x97

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [B

    move-object/from16 v16, v26

    check-cast v16, [B

    .line 985
    .local v16, "name":[B
    if-eqz v16, :cond_4

    .line 986
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 990
    :cond_4
    const/16 v26, 0x81

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 991
    .local v5, "charset":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    .line 992
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 996
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 997
    .local v12, "endPos":I
    sub-int v26, v25, v12

    sub-int v21, v13, v26

    .line 998
    .local v21, "partHeaderLen":I
    if-lez v21, :cond_7

    .line 999
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v26

    if-nez v26, :cond_8

    .line 1001
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 980
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v12    # "endPos":I
    .end local v16    # "name":[B
    .end local v21    # "partHeaderLen":I
    :cond_6
    sget-object v26, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 1003
    .restart local v5    # "charset":Ljava/lang/Integer;
    .restart local v12    # "endPos":I
    .restart local v16    # "name":[B
    .restart local v21    # "partHeaderLen":I
    :cond_7
    if-gez v21, :cond_8

    .line 1005
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1011
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v26

    if-nez v26, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v26

    if-nez v26, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v26

    if-nez v26, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v26

    if-nez v26, :cond_9

    .line 1015
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1020
    :cond_9
    if-lez v10, :cond_b

    .line 1021
    new-array v0, v10, [B

    move-object/from16 v19, v0

    .line 1022
    .local v19, "partData":[B
    new-instance v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1023
    .local v18, "partContentType":Ljava/lang/String;
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v10}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v22

    .line 1025
    .local v22, "pduDataStreamCount":I
    const/16 v26, -0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 1026
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1028
    :cond_a
    const-string v26, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 1031
    new-instance v26, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 1034
    .local v6, "childBody":Lcom/google/android/mms/pdu/PduBody;
    if-nez v6, :cond_c

    .line 1035
    const-string v26, "childBody is null"

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1064
    .end local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    .end local v18    # "partContentType":Ljava/lang/String;
    .end local v19    # "partData":[B
    .end local v22    # "pduDataStreamCount":I
    :cond_b
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v26

    if-nez v26, :cond_11

    .line 1066
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 964
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1038
    .restart local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    .restart local v18    # "partContentType":Ljava/lang/String;
    .restart local v19    # "partData":[B
    .restart local v22    # "pduDataStreamCount":I
    :cond_c
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    goto :goto_3

    .line 1042
    .end local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v20

    .line 1043
    .local v20, "partDataEncoding":[B
    if-eqz v20, :cond_e

    .line 1044
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    .line 1045
    .local v11, "encoding":Ljava/lang/String;
    const-string v26, "base64"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 1047
    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v19

    .line 1055
    .end local v11    # "encoding":Ljava/lang/String;
    :cond_e
    :goto_5
    if-nez v19, :cond_10

    .line 1056
    const-string v26, "Decode part data error!"

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1057
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1048
    .restart local v11    # "encoding":Ljava/lang/String;
    :cond_f
    const-string v26, "quoted-printable"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 1050
    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v19

    goto :goto_5

    .line 1059
    .end local v11    # "encoding":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 1069
    .end local v18    # "partContentType":Ljava/lang/String;
    .end local v19    # "partData":[B
    .end local v20    # "partDataEncoding":[B
    .end local v22    # "pduDataStreamCount":I
    :cond_11
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4

    .line 1073
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v7    # "contentType":[B
    .end local v8    # "count":I
    .end local v10    # "dataLength":I
    .end local v12    # "endPos":I
    .end local v13    # "headerLength":I
    .end local v14    # "i":I
    .end local v15    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v16    # "name":[B
    .end local v17    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v21    # "partHeaderLen":I
    .end local v25    # "startPos":I
    :cond_12
    const-string v26, "text/plain"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 1075
    new-instance v23, Ljava/lang/String;

    const-string v26, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v23, "smilDoc":Ljava/lang/String;
    new-instance v24, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1081
    .local v24, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const-string v26, "smil.txt"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1082
    const-string v26, "smil.txt"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1083
    const-string v26, "application/smil"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1084
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1085
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 1087
    new-instance v17, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1088
    .restart local v17    # "part":Lcom/google/android/mms/pdu/PduPart;
    const-string v26, "attach.txt"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1089
    const-string v26, "attach.txt"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1090
    const-string v26, "text/plain"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1091
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1092
    .restart local v10    # "dataLength":I
    new-array v0, v10, [B

    move-object/from16 v19, v0

    .line 1093
    .restart local v19    # "partData":[B
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v10}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1094
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1095
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 1097
    .end local v10    # "dataLength":I
    .end local v17    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v19    # "partData":[B
    .end local v23    # "smilDoc":Ljava/lang/String;
    .end local v24    # "smilPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
