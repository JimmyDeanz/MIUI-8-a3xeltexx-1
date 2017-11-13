.class Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;
.super Ljava/lang/Object;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsFilterRecord"
.end annotation


# instance fields
.field private msgBody:Ljava/lang/String;

.field private msgId:I

.field private originAddress:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

.field private timeStamp:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "msgid"    # I
    .param p3, "time"    # J
    .param p5, "address"    # Ljava/lang/String;
    .param p6, "mBody"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->this$1:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgId:I

    iput-wide p3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->timeStamp:J

    iput-object p5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->timeStamp:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;

    return-object v0
.end method
