.class public Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
.super Ljava/lang/Object;
.source "SDualScreenTaskInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final UNSPECIFIED_TASK_ID:I = -0x1


# instance fields
.field private mChildTaskId:I

.field private mFixed:Z

.field private mParentTaskId:I

.field private mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field private mTaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mTaskId:I

    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mFixed:Z

    iput v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mChildTaskId:I

    iput v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mParentTaskId:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mTaskId:I

    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mFixed:Z

    iput v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mChildTaskId:I

    iput v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mParentTaskId:I

    iput p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mTaskId:I

    return-void
.end method


# virtual methods
.method public getChildCoupledTaskId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mChildTaskId:I

    return v0
.end method

.method public getParentCoupledTaskId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mParentTaskId:I

    return v0
.end method

.method public getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mTaskId:I

    return v0
.end method

.method public isCoupled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mParentTaskId:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mChildTaskId:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mFixed:Z

    return v0
.end method

.method setChildCoupledTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mChildTaskId:I

    return-void
.end method

.method setFixed(Z)V
    .locals 0
    .param p1, "fixed"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mFixed:Z

    return-void
.end method

.method setParentCoupledTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mParentTaskId:I

    return-void
.end method

.method setScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 0
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mFixed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mParentTaskId:I

    if-eq v1, v3, :cond_0

    const-string v1, "mParentTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mParentTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mChildTaskId:I

    if-eq v1, v3, :cond_1

    const-string v1, "mChildTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->mChildTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
