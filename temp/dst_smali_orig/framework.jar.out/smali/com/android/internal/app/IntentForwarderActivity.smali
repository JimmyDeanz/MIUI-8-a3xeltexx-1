.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final TARGET_USER_ID_DEFAULT_VALUE:I

.field private targetUserIdForKnox:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v0, "com.android.internal.app.ForwardIntentToUserOwner"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->TARGET_USER_ID_DEFAULT_VALUE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    return-void
.end method

.method private getManagedProfile()I
    .locals 7

    .prologue
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .local v3, "userManager":Landroid/os/UserManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .local v1, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return v4

    :cond_1
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been called, but there is no managed profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x2710

    goto :goto_0
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUserId"    # I

    .prologue
    const v11, 0x1040b6a

    const/4 v8, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {p2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .local v5, "personaManager":Landroid/os/PersonaManager;
    const-string v9, "persona_policy"

    invoke-virtual {v5, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaPolicyManager;

    .local v6, "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    invoke-virtual {v5, p2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v0

    .local v0, "curState":Landroid/content/pm/PersonaState;
    invoke-virtual {v5, p2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v0, v9, :cond_0

    sget-object v9, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v0, v9, :cond_0

    sget-object v9, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v0, v9, :cond_0

    sget-object v9, Landroid/content/pm/PersonaState;->CONTAINER_APPS_URGENT_UPDATE:Landroid/content/pm/PersonaState;

    if-eq v0, v9, :cond_0

    sget-object v9, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    if-ne v0, v9, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v11}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .end local v0    # "curState":Landroid/content/pm/PersonaState;
    .end local v5    # "personaManager":Landroid/os/PersonaManager;
    .end local v6    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :goto_0
    return v8

    .restart local v0    # "curState":Landroid/content/pm/PersonaState;
    .restart local v5    # "personaManager":Landroid/os/PersonaManager;
    .restart local v6    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_1
    const/4 v3, 0x0

    .local v3, "intentAction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .end local v2    # "innerIntent":Landroid/content/Intent;
    :goto_1
    if-eqz v3, :cond_5

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    invoke-virtual {v6, p2}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v11}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .end local v0    # "curState":Landroid/content/pm/PersonaState;
    .end local v3    # "intentAction":Ljava/lang/String;
    .end local v5    # "personaManager":Landroid/os/PersonaManager;
    .end local v6    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v9, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "A chooser intent with replacement extras cannot be forwarded to a different user"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    check-cast p1, Landroid/content/Intent;

    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    .local v7, "resolvedType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v9

    invoke-interface {v4, p1, v7, v9, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "PackageManagerService is dead?"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .local v17, "intentReceived":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .local v10, "className":Ljava/lang/String;
    :try_start_0
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v24, "tempIntent":Landroid/content/Intent;
    const-string v28, "crossProfileTargetUserId"

    const/16 v29, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v24    # "tempIntent":Landroid/content/Intent;
    :goto_0
    sget-object v28, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    const v27, 0x104043f

    .local v27, "userMessageId":I
    const/16 v23, 0x0

    .local v23, "targetUserId":I
    :goto_1
    const/16 v28, -0x2710

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    :goto_2
    return-void

    .end local v23    # "targetUserId":I
    .end local v27    # "userMessageId":I
    :cond_0
    sget-object v28, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    const v27, 0x1040440

    .restart local v27    # "userMessageId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v23, v0

    .restart local v23    # "targetUserId":I
    goto :goto_1

    .end local v23    # "targetUserId":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    move-result v23

    .restart local v23    # "targetUserId":I
    goto :goto_1

    .end local v23    # "targetUserId":I
    .end local v27    # "userMessageId":I
    :cond_2
    sget-object v28, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-class v30, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " cannot be called directly"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, -0x1

    .restart local v27    # "userMessageId":I
    const/16 v23, -0x2710

    .restart local v23    # "targetUserId":I
    goto :goto_1

    :cond_3
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v20, "newIntent":Landroid/content/Intent;
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v28, 0x3000000

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v9

    .local v9, "callingUserId":I
    const/4 v15, 0x0

    .local v15, "forwardfromKnox":Z
    const/16 v28, 0x64

    move/from16 v0, v28

    if-lt v9, v0, :cond_4

    const/4 v15, 0x1

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Z

    move-result v28

    if-eqz v28, :cond_10

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.CHOOSER"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    const-string v28, "android.intent.extra.INTENT"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/content/Intent;

    .local v16, "innerIntent":Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .end local v16    # "innerIntent":Landroid/content/Intent;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const/high16 v29, 0x10000

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move/from16 v2, v29

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    .local v21, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    const-string v28, "android"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    const-class v28, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_b

    const-class v28, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_b

    :cond_5
    const/16 v22, 0x1

    .local v22, "shouldShowDisclosure":Z
    :goto_4
    :try_start_1
    invoke-static {v9}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v28

    if-eqz v28, :cond_c

    if-nez v23, :cond_c

    if-eqz v20, :cond_c

    const-string v28, "file"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    const-string v28, "isFromBBCProvider"

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-nez v28, :cond_c

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .local v8, "bbcIntent":Landroid/content/Intent;
    const-string v28, "base_intent"

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v28, "com.samsung.android.bbc.fileprovider"

    const-string v29, "com.samsung.android.bbc.fileprovider.IntentForwardActivity"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v8, v1, v2, v9}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .end local v8    # "bbcIntent":Landroid/content/Intent;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/RuntimeException;
    const/16 v19, -0x1

    .local v19, "launchedFromUid":I
    const-string v18, "?"

    .local v18, "launchedFromPackage":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v19

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    :goto_5
    sget-object v28, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unable to launch as UID "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " package "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", while running in "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v13    # "e":Ljava/lang/RuntimeException;
    .end local v18    # "launchedFromPackage":Ljava/lang/String;
    .end local v19    # "launchedFromUid":I
    :goto_6
    const-string v28, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/UserManager;

    .local v26, "userManager":Landroid/os/UserManager;
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v25

    .local v25, "ui":Landroid/content/pm/UserInfo;
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v28

    if-eqz v28, :cond_6

    const/16 v22, 0x0

    :cond_6
    const/4 v14, 0x0

    .local v14, "forwardfromDual":Z
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .local v12, "dualUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isDualProfile()Z

    move-result v14

    sget-object v28, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "From DualProfile  :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " calling userid :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " to user "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "IsHomeFromKEA":Z
    invoke-static {v9}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v28

    if-eqz v28, :cond_7

    if-nez v23, :cond_7

    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.MAIN"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v28

    if-eqz v28, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v28

    const-string v29, "android.intent.category.HOME"

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/4 v6, 0x1

    :cond_7
    if-eqz v15, :cond_f

    if-nez v6, :cond_f

    const-string v28, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .local v7, "am":Landroid/app/ActivityManager;
    invoke-virtual {v7}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v28

    if-nez v28, :cond_9

    invoke-static/range {p0 .. p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_8

    sget-object v28, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static/range {v28 .. v28}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v28

    if-nez v28, :cond_9

    :cond_8
    new-instance v28, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x103012b

    invoke-direct/range {v28 .. v30}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v29, 0x1040a07

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .end local v6    # "IsHomeFromKEA":Z
    .end local v7    # "am":Landroid/app/ActivityManager;
    .end local v12    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .end local v14    # "forwardfromDual":Z
    .end local v21    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v22    # "shouldShowDisclosure":Z
    .end local v25    # "ui":Landroid/content/pm/UserInfo;
    .end local v26    # "userManager":Landroid/os/UserManager;
    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    goto/16 :goto_3

    .restart local v21    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_4

    .restart local v22    # "shouldShowDisclosure":Z
    :cond_c
    if-eqz v20, :cond_e

    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.SEND"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1040365

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .local v5, "ChooserIntent":Landroid/content/Intent;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v28, Landroid/content/ComponentName;

    const-string v29, "com.sec.knox.bluetooth"

    const-string v30, "com.sec.knox.bluetooth.BluetoothFileTransfer"

    invoke-direct/range {v28 .. v30}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v28, "extra_chooser_droplist"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v23

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto/16 :goto_6

    .end local v5    # "ChooserIntent":Landroid/content/Intent;
    .end local v11    # "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_e
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .restart local v6    # "IsHomeFromKEA":Z
    .restart local v12    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .restart local v14    # "forwardfromDual":Z
    .restart local v25    # "ui":Landroid/content/pm/UserInfo;
    .restart local v26    # "userManager":Landroid/os/UserManager;
    :cond_f
    if-eqz v22, :cond_9

    if-nez v6, :cond_9

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .end local v6    # "IsHomeFromKEA":Z
    .end local v12    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .end local v14    # "forwardfromDual":Z
    .end local v21    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v22    # "shouldShowDisclosure":Z
    .end local v25    # "ui":Landroid/content/pm/UserInfo;
    .end local v26    # "userManager":Landroid/os/UserManager;
    :cond_10
    sget-object v28, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "the intent: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "cannot be forwarded from user "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " to user "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .restart local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v18    # "launchedFromPackage":Ljava/lang/String;
    .restart local v19    # "launchedFromUid":I
    .restart local v21    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v22    # "shouldShowDisclosure":Z
    :catch_1
    move-exception v28

    goto/16 :goto_5

    .end local v9    # "callingUserId":I
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "forwardfromKnox":Z
    .end local v18    # "launchedFromPackage":Ljava/lang/String;
    .end local v19    # "launchedFromUid":I
    .end local v20    # "newIntent":Landroid/content/Intent;
    .end local v21    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v22    # "shouldShowDisclosure":Z
    .end local v23    # "targetUserId":I
    .end local v27    # "userMessageId":I
    :catch_2
    move-exception v28

    goto/16 :goto_0
.end method
