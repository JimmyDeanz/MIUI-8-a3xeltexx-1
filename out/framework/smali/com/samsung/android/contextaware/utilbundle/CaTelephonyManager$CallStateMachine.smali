.class Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;
    }
.end annotation


# instance fields
.field private final mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

.field private final mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

.field private final mIncomingState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    .line 147
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;

    .line 148
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->quit()V

    .line 256
    return-void
.end method
