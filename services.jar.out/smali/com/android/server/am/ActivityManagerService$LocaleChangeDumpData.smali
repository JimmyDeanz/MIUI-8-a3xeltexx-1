.class Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleChangeDumpData"
.end annotation


# instance fields
.field public mCaller:Ljava/lang/String;

.field public mCallstack:Ljava/lang/RuntimeException;

.field public mMsg:Ljava/lang/String;

.field public mSystemTimeMillis:J

.field public mTimeZone:Ljava/util/TimeZone;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "systemTimeMillis"    # J
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 30708
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mSystemTimeMillis:J

    .line 30705
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mCallstack:Ljava/lang/RuntimeException;

    .line 30709
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->updateData(JLjava/lang/String;Ljava/lang/String;)V

    .line 30710
    return-void
.end method


# virtual methods
.method public updateData(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "systemTimeMillis"    # J
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    .line 30713
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mTimeZone:Ljava/util/TimeZone;

    .line 30714
    iput-wide p1, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mSystemTimeMillis:J

    .line 30715
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mMsg:Ljava/lang/String;

    .line 30716
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mCaller:Ljava/lang/String;

    .line 30718
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mCallstack:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 30720
    return-void
.end method
