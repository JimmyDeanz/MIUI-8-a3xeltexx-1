.class Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet$ATSMSRecord;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ATSMSRecord"
.end annotation


# instance fields
.field private msgBody:Ljava/lang/String;

.field private originAddress:Ljava/lang/String;

.field final synthetic this$2:Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

.field private toa:I

.field private tpdu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "mBody"    # Ljava/lang/String;

    .prologue
    .line 2911
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet$ATSMSRecord;->this$2:Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2912
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet$ATSMSRecord;->toa:I

    .line 2913
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet$ATSMSRecord;->tpdu:Ljava/lang/String;

    .line 2914
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet$ATSMSRecord;->originAddress:Ljava/lang/String;

    .line 2915
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet$ATSMSRecord;->msgBody:Ljava/lang/String;

    .line 2916
    return-void
.end method
