.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingSyncAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;,
        Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$syncObserver;
    }
.end annotation


# instance fields
.field private final MSG_UPDATE_SYNC_STATE:I

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private mHandler:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;

.field private sStatusChangeListenerHandle:Ljava/lang/Object;

.field private sSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->MSG_UPDATE_SYNC_STATE:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->mHandler:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v0, "sync_all"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->toggleSyncAll()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->mHandler:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->checkIsSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updateSyncState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;[Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->syncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V

    return-void
.end method

.method private checkIsSync()Z
    .locals 5

    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "QuickSettingSyncAll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIsSync : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020168

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->setupEnv()V

    const-string v2, "QuickSettingSyncAll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContentView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setupEnv()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;

    if-nez v2, :cond_0

    const-string v2, "QuickSettingSyncAll"

    const-string v3, "new sync observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$syncObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$syncObserver;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "QuickSettingSyncAll"

    const-string v3, "unregistered statusChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v2}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sStatusChangeListenerHandle:Ljava/lang/Object;

    const-string v2, "QuickSettingSyncAll"

    const-string v3, "registered statusChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->checkIsSync()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updateSyncState(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "QuickSettingSyncAll"

    const-string v3, "remove listener failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private syncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    .locals 17

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v12

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v12, :cond_2

    array-length v15, v12

    if-lez v15, :cond_2

    move-object v3, v12

    array-length v10, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v11, v3, v8

    invoke-virtual {v11}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_1

    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v15, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v15, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v15, "QuickSettingSyncAll"

    const-string v16, "Sync type is null."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    array-length v15, v0

    if-lez v15, :cond_7

    move-object/from16 v3, p1

    array-length v10, v3

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-ge v9, v10, :cond_8

    aget-object v1, v3, v9

    if-eqz v1, :cond_6

    iget-object v15, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    invoke-static {v1, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    if-lez v14, :cond_4

    if-eqz v13, :cond_4

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v1, v5, v6}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v1, v5, v6}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_2

    :cond_7
    const-string v15, "QuickSettingSyncAll"

    const-string v16, "Account size is null."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method private toggleSyncAll()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->checkIsSync()Z

    move-result v0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateSyncState(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "QuickSettingSyncAll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSyncState : syncing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-ne p1, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-ne p1, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v3, 0x7f02015b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->onLocaleChanged()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v1, "QuickSettingSyncAll"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->mHandler:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v1}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sStatusChangeListenerHandle:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->sSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updatesDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QuickSettingSyncAll"

    const-string v2, "remove listener failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLocaleChanged()V
    .locals 3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method
