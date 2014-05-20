.class public Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "SyncAllButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;,
        Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

.field private sStatusChangeListenerHandle:Ljava/lang/Object;

.field private sSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;-><init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->setTitle(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->checkIsSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;[Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->syncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V

    return-void
.end method

.method private checkIsSync()Z
    .locals 5

    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Venom"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkIsSync : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupEnv()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;

    if-nez v1, :cond_0

    const-string v2, "Venom"

    const-string v3, "new sync observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;-><init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v2}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const-string v2, "Venom"

    const-string v3, "unregistered statusChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sStatusChangeListenerHandle:Ljava/lang/Object;

    const-string v2, "Venom"

    const-string v3, "registered statusChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void

    :catch_0
    move-exception v0

    :goto_0
    const-string v2, "Venom"

    const-string v3, "remove listener failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private syncAll()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v2, "-1"

    :goto_0
    const-string v3, "Venom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->syncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V

    :cond_0
    return-void

    :cond_1
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method private syncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    .locals 20

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v13

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v13, :cond_3

    array-length v15, v13

    if-lez v15, :cond_3

    array-length v0, v13

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    :goto_1
    if-eqz p1, :cond_a

    move-object/from16 v0, p1

    array-length v15, v0

    if-lez v15, :cond_a

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    :goto_3
    return-void

    :cond_0
    aget-object v12, v13, v15

    invoke-virtual {v12}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v17

    if-eqz v17, :cond_2

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    const-string v15, "Venom"

    const-string v16, "Sync type is null."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    aget-object v2, p1, v15

    if-eqz v2, :cond_7

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_8

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_9

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v2, v10}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v14

    if-lez v6, :cond_5

    if-eqz v14, :cond_5

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v18, "force"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v2, v10, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v18, "force"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v2, v11, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_a
    const-string v15, "Venom"

    const-string v16, "Account size is null."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private toggleSyncAll()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->checkIsSync()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    return-object v0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f02059b

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02059a

    goto :goto_0
.end method

.method protected onSettingChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Venom"

    const-string v1, "SyncAll->onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->setupEnv()V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->removeMessages(I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v1}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sStatusChangeListenerHandle:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    const-string v1, "QuickSettingSyncAll"

    const-string v2, "remove listener failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onToggleClick()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->toggleSyncAll()V

    return-void
.end method

.method protected onToggleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
